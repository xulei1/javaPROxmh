package XMH.ldyb.SWZH.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import XMH.ldyb.login.entity.Tie;

import XMH.ldyb.SWZH.dao.LoginUserDaoImpl;




@Controller
//@RequestMapping("/loginuser")
public class LoginUserController {
	
	@Resource
	private XMH.ldyb.SWZH.dao.LoginUserDaoImpl loginUserDaoImpl;

	@Resource
	private  SessionFactory sessionFactory;

	@RequestMapping(value="/pageto",method=RequestMethod.GET)
	public String pageto(int pageno,Model model, HttpSession session,HttpServletRequest request) {
		try {
		List<Tie> tieList = new ArrayList<Tie>();
	 	session=request.getSession();//获取session
	    String hql= (String) session.getAttribute("hql");
		Query query=this.loginUserDaoImpl.getPage( hql, request);//执行查询
		 query.setProperties(6);
		 query.setFirstResult(pageno*6);//开始查询位置 起始为0
		 query.setMaxResults(6);
		 tieList = query.list();
		 session.setAttribute("tieList", tieList);
		 session.setAttribute("pageNo", pageno);
		}
		catch(Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "ajax";
	}
	//查询All
		@RequestMapping(value="/getall",method=RequestMethod.GET)
		public String getall(Model model, HttpSession session,HttpServletRequest request) {
			String hql="from Tie";
			session=request.getSession();//获取session			
			session.setAttribute("hql", hql);//建立session
			List<Tie> tieList = new ArrayList<Tie>();
			session=request.getSession();
			Query query=this.loginUserDaoImpl.getPage( hql, request);//执行查询
			 query.setProperties(6);
			 query.setFirstResult(0);//开始查询位置 起始为0
			 query.setMaxResults(6);
			 tieList = query.list();			
			 session.setAttribute("tieList", tieList);
			 session.setAttribute("pageNo", 0);
			session.setAttribute("hql", hql);			
			return "index-swzl";		
			
		}
		//查询自己的帖子
		@RequestMapping(value="/myf",method=RequestMethod.GET)
		public String myf(Model model, HttpSession session,HttpServletRequest request) {
			String ul=(String) session.getAttribute("lu");
			String hql="from Tie where t_ip='"+ul+"'";
			session=request.getSession();//获取session			
			session.setAttribute("hql", hql);//建立session
			List<Tie> tieList = new ArrayList<Tie>();
			session=request.getSession();
			Query query=this.loginUserDaoImpl.getPage( hql, request);//执行查询
			 query.setProperties(6);
			 query.setFirstResult(0);//开始查询位置 起始为0
			 query.setMaxResults(6);
			 tieList = query.list();			
			 session.setAttribute("tieList", tieList);
			 session.setAttribute("pageNo", 0);
			session.setAttribute("hql", hql);			
			return "fabu";		
			
		}
		//删除自己的帖子
		@RequestMapping(value="/xaijia",method=RequestMethod.GET)
		public String xaijia(String id,Model model, HttpSession session,HttpServletRequest request) {
		
			String hql="delete from Tie where t_id='"+id+"'";
			this.loginUserDaoImpl.delid(hql);
			return myf(model, session, request);			
			
		}
		
		//查询All2
		@RequestMapping(value="/getall2",method=RequestMethod.GET)
		public String getall2(String str,Model model, HttpSession session,HttpServletRequest request) {
			String hql="from Tie where t_type='"+str+"'";
			session=request.getSession();//获取session			
			session.setAttribute("hql", hql);//建立session
			return pageto(0, model, session, request);
		}
	//类别查询
		@RequestMapping(value="/gettype",method=RequestMethod.GET)
		public String gettype(String type,Model model, HttpSession session,HttpServletRequest request) {
			// discounts= Integer.parseInt(price);
			String hql="from Tie where type = '"+type+"'";
			String str=type;
			List<Tie> tieList = new ArrayList<Tie>();
			session=request.getSession();
			Query query=this.loginUserDaoImpl.getPage( hql, request);//执行查询
			 query.setProperties(6);
			 query.setFirstResult(0);//开始查询位置 起始为0
			 query.setMaxResults(6);
			 tieList = query.list();			
			 session.setAttribute("tieList", tieList);
			 session.setAttribute("pageNo", 0);
			session.setAttribute("hql", hql);
			session.setAttribute("str",str);
			return "index-swzl";		
		}
	//发贴
	
		@RequestMapping(value="/fatie",method=RequestMethod.POST)
		public String fatie(MultipartFile file, HttpSession session,HttpServletRequest request,HttpServletResponse response) throws IllegalStateException, IOException {
			String path=null;// 文件路径
	        String type=null;// 文件类型
	        String  getimg=null;
	        if (file!=null) {// 判断上传的文件是否为空
	            
	            String fileName=file.getOriginalFilename();// 文件原名称
	            System.out.println("上传的文件原名称:"+fileName);
	            // 判断文件类型
	            type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
	            if (type!=null) {// 判断文件类型是否为空
	                if ("GIF".equals(type.toUpperCase())||"PNG".equals(type.toUpperCase())||"JPG".equals(type.toUpperCase())) {
	                    // 项目在容器中实际发布运行的根路径
	                	 String realPath=request.getSession().getServletContext().getRealPath("/");	                    
	                	 // 自定义的文件名称
	                    String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
	                    // 设置存放图片文件的路径
	                    path=realPath+/*System.getProperty("file.separator")+*/trueFileName;
	                   getimg=trueFileName;
	                    System.out.println("存放图片文件的路径:"+path);
	                    // 转存文件到指定的路径
	                    file.transferTo(new File(path));
	                    System.out.println("文件成功上传到指定目录下");
	                }else {
	                    System.out.println("不是我们想要的文件类型,请按要求重新上传");
	                    return null;
	                }
	            }else {
	                System.out.println("文件类型为空");
	                return null;
	            }
	        }else {
	            System.out.println("没有找到相对应的文件");
	            return null;
	        }	  
	       
			this.loginUserDaoImpl.gettie( getimg, request, session);			
			  return "index-swzl";
		}
	//冒泡赏金
	@RequestMapping(value="/maopao",method=RequestMethod.GET)
	public String maopao(HttpSession session) {
		List<Tie> moneyList = new ArrayList<Tie>();
		Tie temp=new Tie();
		//List<Tie> moneyList2 = new ArrayList<Tie>();
		Query query=this.loginUserDaoImpl.findall();
		 moneyList = query.list();
		 for(int i=0;i<moneyList.size()-1;i++) {
		   for(int j=0;j<moneyList.size()-i-1;j++) {
			if(moneyList.get(j).getMoney()<moneyList.get(j+1).getMoney()) {
				temp=moneyList.get(j);
				moneyList.set(j,moneyList.get(j+1));
				moneyList.set(j+1,temp);								
			}
		   }
			
		 }
		 session.setAttribute("moneyList",moneyList);
		return "index-swzl";
	}
	/**
     * 图片文件上传
     */
    @ResponseBody
    @RequestMapping(value = "/photoUpload",method = RequestMethod.POST)
    public String photoUpload( MultipartFile file,HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IllegalStateException, IOException{
    	String path=null;// 文件路径
        String type=null;// 文件类型
   
        if (file!=null) {// 判断上传的文件是否为空
            
            String fileName=file.getOriginalFilename();// 文件原名称
            System.out.println("上传的文件原名称:"+fileName);
            // 判断文件类型
            type=fileName.indexOf(".")!=-1?fileName.substring(fileName.lastIndexOf(".")+1, fileName.length()):null;
            if (type!=null) {// 判断文件类型是否为空
                if ("GIF".equals(type.toUpperCase())||"PNG".equals(type.toUpperCase())||"JPG".equals(type.toUpperCase())) {
                    // 项目在容器中实际发布运行的根路径
                    String realPath="./images/";
                   //request.getSession().getServletContext().getRealPath("/");
                    // 自定义的文件名称
                    String trueFileName=String.valueOf(System.currentTimeMillis())+fileName;
                    // 设置存放图片文件的路径
                    path=realPath+/*System.getProperty("file.separator")+*/trueFileName;
                    System.out.println("存放图片文件的路径:"+path);
                    // 转存文件到指定的路径
                    file.transferTo(new File(path));
                    System.out.println("文件成功上传到指定目录下");
                }else {
                    System.out.println("不是我们想要的文件类型,请按要求重新上传");
                    return null;
                }
            }else {
                System.out.println("文件类型为空");
                return null;
            }
        }else {
            System.out.println("没有找到相对应的文件");
            return null;
        }
        return path;
    }

		

	
		
}
