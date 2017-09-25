package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.ProcurementSystem.dao.ISupplierSQMDao;
import com.ProcurementSystem.entity.SupplierSQM;


@Service
public class SupplierSQMService {

	@Resource ISupplierSQMDao dao;
	public void InsertSQM(SupplierSQM sqm){
		dao.insertSQM(sqm);
	}
	
	public List<SupplierSQM> searchAllSupplierSQM(){
		return dao.searchAllSupplierSQM();
	}
	
	public void updateSQMStatus(SupplierSQM sqm){
		dao.updateSQMStatus(sqm);
	}
	
	public SupplierSQM getSupplierSQM(int id){
		return dao.getSupplierSQM(id);
	}
	
	public List<SupplierSQM> searchSupplierSQM(String content){
		return dao.searchSupplierSQM(content);
	}
	
	public int getMaxId(){
		return dao.getMaxId();
	}
}
