package login.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import login.entity.User;
import login.service.*;

@Controller
@RequestMapping("/user")
public class logincontrollerImpl {
	@Resource
	private  loginserviceImpl loginserviceImpl;
	/* 初步注册*/
	@RequestMapping("/addu")
	public String addUser(User u) {
		loginserviceImpl.addUser(u);
		return "dengandzhu";
		
	}
	/* 登录操作 */
	@RequestMapping("/shouye")
	public String login(String UserName,String pawd) {
		 loginserviceImpl.login(UserName, pawd);
		 System.out.println("dao3");
		if( loginserviceImpl.login(UserName, pawd)) {
			 return "xinxi";
		}else {
			return "9999";
		}
	}
}
