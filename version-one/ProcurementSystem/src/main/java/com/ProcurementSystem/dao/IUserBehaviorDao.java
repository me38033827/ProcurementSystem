package com.ProcurementSystem.dao;

import java.util.List;

import com.ProcurementSystem.entity.UserBehavior;

public interface IUserBehaviorDao {

	void insert(UserBehavior userBehavior);

	List<UserBehavior> getSortRule(Integer userId);

	List<UserBehavior> getSortRuleBySupplier(Integer userId);

}
