package XMH.ldyb.login.service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import XMH.ldyb.login.dao.logindaoImpl;
import XMH.ldyb.login.entity.loginuser;

@Service

public class loginserviceImpl {

	
	@Resource
	private logindaoImpl logindaoImpl;
	public void addUser(loginuser u) {
	logindaoImpl.addUser(u);
	System.out.println("申请成功");
	System.out.println("service");
	}
	public boolean login(String UserName,String pawd) {
		System.out.println("dao2");
		return logindaoImpl.login(UserName, pawd);
	}
	public loginuser loginUser(String UserName, String pawd ){
		loginuser lu=this.logindaoImpl.findById(UserName);
		return lu;
	}
}
