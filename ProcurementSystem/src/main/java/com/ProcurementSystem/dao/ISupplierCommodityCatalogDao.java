package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.CommodityCatalog;

public interface ISupplierCommodityCatalogDao {

	public List<CommodityCatalog> searchCommodityCatalog(CommodityCatalog commodityCatalog);//获得所有商品目录

	public void updateCommodityCatalog(CommodityCatalog commodityCatalog);

}
