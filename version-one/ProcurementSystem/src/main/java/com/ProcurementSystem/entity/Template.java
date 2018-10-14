package com.ProcurementSystem.entity;

import java.io.Serializable;

public class Template implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private	Integer	id;
	private	String	name;
	private	String	description;
	private	String 	type;
	private String  owner;
	private TemplateTaskTreeNode templateTaskTreeNode;
	private String status;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public TemplateTaskTreeNode getTemplateTaskTreeNode() {
		return templateTaskTreeNode;
	}
	public void setTemplateTaskTreeNode(TemplateTaskTreeNode templateTaskTreeNode) {
		this.templateTaskTreeNode = templateTaskTreeNode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	
	
}
