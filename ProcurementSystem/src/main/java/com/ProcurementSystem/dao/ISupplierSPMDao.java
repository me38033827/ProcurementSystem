package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.entity.SupplierSPM;

public interface ISupplierSPMDao {
	
	void insertSPM(SupplierSPM spm);
	
	List<SupplierSPM> searchAllSupplierSPM();
	
	void updateSPMStatus(SupplierSPM spm);
	
	SupplierSPM getSupplierSPM(int id);
	
	List<SupplierSPM> searchSupplierSPM(String content);
	
	int getMaxId();
	
	List<SupplierSPM> completeSearchSupplierSPM(Map<String, Object> params);
}
