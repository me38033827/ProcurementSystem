package com.ProcurementSystem.dao;

import com.ProcurementSystem.entity.SupplierSQMAllowedCode;

public interface IBuyerSupplierSQMAllowedCodeDao {

	void insert(SupplierSQMAllowedCode allowedCode);//插入allowedCode

	void delete(int sqmId);
	
}
