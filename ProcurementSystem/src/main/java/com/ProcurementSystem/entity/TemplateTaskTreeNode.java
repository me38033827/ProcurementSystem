package com.ProcurementSystem.entity;

import java.util.List;

public class TemplateTaskTreeNode {
	private Integer id;
	private Integer parentId;
	private Integer type;
	private TemplateTaskPhase templateTaskPhase;
	private TemplateTaskSchedule templateTaskSchedule;
	private List<TemplateTaskTreeNode> children;

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

	public TemplateTaskPhase getTemplateTaskPhase() {
		return templateTaskPhase;
	}

	public void setTemplateTaskPhase(TemplateTaskPhase templateTaskPhase) {
		this.templateTaskPhase = templateTaskPhase;
	}

	public TemplateTaskSchedule getTemplateTaskSchedule() {
		return templateTaskSchedule;
	}

	public void setTemplateTaskSchedule(TemplateTaskSchedule templateTaskSchedule) {
		this.templateTaskSchedule = templateTaskSchedule;
	}

	public List<TemplateTaskTreeNode> getChildren() {
		return children;
	}

	public void setChildren(List<TemplateTaskTreeNode> children) {
		this.children = children;
	}

}
