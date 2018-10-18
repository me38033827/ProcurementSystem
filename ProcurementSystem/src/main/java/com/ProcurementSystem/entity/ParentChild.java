package com.ProcurementSystem.entity;

import java.util.List;

public class ParentChild {

	private int parent;
	
	private int child;
	
	private List<ParentChild> children;
	
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public List<ParentChild> getChildren() {
		return children;
	}
	public void setChildren(List<ParentChild> children) {
		this.children = children;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	
}
