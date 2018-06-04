package GOOD;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import GOOD.GoodsDaoImpl;
import GOOD.Goods;

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
}
