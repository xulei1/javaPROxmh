package XMH.ldyb.shop.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import XMH.ldyb.login.entity.loginuser;
import XMH.ldyb.shop.dao.UserLoginDaoImpl;
import XMH.ldyb.shop.entity.User;



@Service
@Transactional(readOnly=false)
public class UserServiceImpl {
	
	@Resource
	private UserLoginDaoImpl userLoginDaoImpl;
	public loginuser login(String name, String password){
		loginuser lu=this.userLoginDaoImpl.findById(name);
		if(lu!=null){
			if(lu.getPawd().equals(password)){
				return lu;
			}else{
				return null;
			}
		}else{
			return null;
		}
	}
}
