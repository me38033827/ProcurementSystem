package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.Login;

public interface ILoginDao {

	List<Login> getLoginInformation(Login login);
	
	int getUsernameExistance(Login login);
}

