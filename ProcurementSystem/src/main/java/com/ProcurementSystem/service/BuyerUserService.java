package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.ProcurementSystem.dao.IBuyerUserDao;
import com.ProcurementSystem.entity.User;

@Service
public class BuyerUserService {

	@Resource IBuyerUserDao dao;
	public User getUserDetail(String userUniqueName){
		System.out.println("In user service...");
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("userUniqueName", userUniqueName);
		
		// get user details
		User user = dao.getUserDetail(params);
		
		System.out.println("Taking details for user " + user.getUserIdentifier() + "Back to user service...");
		return user;
	}
	
	public String createNewUser(User newUser){
		System.out.println("In user service...");
		System.out.println("Creating new user: ");
		dao.createNewUser(newUser);
		
		return "success";
	}
	
	public boolean checkName(String userIdentifier,String passwordAdapter){
		Map<String, String> params = new HashMap<String, String>();
		params.put("userIdentifier", userIdentifier);
		params.put("passwordAdapter", passwordAdapter);
		
		int numOfName = dao.checkName(params);
		System.out.println("number of zhixuan is " + numOfName);
		if(numOfName == 0){
			return false;
		}
		return true;
	}
	
	public List<User> getUsers(Map<String, String> params){
		return dao.getUsers(params);
	}
}
