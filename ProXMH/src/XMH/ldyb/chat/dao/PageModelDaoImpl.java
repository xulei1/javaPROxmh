package XMH.ldyb.chat.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

import org.springframework.stereotype.Repository;

import XMH.ldyb.chat.entity.PageModel;



@Repository
public class PageModelDaoImpl {

	@Resource
	private SessionFactory sessionFactory;
	

	public PageModel getPageModel(int totals, List datas, int pageSize, int currPage) {
		
		return new PageModel(totals, datas, pageSize, currPage);
	}
}