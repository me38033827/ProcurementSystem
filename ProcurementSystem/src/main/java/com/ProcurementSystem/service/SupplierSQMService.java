package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.ProcurementSystem.dao.ISupplierSQMDao;
import com.ProcurementSystem.entity.supplierSQM;


@Service
public class SupplierSQMService {

	@Resource ISupplierSQMDao dao;
	public void InsertSQM(supplierSQM sqm){
		dao.insertSQM(sqm);
	}
	
	public List<supplierSQM> searchAllSupplierSQM(){
		return dao.searchAllSupplierSQM();
	}
	
	public void updateSQMStatus(supplierSQM sqm){
		dao.updateSQMStatus(sqm);
	}
	
	public supplierSQM searchSupplierSQM(int id){
		return dao.searchSupplierSQM(id);
	}
}
