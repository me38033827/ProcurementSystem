package com.ProcurementSystem.entity;

public class TemplateTaskPhase {
	private Integer id;
	private String title;
	private String description;
	private String reserveContent;
	private String rank;
	private String isDuped;
	private String status;
	private String owner;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
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

	public String getIsDuped() {
		return isDuped;
	}

	public void setIsDuped(String isDuped) {
		this.isDuped = isDuped;
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
