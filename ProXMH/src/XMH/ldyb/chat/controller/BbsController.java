package XMH.ldyb.chat.controller;

import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.annotations.Source;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributesModelMap;

import XMH.ldyb.chat.entity.Collect;
import XMH.ldyb.chat.entity.Great;
import XMH.ldyb.chat.entity.PageModel;
import XMH.ldyb.chat.entity.Reply;
import XMH.ldyb.chat.entity.Topic;
import XMH.ldyb.chat.entity.TopicReply;
import XMH.ldyb.chat.entity.User;
import XMH.ldyb.chat.service.BbsServiceImpl;
import XMH.ldyb.chat.service.PageModelServiceImpl;


@Controller
public class BbsController {
	@Resource
	private BbsServiceImpl bbsServiceImpl;
	
	@Resource
	private PageModelServiceImpl pageModelServiceImpl;

	/**
	 * @author 樊卫宽
	 * @param mailId
	 * @return
	 */
	//帖子详情页面
	@RequestMapping("/detail")
	public String detail(int topicid,HttpSession session, Model model) {		
		Topic data = this.bbsServiceImpl.findTopicByTopicId(topicid);
		
		model.addAttribute("topic", data);
		
		return "detail";
	}
	// 首页
	@RequestMapping("/index")
	public String linkToSprorts(@RequestParam(value = "currPage", defaultValue = "1") String currPage, Model model,HttpSession session) {
		int page = Integer.parseInt(currPage);
		int pagesize = 6;
		List<Topic> datas = this.bbsServiceImpl.findTopic(page, pagesize);
		List<Topic> datas2 = this.bbsServiceImpl.findAllTopic();
		int totals = datas2.size();
		PageModel pageModel = pageModelServiceImpl.getPageModel(totals, datas, pagesize, page);
		model.addAttribute("pageModel", pageModel);
		
		User user = new User();
		user.setUserid(1);
		String nickname = "机器猫";
		user.setNickname(nickname);
		session.setAttribute("user", user);
		return "index";
	}

	// 发表帖子
	@RequestMapping("/addTopic")
	public String addTopic(Topic topic, HttpSession session) {
		
		User user = (User) session.getAttribute("user");	
		
		topic.setUser(user);
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd:mm:ss");
		String nowTime = df.format(date);
		topic.setSend_time(nowTime);
		int replyCount =0;
		topic.setReplyCount(replyCount);
		List <TopicReply> topicReply = new ArrayList <TopicReply>();
		topic.setTopicReply(topicReply);
		this.bbsServiceImpl.addTopic(topic);		
		return "index1";
	}
	/*public String addTopic(HttpServletRequest request, HttpSession session) {
		Topic topic = new Topic();
		topic.setContent(request.getParameter("content"));
		topic.setTitle(request.getParameter("title"));
		//User user = (User) session.getAttribute("user");	
		User user =new User();
		user.setUserid(1);
		topic.setUser(user);
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd:mm:ss");
		String nowTime = df.format(date);
		topic.setSend_time(nowTime);
		int replyCount =0;
		topic.setReplyCount(replyCount);
		List <TopicReply> topicReply = new ArrayList <TopicReply>();
		topic.setTopicReply(topicReply);
		this.bbsServiceImpl.addTopic(topic);		
		return "index";
	}
*/
	    // 回复帖子
		@RequestMapping("/addTopicReply")
		public String addTopicReply(TopicReply topicReply,@RequestParam("topicid")String topicid1, HttpSession session,RedirectAttributes redirectAttributes) {
			
			User user = (User) session.getAttribute("user");	
			
			topicReply.setUser(user);
			int topicid =Integer.parseInt(topicid1);
			Topic topic = this.bbsServiceImpl.findTopicByTopicId(topicid);
			int nowTopicReplyCount =topic.getReplyCount()+1; 
			
			this.bbsServiceImpl.updateTopic(nowTopicReplyCount,topicid);
			topicReply.setTopic(topic);
			Date date = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd:mm:ss");
			String nowTime = df.format(date);
			topicReply.setReply_time(nowTime);
			int like =0;
			topicReply.setReply_like(like);
			List <Reply> reply = new ArrayList <Reply>();
			topicReply.setReplyList(reply);
			this.bbsServiceImpl.addTopicReply(topicReply);
			redirectAttributes.addAttribute("topicid", topicid);
			return "redirect:/detail";
		}
	// 删除帖子
	@RequestMapping("/deleteTopic")
	@ResponseBody
	public Map<String, String> deleteTopic(int topicid, HttpSession session) {
		String sign;
		Map<String, String> map = new HashMap();
		Topic topic = this.bbsServiceImpl.findTopicByTopicId(topicid);
		boolean bool = this.bbsServiceImpl.delTopic(topic);
		if (bool == true) {
			sign = "删除成功";
			map.put("sign", sign);
		} else {
			sign = "删除失败";
			map.put("sign", sign);
		}
		return map;
	}
	// 删除话题回复
		@RequestMapping("/deleteTopicReply")
		@ResponseBody
		public Map<String, String> deleteTopicReply(int topicReplyId, HttpSession session) {
			String sign;
			Map<String, String> map = new HashMap();
			TopicReply topicReply = this.bbsServiceImpl.findTopicReply(topicReplyId);
			int id =topicReply.getTopic().getTopicid();
			Topic topic = this.bbsServiceImpl.findTopicByTopicId(id);
			int replyCount = topic.getReplyCount()-1;
			this.bbsServiceImpl.updateTopic(replyCount, id);
			boolean bool = this.bbsServiceImpl.delTopicReply(topicReply);
			if (bool == true) {
				sign = "删除成功";
				map.put("sign", sign);
			} else {
				sign = "删除失败";
				map.put("sign", sign);
			}
			return map;
		}

	
	// 回复某人
	@RequestMapping("/replySomebody")
	@ResponseBody
	public Map<String, String> replySomebody(int topicId, String reply_content, HttpSession session) {
		String sign;
		Map<String, String> map = new HashMap();
		Topic topic = this.bbsServiceImpl.findTopicByTopicId(topicId);
		User user = (User) session.getAttribute("user");
		String reply_content1 = reply_content;
		int like = 0;
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd:mm:ss");
		String nowTime = df.format(date);
		TopicReply topicReply = new TopicReply();
		topicReply.setTopic(topic);
		topicReply.setReply_content(reply_content1);
		topicReply.setReply_like(like);
		topicReply.setReply_time(nowTime);
		topicReply.setUser(user);
		boolean bool = this.bbsServiceImpl.addTopicReply(topicReply);
		if (bool == true) {
			sign = "回帖成功";
			map.put("sign", sign);
		} else {
			sign = "回帖失败";
			map.put("sign", sign);
		}
		return map;
	}

	// 收藏帖子
	@RequestMapping("/CollectTopic")
	@ResponseBody
	public Map<String, String> collectTopic(int topicid, HttpSession session) {
		String sign;
		Map<String, String> map = new HashMap();
		Topic topic = this.bbsServiceImpl.findTopicByTopicId(topicid);
		User user = (User) session.getAttribute("user");
		Collect collect = new Collect();
		collect.setTopic(topic);
		collect.setUser(user);
		boolean bool = this.bbsServiceImpl.collectTopic(collect);
		if (bool == true) {
			sign = "收藏成功";
			map.put("sign", sign);
		} else {
			sign = "收藏失败";
			map.put("sign", sign);
		}
		return map;
	}

	// 取消收藏
	@RequestMapping("/unCollectTopic")
	@ResponseBody
	public Map<String, String> unCollectTopic(int topicId, HttpSession session) {
		String sign;
		Map<String, String> map = new HashMap();
		Topic topic = this.bbsServiceImpl.findTopicByTopicId(topicId);
		User user = (User) session.getAttribute("user");
		int userId = user.getUserid();
		Collect collect = this.bbsServiceImpl.findCollect(topicId, userId);
		boolean bool = this.bbsServiceImpl.unCollectTopic(collect);
		if (bool == true) {
			sign = "取消收藏成功";
			map.put("sign", sign);
		} else {
			sign = "取消收藏失败";
			map.put("sign", sign);
		}
		return map;
	}
	//点赞
	@RequestMapping("/addLike")
	@ResponseBody
	public Map<String, String> addLike(int topicReplyId, HttpSession session) {
		String sign;
		Map<String, String> map = new HashMap();
		
		TopicReply topicReply = this.bbsServiceImpl.findTopicReply(topicReplyId);
		int like = topicReply.getReply_like()+1;
		this.bbsServiceImpl.updateTopicReply( like, topicReplyId );
		User user = (User) session.getAttribute("user");
		Great great = new Great();
		great.setTopicReply(topicReply);
		great.setUser(user);
		boolean bool = this.bbsServiceImpl.addGreat(great);
		if (bool == true) {
			sign = "点赞成功";
			map.put("sign", sign);
		} else {
			sign = "点赞失败";
			map.put("sign", sign);
		}
		return map;
	}
}
	