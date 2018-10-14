package com.ProcurementSystem.entity;

import java.util.List;

public class TemplateTreeNode {
	private Integer id;
	private Integer parentId;
	private Template template;
	private TemplateFolder templateFolder;
	private Integer type;
	private List<TemplateTreeNode> children;
	private String owner;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Template getTemplate() {
		return template;
	}

	public void setTemplate(Template template) {
		this.template = template;
	}

	public TemplateFolder getTemplateFolder() {
		return templateFolder;
	}

	public void setTemplateFolder(TemplateFolder templateFolder) {
		this.templateFolder = templateFolder;
	}

	public List<TemplateTreeNode> getChildren() {
		return children;
	}

	public void setChildren(List<TemplateTreeNode> children) {
		this.children = children;
	}

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}
	
}
