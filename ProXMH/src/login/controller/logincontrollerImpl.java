package login.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import login.service.*;

@Controller
@RequestMapping("user")
public class logincontrollerImpl {
	@Resource
	private  loginserviceImpl loginserviceImpl;
	@RequestMapping("/addf")
	public String addFirst(String UserName , String pawd) {
		loginserviceImpl.addFirst(UserName, pawd);
		return "houtai";
		
	}
	@RequestMapping("/adds")
	public void addSecond(String name , String number, String address) {
		loginserviceImpl.addSecond(name, number, address);
	}
}
