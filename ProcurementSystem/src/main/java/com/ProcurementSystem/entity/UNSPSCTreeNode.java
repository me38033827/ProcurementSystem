package com.ProcurementSystem.entity;

import java.util.List;

public class UNSPSCTreeNode {

	private int id;
	private String description;
	private List<UNSPSCTreeNode> children;
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
	public List<UNSPSCTreeNode> getChildren() {
		return children;
	}
	public void setChildren(List<UNSPSCTreeNode> children) {
		this.children = children;
	}
	
}
