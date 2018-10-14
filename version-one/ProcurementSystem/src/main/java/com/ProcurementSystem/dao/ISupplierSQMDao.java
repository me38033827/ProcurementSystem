package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.SupplierSQM;

public interface ISupplierSQMDao {
	
	void insertSQM(SupplierSQM sqm);
	
//	List<SupplierSQM> searchAllSupplierSQM();
//	
	void updateSQMStatus(SupplierSQM sqm);
	
	SupplierSQM getSupplierSQM(int id);
	
	List<SupplierSQM> searchSupplierSQM(String content);
	
	int getMaxId();
	
	List<SupplierSQM> completeSearchSupplierSQM(Map<String, Object> params);
	
	void updateSQM(SupplierSQM sqm);

	void deleteSqmById(String id);
}
