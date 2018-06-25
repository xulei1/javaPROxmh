package XMH.ldyb.shop.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import XMH.ldyb.shop.dao.GoodsDaoImpl;
import XMH.ldyb.shop.entity.Goods;
import XMH.ldyb.shop.entity.Orders;

@Service
@Transactional(readOnly=false)
public class GoodsServiceImpl {
	@Resource
	private GoodsDaoImpl goodsDaoImpl;
	
	public List<Goods> listByType(String type){
		return this.goodsDaoImpl.findByType(type);
	}
	
	public List<Goods> listByPrice(int min,int max){
		return this.goodsDaoImpl.findByPrice(min, max);
	}
	
	public List<Goods> listByName(String name){
		return this.goodsDaoImpl.findByName(name);
	}
	
	public List<Goods> listAll(){
		return this.goodsDaoImpl.findAll();
	}
	
	public Goods listById(String id){
		return this.goodsDaoImpl.findById(id);
	}
	
	public void saveOrder(Orders o) {
		this.goodsDaoImpl.makeOrder(o);
	}
	
	public void changeScore(Integer i,Integer id) {
		this.goodsDaoImpl.updateScore(i,id);
	}
	
	public List<Orders> listOrders(Integer id) {
		return this.goodsDaoImpl.findOrder(id);
	}
}
