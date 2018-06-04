package GOOD;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import GOOD.Goods;

@Repository
public class GoodsDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	
	public List<Goods> findByType(String type){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods g where g.goods_type=?");
		q.setString(0, type);
		return q.list();
	}
	
	public List<Goods> findByPrice(int min,int max){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods g where g.goods_price>=? and g.goods_price<=?");
		q.setInteger(0, min);
		q.setInteger(1, max);
		return q.list();
	}
	
	public List<Goods> findByName(String name){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods g where g.goods_name like '%"+ name +"%'");
		return q.list();
	}
	
	public List<Goods> findAll(){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods");
		return q.list();
	}
	
	public Goods findById(String id){
		Query q = this.sessionFactory.getCurrentSession().createQuery("from Goods g where g.id=?");
		q.setString(0, id);
		return (Goods) q.uniqueResult();
	}
}
