package XMH.ldyb.login.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
			session.setAttribute("lu", UserName);
			 return "daohang";
		}else {
			return "index";
		}
	}
	@RequestMapping("/daohang")
	public String xinxi() {
		return "daohang";
	}
}
