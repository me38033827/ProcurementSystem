package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.Login;

public interface ILoginDao {

	Login getLoginInformation(Login login);
	
	int getUsernameExistance(Login login);
	
	void insertSupplierLogin(Login login);

	void insertBuyerLogin(Login login);

}

