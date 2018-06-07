package login.dao;
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
	public void addFirst(String UserName , String pawd) {
		String sql= "insert into User (UserName,pawd) values (UserName,pawd)";
		System.out.println("1");
		Query q =   this.sessionfactory.getCurrentSession().createSQLQuery(sql);
		System.out.println("11");
		q.setParameter(0, UserName);
		q.setParameter(1, pawd);
		System.out.println("注册成功");
		q.executeUpdate();
		
	}
/* 信息完善 */
	public void addSecond(String name , String number, String address) {
		String sql= "insert into User (name,number,address) values (name,number,address)";
		System.out.println("1");
		Query q =   this.sessionfactory.getCurrentSession().createSQLQuery(sql);
		System.out.println("11");
		q.setParameter(2, name);
		q.setParameter(3, number);
		q.setParameter(4, address);
		System.out.println("信息完善成功");
		q.executeUpdate();
	}
}
