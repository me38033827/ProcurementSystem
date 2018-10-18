package com.ProcurementSystem.common;

import java.util.LinkedList;
import java.util.List;


public class NavTreeNode {
	private String name;
	private String spscCode;
	private int quantity;// 当前分类下的商品数
	private NavTreeNode parentNode;
	private List<NavTreeNode> childList;

	public NavTreeNode() {
		childList = new LinkedList<NavTreeNode>();
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSpscCode() {
		return spscCode;
	}

	public void setSpscCode(String spscCode) {
		this.spscCode = spscCode;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public NavTreeNode getParentNode() {
		return parentNode;
	}

	public void setParentNode(NavTreeNode parentNode) {
		this.parentNode = parentNode;
	}

	public List<NavTreeNode> getChildList() {
		return childList;
	}

	public void setChildList(List<NavTreeNode> childList) {
		this.childList = childList;
	}

}