package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ISupplierSPMDao;
import com.ProcurementSystem.entity.SupplierSPM;


@Service
public class SupplierSPMService {

	@Resource ISupplierSPMDao dao;
	public void InsertSPM(SupplierSPM spm){
		dao.insertSPM(spm);
	}
	
	public List<SupplierSPM> searchAllSupplierSPM(){
		return dao.searchAllSupplierSPM();
	}
	
	public void updateSPMStatus(SupplierSPM spm){
		dao.updateSPMStatus(spm);
	}
	
	public SupplierSPM getSupplierSPM(int id){
		return dao.getSupplierSPM(id);
	}
	
	public List<SupplierSPM> searchSupplierSPM(String content){
		return dao.searchSupplierSPM(content);
	}
	
	public int getMaxId(){
		return dao.getMaxId();
	}
}
