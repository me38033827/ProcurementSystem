package com.ProcurementSystem.dao;

import com.ProcurementSystem.entity.CommodityCatalog;

public interface ISupplierSystemCommodityCatalogDao {

	void insertCommodityCatalog(CommodityCatalog commodityCatalog);

	void setIsActivated(CommodityCatalog commodityCatalog);

	void setItemCount(CommodityCatalog commodityCatalog);


}
