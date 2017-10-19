package com.ProcurementSystem.entity;

public class TemplateTaskTreeNode {
	private	Integer	id	;
	private	Integer	parentId	;
	private	String	title	;
	private	String	description	;
	private	String	reserveContent	;
	private	String	rank	;
	private	Integer	isDuped	;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getReserveContent() {
		return reserveContent;
	}
	public void setReserveContent(String reserveContent) {
		this.reserveContent = reserveContent;
	}
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public Integer getIsDuped() {
		return isDuped;
	}
	public void setIsDuped(Integer isDuped) {
		this.isDuped = isDuped;
	}
	
}
