package com.ProcurementSystem.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.ILoginDao;
import com.ProcurementSystem.entity.Login;


@Service
public class LoginService {
	
	@Resource ILoginDao dao;
	public Login getLoginInformation(Login login){
		return dao.getLoginInformation(login);
	}
	
	public int getUsernameExistance(Login login){
		return dao.getUsernameExistance(login);
	}
	
	public void insertSupplierLogin(Login login){
		dao.insertSupplierLogin(login);
	}
	
	
}
