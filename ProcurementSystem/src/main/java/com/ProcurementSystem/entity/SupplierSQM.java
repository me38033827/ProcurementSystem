package com.ProcurementSystem.entity;

import org.hibernate.validator.constraints.NotEmpty;

public class supplierSQM {
	private int id;
//	@NotEmpty(message="供应商不能为空")
	private int supplierId;
	private int userId;
//	private Supplier supplier;
//	private User user;
	@NotEmpty(message="项目名称不能为空")
	private String title;
	private String description;
	private String commodity;
	private String status;
	private String lastValid;
	private String validTo;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCommodity() {
		return commodity;
	}
	public void setCommodity(String commodity) {
		this.commodity = commodity;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLastValid() {
		return lastValid;
	}
	public void setLastValid(String lastValid) {
		this.lastValid = lastValid;
	}
	public String getValidTo() {
		return validTo;
	}
	public void setValidTo(String validTo) {
		this.validTo = validTo;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
}
