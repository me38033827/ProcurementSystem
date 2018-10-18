package com.ProcurementSystem.dto;

import java.util.Arrays;

/**
 * javaBean 用来接收添加或删除用户-用户组的参数
 * @CreateDate: 2018年4月5日 下午8:54:49
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月5日 lrq &amp; new
 */
public class UserGroupBean {

	/* 当前组唯一名称 */
	private String[] groups;
	
	/* 要操作的用户id集合 */
	private String[] users;

	public String[] getGroups() {
		return groups;
	}

	public void setGroups(String[] groups) {
		this.groups = groups;
	}

	public String[] getUsers() {
		return users;
	}

	public void setUsers(String[] users) {
		this.users = users;
	}

	@Override
	public String toString() {
		return "UserGroupBean [groups=" + Arrays.toString(groups) + ", users=" + Arrays.toString(users) + "]";
	}

}
