package com.ProcurementSystem.entity;

import java.util.List;

public class Group {
	private	int	uniqueName	;
	private	List<User>	users	;
	private	String	description	;
	private	String	name	;
	private String  difiner ;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDifiner() {
		return difiner;
	}
	public void setDifiner(String difiner) {
		this.difiner = difiner;
	}
	@Override
	public String toString() {
		return "Group [uniqueName=" + uniqueName + ", users=" + users + ", description=" + description + ", name="
				+ name + ", difiner=" + difiner + "]";
	}
}
