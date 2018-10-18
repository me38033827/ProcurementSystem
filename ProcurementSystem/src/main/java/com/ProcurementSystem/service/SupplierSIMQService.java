package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ISupplierSIMQDao;
import com.ProcurementSystem.entity.SupplierQuestion;


@Service
public class SupplierSIMQService {

	@Resource ISupplierSIMQDao dao;
	public void insertSupplierQuestion(SupplierQuestion supplierQuestion){
		dao.insertSupplierQuestion(supplierQuestion);
	}

	public List<SupplierQuestion> searchQA(int supplierId){
		return dao.searchQA(supplierId);
	}
	
	public int getSupplierQuestionId(){
		return dao.getSupplierQuestionId();
	}
	
	public void updateAnswer(SupplierQuestion supplierQuestion){
		dao.updateAnswer(supplierQuestion);
	}
}
