package XMH.ldyb.shop.dao;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import XMH.ldyb.shop.entity.User;




@Repository
public class UserLoginDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public User findById(String name){
		Query q =  this.sessionFactory.getCurrentSession().createQuery("from User where user_name=?");
		q.setString(0, name);
		User u = (User) q.uniqueResult();
		return u;
	}
}
