package login.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import login.dao.logindaoImpl;
import login.entity.User;

@Service

public class loginserviceImpl {

	
	@Resource
	private logindaoImpl logindaoImpl;
	public void addUser(User u) {
	logindaoImpl.addUser(u);
	System.out.println("申请成功");
	System.out.println("service");
	}
	public boolean login(String UserName,String pawd) {
		System.out.println("dao2");
		return logindaoImpl.login(UserName, pawd);
	}
}
