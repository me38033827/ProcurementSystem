package com.ProcurementSystem.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ProcurementSystem.dao.IBuyerUserGroupDao;
import com.ProcurementSystem.entity.UserGroup;

/**
 * 用户组业务层
 * @CreateDate: 2018年4月4日 上午10:41:04
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月4日 lrq &amp; new
 */
@Service
public class BuyerUserGroupService {

	@Autowired
	IBuyerUserGroupDao dao;
	
	Map<String, String> params = null;
	/**
	 * 检测该用户组是否已存在
	 * @param name
	 * @return
	 */
	public boolean checkName(String name) {
		params = new HashMap<String, String>();
		params.put("name", name);
		List<UserGroup> groups = (List<UserGroup>) dao.getUserGroupDetail(params);
		System.err.println(groups.size());
		if(groups.size() == 0)
			return true;
		return false;
	}

	/**
	 * 创建用户组
	 * @param newUserGroup
	 */
	public void createNewUserGroup(UserGroup newUserGroup) {
		dao.createNewUserGroup(newUserGroup);
	}
	
	/**
	 * 获取用户组详细信息
	 * @param params
	 * @return
	 */
	public UserGroup getUserGroupDetail(Map<String, String> params) {
		return dao.getUserGroupDetail(params);
	}
	
	/**
	 * 查询用户组列表
	 * @param params
	 * @return
	 */
	public List<UserGroup> getUserGroups(Map<String, String> params) {
		return dao.getUserGroups(params);
	}
}
