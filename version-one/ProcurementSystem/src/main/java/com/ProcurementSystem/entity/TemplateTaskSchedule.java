package com.ProcurementSystem.entity;

public class TemplateTaskSchedule {

	private Integer id;
	private String title;
	private String owner;
	private String watcher;
	private String ddl;
	private String isMilestone;
	private String isMust;
	private String setField;
	private String preTask;
	private String rank;
	private String description;
	private String status;

	public String getSetField() {
		return setField;
	}

	public void setSetField(String setField) {
		this.setField = setField;
	}

	public String getPreTask() {
		return preTask;
	}

	public void setPreTask(String preTask) {
		this.preTask = preTask;
	}

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

	public String getOwner() {
		return owner;
	}

	public void setOwner(String owner) {
		this.owner = owner;
	}

	public String getWatcher() {
		return watcher;
	}

	public void setWatcher(String watcher) {
		this.watcher = watcher;
	}

	public String getDdl() {
		return ddl;
	}

	public void setDdl(String ddl) {
		this.ddl = ddl;
	}

	public String getIsMilestone() {
		return isMilestone;
	}

	public void setIsMilestone(String isMilestone) {
		this.isMilestone = isMilestone;
	}

	public String getIsMust() {
		return isMust;
	}

	public void setIsMust(String isMust) {
		this.isMust = isMust;
	}

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
