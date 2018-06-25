package XMH.ldyb.chat.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import XMH.ldyb.chat.dao.BbsDao;
import XMH.ldyb.chat.entity.Collect;
import XMH.ldyb.chat.entity.Great;
import XMH.ldyb.chat.entity.Topic;
import XMH.ldyb.chat.entity.TopicReply;

@Service
public class BbsServiceImpl {
	@Resource
	private BbsDao bbsDao;
	/*public void saveTopic(Topic topic);//保存话题
	public void deleteTopic(Topic topic);
	public Topic getTopic();
	public void saveReply(TopicReply topicReply);//保存回复
	public void deleteReply(TopicReply topicReply);
	public TopicReply geTopicReply();
	public void saveGreat(Great great);//保存点赞
	public void deleteGreate(Great great);
	public void collectTopic(Topic topic);//收藏帖子
	public void unCollectTopic(Topic topic);
	public Topic getCollectedTopic();*/
	public List<Topic> findAllTopic(){
		List <Topic> q = this.bbsDao.getAllTopic();
		return q;
	}
	public List<Topic> findTopic(int a,int b){
		List <Topic> q = this.bbsDao.getTopic(a, b);
		return q;
	}
	public Topic findTopicByTopicId(int topicId) {
		Topic q = this.bbsDao.getTopic(topicId);
		return q;
	}
	public boolean addTopic(Topic topic) {
		this.bbsDao.saveTopic(topic);
		return true;
	}
	@Transactional
	public boolean delTopic(Topic topic) {
		this.bbsDao.deleteTopic(topic);
		return true;
	}
	@Transactional
	public boolean addTopicReply(TopicReply topicReply) {
		this.bbsDao.saveTopicReply(topicReply);
		return true;
	}
	public TopicReply findTopicReply(int id) {
		TopicReply topicReply = this.bbsDao.getTopicReply(id);
		return topicReply;
	}
	@Transactional
	public boolean delTopicReply(TopicReply reply) {
		this.bbsDao.deleteReply(reply);
		return true;
	}
	public boolean addGreat(Great great) {
		this.bbsDao.saveGreat(great);
		return true;
	}
	public boolean delGreat(Great great) {
		this.bbsDao.deleteGreate(great);
		return true;
	}
	public boolean collectTopic(Collect collect) {
		this.bbsDao.collectTopic( collect);
		return true;
	}
	public boolean unCollectTopic(Collect collect){
		this.bbsDao.unCollectTopic( collect);
		return true;
	}
	public Collect findCollect(int topicId, int userId) {
		Collect q = this.bbsDao.getCollect(topicId, userId);
		return q;
	}
	public void updateTopic(int count ,int id) {
		// TODO Auto-generated method stub
		this.bbsDao.updateTopic(count, id);
	}
	public void updateTopicReply(int like, int topicReplyId) {
		// TODO Auto-generated method stub
		this.bbsDao.updateTopicReply( like, topicReplyId);
	}
	
}
