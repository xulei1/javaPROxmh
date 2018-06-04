package GOOD;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.qiqi.city.allcity.service.AllcityServiceImpl;
import GOOD.GoodsServiceImpl;
import GOOD.Goods;

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
}
