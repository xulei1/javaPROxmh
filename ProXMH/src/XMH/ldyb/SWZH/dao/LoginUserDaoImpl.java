package XMH.ldyb.SWZH.dao;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import XMH.ldyb.login.entity.Tie;



@Repository
public class LoginUserDaoImpl{

	@Resource
	private  SessionFactory sessionFactory;

	//获取查询结果
	public Query getPage(String hql,HttpServletRequest request)  {
		HttpSession session = request.getSession();
		int countRow = 0;//数据总数
		int pageCount = 0;//页码
		Query query = null ;
		try {      
			query= this.sessionFactory.getCurrentSession().createQuery(hql);
			 countRow =query.list().size();
			 if (countRow % 6 > 0) {
					pageCount = countRow / 6 + 1;
				}
				else {
					pageCount = countRow / 6;
				}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     session.setAttribute("pageCount", pageCount);
	     return query;
    } 
	public void gettie(String path,HttpServletRequest request,HttpSession session)   {
		//String ip=(String)session.getAttribute("lu");
		UUID uuid=UUID.randomUUID();
        String str = uuid.toString(); 
        String t_id =str.replace("-", "");//生成随机id
		String head=request.getParameter("head");//获取发帖信息
		String test=request.getParameter("text");		
		String type=request.getParameter("type");		
		String t_type=(String)request.getParameter("leibie");
		String m=request.getParameter("money");
		int money=Integer.parseInt(m);
		String tel=request.getParameter("tel");
		Date date=new Date();//获取当前日期
		DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");   //创建一个格式化日期对象
		 String punchTime = simpleDateFormat.format(date);//格式化后的时间
		Tie tie=new Tie();
		//tie.setT_ip(ip);
        tie.setT_head(head);
        tie.setT_txt(test);
       tie.setT_data(punchTime);
       tie.setT_id(t_id);
       tie.setT_type(t_type);
       tie.setT_image(path);
       tie.setType(type);
       tie.setMoney(money);
       tie.setTel(tel);
       Session session1=this.sessionFactory.openSession();  
       Transaction tx=session1.beginTransaction();        
       session1.save(tie);  
       tx.commit();     		
	}
	public Query findall() {
		String hql="from Tie";
		Query query = null ;
		query= this.sessionFactory.getCurrentSession().createQuery(hql);
		return query;
		
	}
	public void delid(String hql) {
		Query query = this.sessionFactory.getCurrentSession().createQuery(hql);
		
	}

	
}
