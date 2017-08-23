package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ICommodityDao;
import com.ProcurementSystem.entity.Commodity;

@Service
public class CommodityService {
	@Resource 
	ICommodityDao commodityDao;
	
	public List<Commodity> searchCommodity(Commodity commodity){
		return  commodityDao.searchCommodity(commodity);
	}

	public Boolean updateCommodity(Commodity commodity) {
		return commodityDao.updateCommodity(commodity);
	}
}
