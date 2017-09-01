package com.ProcurementSystem.entity;

public class Login {
	private String username;
	private String password;
	private String role;
	private int supplierUniqueName;
	private int userUniqueName;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getSupplierUniqueName() {
		return supplierUniqueName;
	}
	public void setSupplierUniqueName(int supplierUniqueName) {
		this.supplierUniqueName = supplierUniqueName;
	}
	public int getUserUniqueName() {
		return userUniqueName;
	}
	public void setUserUniqueName(int userUniqueName) {
		this.userUniqueName = userUniqueName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
