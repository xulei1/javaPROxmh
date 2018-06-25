package XMH.ldyb.shop.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



import XMH.ldyb.shop.service.GoodsServiceImpl;
import XMH.ldyb.shop.entity.Goods;
import XMH.ldyb.shop.entity.Orders;

@Controller
@RequestMapping("/goods")
public class GoodsController {
	@Resource
	private GoodsServiceImpl goodsServiceImpl;
	

	@RequestMapping("/listbytype")
	public String listbytype(Model model,
			@RequestParam("type") String type) {
		List<Goods> list = this.goodsServiceImpl.listByType(type);
		model.addAttribute("list",list);
		return "goods";
	}
	
	@RequestMapping("/listbyprice")
	public String listbyprice(Model model,
			@RequestParam("min") int min,
			@RequestParam("max") int max) {
		List<Goods> list1 = this.goodsServiceImpl.listByPrice(min, max);
		model.addAttribute("list1",list1);
		return "goods";
	}
	
	@RequestMapping("/listbyname")
	public String listbyname(Model model,
			@RequestParam("name") String name) {
		List<Goods> list = this.goodsServiceImpl.listByName(name);
		model.addAttribute("list",list);
		return "shopIndex";
	}
	
	@RequestMapping("/listall")
	public String listAll(Model model) {
		List<Goods> list = this.goodsServiceImpl.listAll();
		model.addAttribute("list",list);
		return  "shopIndex";
	}
	
	@RequestMapping("/listbyid")
	public String listbyid(Model model,
			@RequestParam("id") String id) {
		Goods goods = this.goodsServiceImpl.listById(id);
		model.addAttribute("goods",goods);
		return "singleSupport";
	}
	
	@RequestMapping("/order")
	public void checkif(Model model,Orders o,
			@RequestParam("real_name") String real_name,
			@RequestParam("phone") String phone,
			@RequestParam("address") String address,
			@RequestParam("userid") String userid,
			@RequestParam("goodsid") String goodsid,
			@RequestParam("newscore") String newscore) {
		//订单号
		Date date = new Date();
		long  nowdate = date.getTime();
		String orderid = String.valueOf(nowdate);
		//类型转换
		int a = Integer.parseInt(userid);
		int b = Integer.parseInt(goodsid);
		int i = Integer.parseInt(newscore);
		System.out.println(i);
		this.goodsServiceImpl.changeScore(i,a);
		//存入对象
		o.setAddress(address);
		o.setGoodsid(b);
		o.setOrderid(orderid);
		o.setPhone(phone);
		o.setReal_name(real_name);
		o.setUserid(a);
		this.goodsServiceImpl.saveOrder(o);
		
		
		System.out.print(real_name);
		System.out.print(phone);
		System.out.print(address);
		System.out.print(goodsid);
	}
	
	@RequestMapping("/listorder")
	public String listOrders(Model model,
			@RequestParam("id") Integer id) {
		List<Orders> list = this.goodsServiceImpl.listOrders(id);
		model.addAttribute("list",list);
		return "myOrder";
	}
}
