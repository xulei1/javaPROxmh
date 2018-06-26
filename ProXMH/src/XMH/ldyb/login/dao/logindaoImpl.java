package XMH.ldyb.login.dao;
import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import XMH.ldyb.login.entity.loginuser;


@Repository

public class logindaoImpl {
		
	@Resource
	private SessionFactory sessionfactory;
/* 账号注册 */
	public void addUser(loginuser u) {
		System.out.println(u.getUserName());
		System.out.println(u.getPawd());
		System.out.println(u.getName());
		this.sessionfactory.getCurrentSession().save(u);
		System.out.println("u");
		
	}

/*登录验证*/
	public boolean login(String UserName,String pawd) {
		System.out.println("dao1");
		String sql = "from loginuser where UserName='"+UserName+"' and pawd='"+pawd+"'";
		Query q1 =  this.sessionfactory.getCurrentSession().createQuery(sql);
		
		System.out.println("dao1");
		List list =q1.list();
		return list.size()>0? true:false;
		
	}
	public loginuser findById(String UserName){
		Query q =  this.sessionfactory.getCurrentSession().createQuery("from loginuser where UserName=?");
		q.setString(0, UserName);
		loginuser u = (loginuser) q.uniqueResult();
		return u;
	}
	
}
