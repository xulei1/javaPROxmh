package XMH.ldyb.chat.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import XMH.ldyb.chat.dao.PageModelDaoImpl;
import XMH.ldyb.chat.entity.PageModel;



@Service
@Transactional(readOnly=true)
public class PageModelServiceImpl {
	@Resource
	private PageModelDaoImpl pageModelDaoImpl;
	
     public PageModel getPageModel(int totals, List datas, int pageSize, int currPage) {		
    	 return this.pageModelDaoImpl.getPageModel(totals, datas, pageSize, currPage);
	}
}
