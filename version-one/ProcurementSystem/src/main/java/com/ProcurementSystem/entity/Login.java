package com.ProcurementSystem.entity;

import javax.validation.Valid;

import org.hibernate.validator.constraints.NotEmpty;

public class Login {
	@NotEmpty(message="用户名不能为空")
	private String username;
	@NotEmpty(message="密码不能为空")
	private String password;
	private String role;
	@Valid
	private 	Supplier supplier;
	private User user;

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
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
