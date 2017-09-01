package com.ProcurementSystem.dao;

import java.util.Map;

import com.ProcurementSystem.entity.User;

public interface IBuyerUserDao {
	
	User getUserDetail(Map<String, String> params);
	
	void createNewUser(User user);
	
	int checkName(Map<String, String> params);
	
}