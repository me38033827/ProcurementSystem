package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.Commodity;

public interface ICommodityDao {
	public boolean insertCommodity(Commodity Commodity);//增

	public List<Commodity> searchCommodity(Map<String,Object> searchParams);//查（分页）

	public Boolean updateCommodity(Commodity commodity);//更新商品信息

	public int getRowCount();//查询总行数，分页使用
}
