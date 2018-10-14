package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ISupplierCommodityCatalogDao;
import com.ProcurementSystem.entity.CommodityCatalog;

@Service
public class SupplierCommodityCatalogService {
	@Resource
	ISupplierCommodityCatalogDao supplierCommodityCatalogDao;
	
	/**获得所有目录*/
	public List<CommodityCatalog> searchCommodityCatalog(CommodityCatalog commodityCatalog) {
		return supplierCommodityCatalogDao.searchCommodityCatalog(commodityCatalog);
	}

	public void updateCommodityCatalog(CommodityCatalog commodityCatalog) {
		// TODO Auto-generated method stub
		supplierCommodityCatalogDao.updateCommodityCatalog(commodityCatalog);
	}
}
