package com.ProcurementSystem.entity;

import java.util.ArrayList;
import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class CommodityCatalog {
	private String uniqueName;

	private Supplier supplier;// 暂时无法让框架只验证嵌套对象的某一个字段

	private ArrayList<Commodity> commodities = new ArrayList<>();

	@NotEmpty(message = "错误：不能为空")
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
	private Date lastModifyDate;
	private String version;

	// an补充字段
	private String clientName;
	private String fileName;
	private String fileSize;
	private String creator;
	private String isDisplayed;
	private String receivedDate;
	private String type;
	private String description;
	private String createDate;

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getClientName() {
		return clientName;
	}

	public void setClientName(String clientName) {
		this.clientName = clientName;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileSize() {
		return fileSize;
	}

	public void setFileSize(String fileSize) {
		this.fileSize = fileSize;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	public String getIsDisplayed() {
		return isDisplayed;
	}

	public void setIsDisplayed(String isDisplayed) {
		this.isDisplayed = isDisplayed;
	}

	public String getReceivedDate() {
		return receivedDate;
	}

	public void setReceivedDate(String receivedDate) {
		this.receivedDate = receivedDate;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getLastModifyDate() {
		return lastModifyDate;
	}

	public void setLastModifyDate(Date lastModifyDate) {
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

	public Date getLastModityDate() {
		return lastModifyDate;
	}

	public void setLastModityDate(Date lastModityDate) {
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
