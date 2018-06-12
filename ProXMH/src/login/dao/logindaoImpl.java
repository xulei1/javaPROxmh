package login.dao;
import java.util.List;

import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.hibernate.Query;
import login.entity.*;


@Repository

public class logindaoImpl {
		
	@Resource
	private SessionFactory sessionfactory;
/* 账号注册 */
	public void addUser(User u) {
		System.out.println(u.getUserName());
		System.out.println(u.getPawd());
		this.sessionfactory.getCurrentSession().save(u);
		System.out.println("u");
		
	}

/*登录验证*/
	public boolean login(String UserName,String pawd) {
		String sql = "from User where UserName='"+UserName+"' and pawd='"+pawd+"'";
		Query q =  this.sessionfactory.getCurrentSession().createQuery(sql);
		
		System.out.println("dao1");
		List list =q.list();
		return list.size()>0? true:false;
		
	}
}
