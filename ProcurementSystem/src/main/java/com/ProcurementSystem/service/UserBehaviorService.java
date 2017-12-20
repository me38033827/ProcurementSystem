package com.ProcurementSystem.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IUserBehaviorDao;
import com.ProcurementSystem.entity.UserBehavior;


@Service
public class UserBehaviorService {
	@Resource
	IUserBehaviorDao userBehaviorDao;

	public void insert(UserBehavior userBehavior) {
		// TODO Auto-generated method stub
		userBehaviorDao.insert(userBehavior);
	}
	
	

}
