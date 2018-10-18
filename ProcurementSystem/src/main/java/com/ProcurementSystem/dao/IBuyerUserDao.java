package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.entity.Group;

public interface IBuyerUserDao {
	
	User getUserDetail(Map<String, String> params);
	
	int createNewUser(User user);
	
	int checkName(Map<String, String> params);
	
	List<User> getUsers(Map<String, String> params);

	int getMaxUniqueName();

	void updateUser(User user);

}
