package XMH.ldyb.shop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import XMH.ldyb.shop.dao.UserLoginDaoImpl;
import XMH.ldyb.shop.entity.User;



@Service
@Transactional(readOnly=false)
public class UserServiceImpl {
	
	@Resource
	private UserLoginDaoImpl userLoginDaoImpl;
	public User login(String name, String password){
		User lu=this.userLoginDaoImpl.findById(name);
		if(lu!=null){
			if(lu.getUser_password().equals(password)){
				return lu;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
}
