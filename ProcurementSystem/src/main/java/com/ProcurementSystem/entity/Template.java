package com.ProcurementSystem.entity;

public class Template {
	private	Integer	id;
	private	String	name;
	private	String	description;
	private	String 	type;
	private TemplateTaskTreeNode templateTaskTreeNode;
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
	
	
}
