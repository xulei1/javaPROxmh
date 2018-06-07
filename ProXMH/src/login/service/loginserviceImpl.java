package login.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import login.dao.logindaoImpl;

@Service
@Transactional(readOnly=true)
public class loginserviceImpl {

	
	@Resource
	private logindaoImpl logindaoImpl;
	public void addFirst(String UserName , String pawd) {
	logindaoImpl.addFirst(UserName, pawd);
	System.out.println("申请成功");
	}
	public void addSecond(String name , String number, String address) {
		logindaoImpl.addSecond(name, number, address);
		System.out.println("完善信息成功");
	}
}
