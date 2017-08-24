package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.common.PageParams;
import com.ProcurementSystem.dao.ICommodityDao;
import com.ProcurementSystem.entity.Commodity;

@Service
public class CommodityService {
	@Resource
	ICommodityDao commodityDao;

	public Boolean updateCommodity(Commodity commodity) {// 不分页的查询方法
		return commodityDao.updateCommodity(commodity);
	}

	public PageParams<Commodity> searchCommodity(Commodity commodity, int currPage) {// 分页的查询方法
		// TODO Auto-generated method stub
		PageParams<Commodity> pageParams = new PageParams<>();
		int rowCount = commodityDao.getRowCount();// 获得商品的总行数rowCount
		pageParams.setRowCount(rowCount);
		if (currPage > pageParams.getTotalPages())// 判断当前页的合法性
			currPage = pageParams.getTotalPages();
		else if (currPage < 1)
			currPage = 1;
		pageParams.setCurrPage(currPage);
		int offset = (pageParams.getCurrPage()-1) * PageParams.pageSize;
		int size = PageParams.pageSize;
		
		Map<String,Object> searchParams = new HashMap<>();//构造查询参数
		searchParams.put("commodity", commodity);
		searchParams.put("offset", offset);
		searchParams.put("size", size);
		pageParams.setData(commodityDao.searchCommodity(searchParams));
		return pageParams;
	}
}
