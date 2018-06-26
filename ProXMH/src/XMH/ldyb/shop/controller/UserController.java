package XMH.ldyb.shop.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import XMH.ldyb.shop.service.UserServiceImpl;
import XMH.ldyb.login.entity.loginuser;
import XMH.ldyb.shop.entity.User;



@Controller
@RequestMapping("/user")
public class UserController {
	@Resource
	private UserServiceImpl userServiceImpl;
	
	
	
	/**�û���½ **/
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String login(@RequestParam("UserName") String name,
			@RequestParam("pawd") String pwd,
			HttpSession session,Model model){
		loginuser lu=this.userServiceImpl.login(name, pwd);
		if(lu!=null){
			System.out.println(name+"----------------------------");
			model.addAttribute("name",name);
			session.setAttribute("lu", lu);
			return "shopIndex";
		}else{
			model.addAttribute("erroinfo", "�û������벻��ȷ");
			return "login";
		}
	}
}
