package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;

import com.ProcurementSystem.entity.Group;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.entity.UserGroup;

/**
 * 用户-用户组持久层
 * @CreateDate: 2018年4月4日 下午8:34:37
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月4日 lrq &amp; new
 */
public interface IBuyerUserGroupDao {
	
	/**
	 * 获取组中所有用户
	 * @param params
	 * @return
	 */
	List<User> getUsersByGroupUniqueName(Map<String, String> params);

	/**
	 * 获取用户所属组
	 * @param params
	 * @return
	 */
	List<Group> getGroupsByUserUniqueName(Map<String, String> params);
	
	/**
	 * 新建用户-用户组
	 * @param userGroup
	 */
	void createNewUserGroup(Map<String, String> params);

	
	int checkUserGroupIsExist(Map<String, String> params);

	
	void deleteUserFromGroup(Map<String, String> params);

	
	void deleteUserGroupByGroupUniqueName(Map<String, String> params);

}
