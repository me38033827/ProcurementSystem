package com.ProcurementSystem.entity;

import java.util.ArrayList;

import org.hibernate.validator.constraints.NotEmpty;

public class CommodityCatalog {
	private String uniqueName;
	
	
	private Supplier supplier;//暂时不验证
	
	private ArrayList<Commodity> commodities = new ArrayList<>();
	
	@NotEmpty(message="错误：不能为空")
	private String name;
	private String isCreateEmptyContent;
	private String isIgnoreApprove;
	private String isStopBeforeApprove;
	private String isAutoActivate;
	private String isAllowMultiSupplierCIF;
	private String level;
	private String loadMode;
	private String contentAbstract;
	private String preview;
	private String isActivated;
	private int itemCount;
	private String lastModifyDate;
	private String version;
	
	public String getLastModifyDate() {
		return lastModifyDate;
	}

	public void setLastModifyDate(String lastModifyDate) {
		this.lastModifyDate = lastModifyDate;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public String getLoadMode() {
		return loadMode;
	}

	public void setLoadMode(String loadMode) {
		this.loadMode = loadMode;
	}

	public String getContentAbstract() {
		return contentAbstract;
	}

	public void setContentAbstract(String contentAbstract) {
		this.contentAbstract = contentAbstract;
	}

	public String getPreview() {
		return preview;
	}

	public void setPreview(String preview) {
		this.preview = preview;
	}


	public String getIsActivated() {
		return isActivated;
	}

	public void setIsActivated(String isActivated) {
		this.isActivated = isActivated;
	}

	public int getItemCount() {
		return itemCount;
	}

	public void setItemCount(int itemCount) {
		this.itemCount = itemCount;
	}

	public String getLastModityDate() {
		return lastModifyDate;
	}

	public void setLastModityDate(String lastModityDate) {
		this.lastModifyDate = lastModityDate;
	}

	

	public String getUniqueName() {
		return uniqueName;
	}

	public void setUniqueName(String uniqueName) {
		this.uniqueName = uniqueName;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public ArrayList<Commodity> getCommodities() {
		return commodities;
	}

	public void setCommodities(ArrayList<Commodity> commodities) {
		this.commodities = commodities;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getIsCreateEmptyContent() {
		return isCreateEmptyContent;
	}

	public void setIsCreateEmptyContent(String isCreateEmptyContent) {
		this.isCreateEmptyContent = isCreateEmptyContent;
	}

	public String getIsIgnoreApprove() {
		return isIgnoreApprove;
	}

	public void setIsIgnoreApprove(String isIgnoreApprove) {
		this.isIgnoreApprove = isIgnoreApprove;
	}

	public String getIsStopBeforeApprove() {
		return isStopBeforeApprove;
	}

	public void setIsStopBeforeApprove(String isStopBeforeApprove) {
		this.isStopBeforeApprove = isStopBeforeApprove;
	}

	public String getIsAutoActivate() {
		return isAutoActivate;
	}

	public void setIsAutoActivate(String isAutoActivate) {
		this.isAutoActivate = isAutoActivate;
	}

	public String getIsAllowMultiSupplierCIF() {
		return isAllowMultiSupplierCIF;
	}

	public void setIsAllowMultiSupplierCIF(String isAllowMultiSupplierCIF) {
		this.isAllowMultiSupplierCIF = isAllowMultiSupplierCIF;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

}
