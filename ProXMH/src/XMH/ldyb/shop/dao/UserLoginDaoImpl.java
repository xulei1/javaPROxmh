package XMH.ldyb.shop.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import XMH.ldyb.login.entity.loginuser;
import XMH.ldyb.shop.entity.User;




@Repository
public class UserLoginDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public loginuser findById(String name){
		Query q =  this.sessionFactory.getCurrentSession().createQuery("from loginuser where UserName=?");
		q.setString(0, name);
		loginuser u = (loginuser) q.uniqueResult();
		return u;
	}
}
