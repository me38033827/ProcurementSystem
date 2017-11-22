package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.CommodityCatalog;

public interface IBuyerCommodityCatalogDao {
	
	public int getRowCount();//获取总行数
	public void insertCommodityCatalog(CommodityCatalog commodityCatalog);
	public List<CommodityCatalog> getAllCommodityCatalogs();//获得所有商品目录
	public List<CommodityCatalog> searchCommodityCatalog(CommodityCatalog commodityCatalog);//搜索商品目录
	public void setIsActivated(CommodityCatalog commodityCatalog);//维护isActivated，商品目录的状态属性
	public void setItemCount(CommodityCatalog commodityCatalog);//维护itemCount，商品目录的商品数量属性
	public int getCommodityCatalogVersionCount(CommodityCatalog commodityCatalog);//根据name获得商品目录的版本数
	public void stopOtherVersion(CommodityCatalog commodityCatalog);
	public List<CommodityCatalog> searchCommodityCatalogNoVersion(CommodityCatalog commodityCatalog);
	public void delete(CommodityCatalog commodityCatalog);
}
