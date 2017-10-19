package com.ProcurementSystem.dto;

import java.util.List;

import com.ProcurementSystem.entity.Supplier;

public class ISupplierDto {
	private int pageId;
	private String content;
	private List<Supplier> suppliers;
	public int getPageId() {
		return pageId;
	}
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<Supplier> getSuppliers() {
		return suppliers;
	}
	public void setSuppliers(List<Supplier> suppliers) {
		this.suppliers = suppliers;
	}
	
}
