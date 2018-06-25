package XMH.ldyb.SWZH.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import XMH.ldyb.SWZH.dao.LoginUserDaoImpl;
import XMH.ldyb.login.entity.Tie;



@Controller
public class ManagerContoller {
	private static final HttpSession session = null;
	@Resource
	private XMH.ldyb.SWZH.dao.LoginUserDaoImpl loginUserDaoImpl;
	@RequestMapping(value="/getluntan_all",method=RequestMethod.GET)
	public String getluntan_all(Model model, HttpSession session,HttpServletRequest request) {
		String hql="from Tie";
		session=request.getSession();//获取session			
		session.setAttribute("hql", hql);//建立session
		List<Tie> MtieList = new ArrayList<Tie>();
		session=request.getSession();
		Query query=this.loginUserDaoImpl.getPage( hql, request);//执行查询
		MtieList = query.list();
		session.setAttribute("MtieList", MtieList);
		
		return "table";
		
	}
	
	
	
	

}
