package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IUserDao;
import com.ProcurementSystem.entity.User;

@Service
public class UserService {

	@Resource IUserDao dao;
	public User getUserDetail(String userIdentifier){
		System.out.println("In user service...");
		
		// set parameters 
		Map<String, String> params = new HashMap<String, String>();
		params.put("userIdentifier", userIdentifier);
		
		// get user details
		User user = dao.getUserDetail(params);
		
		System.out.println("Taking details for user " + user.getUserIdentifier() + "Back to user service...");
		return user;
	}
}
