package com.ProcurementSystem.entity;

import java.util.List;

public class SupplierSIM {
	private int id;
	private int type;
	private String title;
	private String description;
	private int answerType;
	private String initialAnswer;
	private int multipleValue;
	private int acceptValue;
	private int visibleToParticipants;
	private int groupRestriction;
	private List<SupplierSIMSelection> selections;
	private int must;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
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
	public int getAnswerType() {
		return answerType;
	}
	public void setAnswerType(int answerType) {
		this.answerType = answerType;
	}
	public String getInitialAnswer() {
		return initialAnswer;
	}
	public void setInitialAnswer(String initialAnswer) {
		this.initialAnswer = initialAnswer;
	}
	public int getMultipleValue() {
		return multipleValue;
	}
	public void setMultipleValue(int multipleValue) {
		this.multipleValue = multipleValue;
	}
	public int getAcceptValue() {
		return acceptValue;
	}
	public void setAcceptValue(int acceptValue) {
		this.acceptValue = acceptValue;
	}
	public int getVisibleToParticipants() {
		return visibleToParticipants;
	}
	public void setVisibleToParticipants(int visibleToParticipants) {
		this.visibleToParticipants = visibleToParticipants;
	}
	public int getGroupRestriction() {
		return groupRestriction;
	}
	public void setGroupRestriction(int groupRestriction) {
		this.groupRestriction = groupRestriction;
	}
	public List<SupplierSIMSelection> getSelections() {
		return selections;
	}
	public void setSelections(List<SupplierSIMSelection> selections) {
		this.selections = selections;
	}
	public int getMust() {
		return must;
	}
	public void setMust(int must) {
		this.must = must;
	}
	
}
