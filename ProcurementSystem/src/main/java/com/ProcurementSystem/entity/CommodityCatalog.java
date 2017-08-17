package com.ProcurementSystem.entity;

public class CommodityCatalog {
	private int uniqueName;
	private int supplierUniqueName;
	private int commodityUniqueName;
	private String name;
	private String isCreateEmptyContent;
	private String isIgnoreApprove;
	private String isStopBeforeApprove;
	private String isAutoActivate;
	private String isAllowMultiSupplierCIF;
	private String level;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public int getSupplierUniqueName() {
		return supplierUniqueName;
	}
	public void setSupplierUniqueName(int supplierUniqueName) {
		this.supplierUniqueName = supplierUniqueName;
	}
	public int getCommodityUniqueName() {
		return commodityUniqueName;
	}
	public void setCommodityUniqueName(int commodityUniqueName) {
		this.commodityUniqueName = commodityUniqueName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIsCreateEmptyContent() {
		return isCreateEmptyContent;
	}
	public void setIsCreateEmptyContent(String isCreateEmptyContent) {
		this.isCreateEmptyContent = isCreateEmptyContent;
	}
	public String getIsIgnoreApprove() {
		return isIgnoreApprove;
	}
	public void setIsIgnoreApprove(String isIgnoreApprove) {
		this.isIgnoreApprove = isIgnoreApprove;
	}
	public String getIsStopBeforeApprove() {
		return isStopBeforeApprove;
	}
	public void setIsStopBeforeApprove(String isStopBeforeApprove) {
		this.isStopBeforeApprove = isStopBeforeApprove;
	}
	public String getIsAutoActivate() {
		return isAutoActivate;
	}
	public void setIsAutoActivate(String isAutoActivate) {
		this.isAutoActivate = isAutoActivate;
	}
	public String getIsAllowMultiSupplierCIF() {
		return isAllowMultiSupplierCIF;
	}
	public void setIsAllowMultiSupplierCIF(String isAllowMultiSupplierCIF) {
		this.isAllowMultiSupplierCIF = isAllowMultiSupplierCIF;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	
}
