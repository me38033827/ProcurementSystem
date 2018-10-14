package com.ProcurementSystem.dao;

import java.util.List;
import java.util.Map;
import com.ProcurementSystem.entity.Group;

/**
 * 用户组持久层接口
 * @CreateDate: 2018年4月4日 上午11:41:42
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月4日 lrq &amp; new
 */
public interface IBuyerGroupDao {

	/**
	 * 根据特定参数查询相应用户组信息
	 * @param params
	 * @return
	 */
	Group getGroupDetail(Map<String, String> params);
	/**
	 * 新建用户组
	 * @param userGroup
	 */
	void createNewGroup(Group group);
	/**
	 * 查询用户组列表
	 * @param params
	 * @return
	 */
	List<Group> getGroups(Map<String, String> params);
	
	
	void deleteGroup(Map<String, String> params);
}
