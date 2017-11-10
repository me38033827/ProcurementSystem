package com.ProcurementSystem.entity;

import javax.validation.Valid;

import org.hibernate.validator.constraints.NotEmpty;

public class SupplierSQM {
	private int id;
	@Valid
	private Supplier supplier;
	@Valid
	private User user;
	@NotEmpty(message="项目名称不能为空")
	private String title;
	private String description;
	private String commodity;
	private String status;
	private String lastValid;
	private String validTo;
	private TemplateTaskTreeNode templateTaskTreeNode;
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
//	public int getSupplierId() {
//		return supplierId;
//	}
//	public void setSupplierId(int supplierId) {
//		this.supplierId = supplierId;
//	}
//	public int getUserId() {
//		return userId;
//	}
//	public void setUserId(int userId) {
//		this.userId = userId;
//	}
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
	public TemplateTaskTreeNode getTemplateTaskTreeNode() {
		return templateTaskTreeNode;
	}
	public void setTemplateTaskTreeNode(TemplateTaskTreeNode templateTaskTreeNode) {
		this.templateTaskTreeNode = templateTaskTreeNode;
	}
}
