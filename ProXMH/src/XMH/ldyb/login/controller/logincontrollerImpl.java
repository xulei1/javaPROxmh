package XMH.ldyb.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import XMH.ldyb.login.entity.loginuser;
import XMH.ldyb.login.service.*;

@Controller
@RequestMapping("/user")
public class logincontrollerImpl {
	@Resource
	
	private  loginserviceImpl loginserviceImpl;
	/* 初步注册*/
	@RequestMapping("/addu")
	public String addUser(loginuser u) {
		loginserviceImpl.addUser(u);
		System.out.println("注册成功");
		return "regist1";
		
	}
	/* 登录操作 */
	@RequestMapping("/shouye")
	public String login(String UserName,String pawd,HttpSession session) {
		 loginserviceImpl.login(UserName, pawd);
		 System.out.println("dao3");
		if( loginserviceImpl.login(UserName, pawd)) {
			session.setAttribute("lu1", UserName);
			loginuser lu=this.loginserviceImpl.loginUser(UserName, pawd);
			System.out.println("lu");
			session.setAttribute("lu", lu);
			 return "daohang";
		}else {
			return "index";
		}
	}
	@RequestMapping("/daohang")
	public String xinxi() {
		return "daohang";
	}
	public String login(@RequestParam("UserName") String name,
			@RequestParam("pawd") String pwd,
			HttpSession session,Model model){
		loginuser lu=this.loginserviceImpl.loginUser(name, pwd);
		session.setAttribute("lu", lu);
		return "a";
	}
}
