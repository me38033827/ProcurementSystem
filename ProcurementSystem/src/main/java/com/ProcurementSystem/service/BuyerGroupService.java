package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ProcurementSystem.dao.IBuyerGroupDao;
import com.ProcurementSystem.dao.IBuyerUserGroupDao;
import com.ProcurementSystem.entity.Group;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.entity.UserGroup;

/**
 * 用户组业务层
 * @CreateDate: 2018年4月4日 上午10:41:04
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月4日 lrq &amp; new
 */
@Service
public class BuyerGroupService {

	@Autowired
	private IBuyerGroupDao dao;
	@Autowired
	private IBuyerUserGroupDao userGroupDao;
	
	/**
	 * 检测该用户组是否已存在
	 * @param name
	 * @return
	 */
	public boolean checkName(String name) {
		Map<String, String> params = new HashMap<String, String>();
		params = new HashMap<String, String>();
		params.put("name", name);
		List<Group> groups = (List<Group>) dao.getGroups(params);
		if(groups.size() == 0)
			return true;
		return false;
	}
	/**
	 * 创建用户组
	 * @param newUserGroup
	 */
	public void createNewGroup(Group newGroup) {
		dao.createNewGroup(newGroup);
	}
	/**
	 * 获取用户组详细信息
	 * @param params
	 * @return
	 */
	public Group getGroupDetail(Map<String, String> params) {
		return dao.getGroupDetail(params);
	}
	/**
	 * 删除用户组
	 * @param groupUniqueName
	 */
	public void deleteGroup(String groupUniqueName) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("groupUniqueName", groupUniqueName);
		dao.deleteGroup(params);
	}
	/**
	 * 查询用户组列表
	 * @param params
	 * @return
	 */
	public List<Group> getGroups(Map<String, String> params) {
		return dao.getGroups(params);
	}
	
	public List<User> getUsersByGroupUniqueName(String uniqueName){
		Map<String, String> params = new HashMap<String, String>();
		params.put("uniqueName", uniqueName);
		return userGroupDao.getUsersByGroupUniqueName(params);
	}

	/**
	 * 检查当前用户是否已在组中
	 * @param groupUniqueName
	 * @param user
	 * @return
	 */
	public boolean checkUserGroupIsExist(String groupUniqueName, String user) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("groupUniqueName", groupUniqueName);
		params.put("user", user);
		System.err.println(userGroupDao.checkUserGroupIsExist(params));
		if(userGroupDao.checkUserGroupIsExist(params) == 0)
			return true;
		return false;
	}

	/**
	 * 添加用户到用户组
	 * @param groupUniqueName
	 * @param user
	 */
	public void addUserToGroup(String groupUniqueName, String user) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("groupUniqueName", groupUniqueName);
		params.put("user", user);
		userGroupDao.createNewUserGroup(params);
	}

	/**
	 * 从用户组中删除用户
	 * @param groupUniqueName
	 * @param users
	 */
	public void deleteUserFromGroup(String groupUniqueName, String[] users) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("groupUniqueName", groupUniqueName);
		for (String user : users) {
			params.put("userUniqueName", user);
			userGroupDao.deleteUserFromGroup(params);
		}
	}

	/**
	 * 删除所有组id匹配的数据
	 * @param groupUniqueName
	 */
	public void deleteUserGroupByGroupUniqueName(String groupUniqueName) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("groupUniqueName", groupUniqueName);
		userGroupDao.deleteUserGroupByGroupUniqueName(params);
	}
}
