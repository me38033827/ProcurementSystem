package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.Commodity;

public interface ICommodityDao {
	public boolean insertCommodity(Commodity Commodity);//增

	public List<Commodity> searchCommodity(Commodity commodity);//查

	public Boolean updateCommodity(Commodity commodity);
	
	
}
