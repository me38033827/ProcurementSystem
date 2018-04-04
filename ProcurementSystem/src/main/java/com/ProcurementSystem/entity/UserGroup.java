package com.ProcurementSystem.entity;

import java.util.ArrayList;

public class UserGroup {
	private	int	uniqueName	;
	private	ArrayList<User>	users	;
	private	String	description	;
	private	String	name	;
	private String  difiner ;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public ArrayList<User> getUsers() {
		return users;
	}
	public void setUsers(ArrayList<User> users) {
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
	
}
