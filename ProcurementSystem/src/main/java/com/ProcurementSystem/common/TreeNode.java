package com.ProcurementSystem.common;

import java.util.LinkedList;
import java.util.List;


public class TreeNode {
	private String name;
	private String spscCode;
	private int quantity;// 当前分类下的商品数
	private TreeNode parentNode;
	private List<TreeNode> childList;

	public TreeNode() {
		childList = new LinkedList<TreeNode>();
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

	public TreeNode getParentNode() {
		return parentNode;
	}

	public void setParentNode(TreeNode parentNode) {
		this.parentNode = parentNode;
	}

	public List<TreeNode> getChildList() {
		return childList;
	}

	public void setChildList(List<TreeNode> childList) {
		this.childList = childList;
	}

}