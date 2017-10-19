package com.ProcurementSystem.entity;

import java.util.List;

public class SIMTreeNode {

	private SupplierSIM supplierSIM;
	private Integer type;
	private Integer order;
	private String number;
	private List<SIMTreeNode> children;

	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public List<SIMTreeNode> getChildren() {
		return children;
	}
	public void setChildren(List<SIMTreeNode> children) {
		this.children = children;
	}
	public SupplierSIM getSupplierSIM() {
		return supplierSIM;
	}
	public void setSupplierSIM(SupplierSIM supplierSIM) {
		this.supplierSIM = supplierSIM;
	}
	public Integer getOrder() {
		return order;
	}
	public void setOrder(Integer order) {
		this.order = order;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}

}
