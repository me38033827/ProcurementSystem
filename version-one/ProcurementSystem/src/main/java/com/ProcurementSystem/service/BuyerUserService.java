package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import com.ProcurementSystem.dao.IBuyerUserDao;
import com.ProcurementSystem.dao.IBuyerUserGroupDao;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.entity.Group;

@Service
public class BuyerUserService {

	@Resource IBuyerUserDao dao;
	@Resource IBuyerUserGroupDao userGroupDao;
	
	public User getUserDetail(String userUniqueName){
		System.out.println("In user service...");
		
		Map<String, String> params = new HashMap<String, String>();
		params.put("userUniqueName", userUniqueName);
		
		// get user details
		User user = dao.getUserDetail(params);
		
		System.out.println("Taking details for user " + user.getUserIdentifier() + " Back to user service...");
		return user;
	}
	
	public int createNewUser(User newUser){
		System.out.println("In user service...");
		System.out.println("Creating new user: ");
		return dao.createNewUser(newUser);
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
	
	/**
	 * 根据用户id获取所属组
	 * @param userUniqueName
	 * @return 
	 */
	public List<Group> getGroupsByUserUniqueName(String userUniqueName) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("uniqueName", userUniqueName);
		return userGroupDao.getGroupsByUserUniqueName(params);
	}
	/**
	 * 获取当前最大id号
	 * @return
	 */
	public int getMaxUniqueName() {
		return dao.getMaxUniqueName();
	}

	public void updateUser(User user) {
		System.err.println("In updateUser Service...");
		dao.updateUser(user);
	}
}
