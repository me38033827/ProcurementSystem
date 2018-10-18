package com.ProcurementSystem.entity;

/**
 * 用户-用户组实体类
 * @CreateDate: 2018年4月5日 上午10:44:47
 * @author lrq
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月5日 lrq &amp; new
 */
public class UserGroup {
	/** id */
	private int id;
	/** 用户id */
	private int userId;
	/** 组id */
	private int groupId;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getGroupId() {
		return groupId;
	}

	public void setGroupId(int groupId) {
		this.groupId = groupId;
	}

	@Override
	public String toString() {
		return "UserGroup [id=" + id + ", userId=" + userId + ", groupId=" + groupId + "]";
	}
	
}
