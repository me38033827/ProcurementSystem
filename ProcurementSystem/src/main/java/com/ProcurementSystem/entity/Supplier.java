package com.ProcurementSystem.entity;

import java.util.ArrayList;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

public class Supplier {
	
	private int uniqueName;
	private ArrayList<Commodity> commodities;
	private int contactUniqueName;
	@NotEmpty(message = "公司名称不能为空")
	private String name;
	private String country;
	private String city;
	private String contactFirst;
	private String contactLast;
	private String address1;
	private String address2;
	private String BU;
	private String NDA;
	private String isSupplier;
	private String isClient;
	private String description;
	private String approveState;
	private String otherName1;
	private String otherName2;
	private String fullNameByLaw;
	private String stockCode;
	private String province;
	@NotEmpty(message = "总机不能为空")
	private String switchboard;
	@NotEmpty(message = "电子邮件地址不能为空")
	@Email(message = "请输入合法的电子邮件地址，如：zhangsan@126.com")
	private String mainEmail;
	private String UNSPSCCommodity;
	private String duns;
	private String otherAddress;
	private String mainFax;
	private String corporateUrl;
	private String organizationType;
	private String parentValue;
	private User creator;
	private String manage;
	private String postCode;
	private String district;
	private String mainFaxZone;
	private String switchboardZone;
	private TemplateTaskTreeNode templateTaskTreeNode;
	
	public String getCity(){
		return city;
	}
	
	public void setCity(String city){
		this.city=city;
	}
	public String getCountry(){
		//return UNSPSCCommodity;
		return country;
	}
public void setCountry(String country){
	this.country=country;
}

	public int getUniqueName() {
		return uniqueName;
	}

	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
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

	public String getIsSupplier() {
		return isSupplier;
	}

	public void setIsSupplier(String isSupplier) {
		this.isSupplier = isSupplier;
	}

	public String getIsClient() {
		return isClient;
	}

	public void setIsClient(String isClient) {
		this.isClient = isClient;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getApproveState() {
		return approveState;
	}

	public void setApproveState(String approveState) {
		this.approveState = approveState;
	}

	public String getOtherName1() {
		return otherName1;
	}

	public void setOtherName1(String otherName1) {
		this.otherName1 = otherName1;
	}

	public String getOtherName2() {
		return otherName2;
	}

	public void setOtherName2(String otherName2) {
		this.otherName2 = otherName2;
	}

	public String getFullNameByLaw() {
		return fullNameByLaw;
	}

	public void setFullNameByLaw(String fullNameByLaw) {
		this.fullNameByLaw = fullNameByLaw;
	}

	public String getStockCode() {
		return stockCode;
	}

	public void setStockCode(String stockCode) {
		this.stockCode = stockCode;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getSwitchboard() {
		return switchboard;
	}

	public void setSwitchboard(String switchboard) {
		this.switchboard = switchboard;
	}

	public String getMainEmail() {
		return mainEmail;
	}

	public void setMainEmail(String mainEmail) {
		this.mainEmail = mainEmail;
	}

	public String getUNSPSCCommodity() {
		return UNSPSCCommodity;
	}

	public void setUNSPSCCommodity(String uNSPSCCommodity) {
		UNSPSCCommodity = uNSPSCCommodity;
	}

	public String getDuns() {
		return duns;
	}

	public void setDuns(String duns) {
		this.duns = duns;
	}

	public String getOtherAddress() {
		return otherAddress;
	}

	public void setOtherAddress(String otherAddress) {
		this.otherAddress = otherAddress;
	}

	public String getMainFax() {
		return mainFax;
	}

	public void setMainFax(String mainFax) {
		this.mainFax = mainFax;
	}

	public String getParentValue() {
		return parentValue;
	}

	public void setParentValue(String parentValue) {
		this.parentValue = parentValue;
	}

	public String getManage() {
		return manage;
	}

	public void setManage(String manage) {
		this.manage = manage;
	}

	public int getContactUniqueName() {
		return contactUniqueName;
	}

	public void setContactUniqueName(int contactUniqueName) {
		this.contactUniqueName = contactUniqueName;
	}

	public String getCorporateUrl() {
		return corporateUrl;
	}

	public void setCorporateUrl(String corporateUrl) {
		this.corporateUrl = corporateUrl;
	}

	public String getOrganizationType() {
		return organizationType;
	}

	public void setOrganizationType(String organizationType) {
		this.organizationType = organizationType;
	}

	public String getPostCode() {
		return postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address) {
		this.address1 = address;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getMainFaxZone() {
		return mainFaxZone;
	}

	public void setMainFaxZone(String mainFaxZone) {
		this.mainFaxZone = mainFaxZone;
	}

	public String getSwitchboardZone() {
		return switchboardZone;
	}

	public void setSwitchboardZone(String switchboardZone) {
		this.switchboardZone = switchboardZone;
	}

	public User getCreator() {
		return creator;
	}

	public void setCreator(User creator) {
		this.creator = creator;
	}

	public TemplateTaskTreeNode getTemplateTaskTreeNode() {
		return templateTaskTreeNode;
	}

	public void setTemplateTaskTreeNode(TemplateTaskTreeNode templateTaskTreeNode) {
		this.templateTaskTreeNode = templateTaskTreeNode;
	}


	public String getContactFirst() {
		return contactFirst;
	}

	public void setContactFirst(String contactFirst) {
		this.contactFirst = contactFirst;
	}

	public String getContactLast() {
		return contactLast;
	}

	public void setContactLast(String contactLast) {
		this.contactLast = contactLast;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getBU() {
		return BU;
	}

	public void setBU(String bU) {
		BU = bU;
	}

	public String getNDA() {
		return NDA;
	}

	public void setNDA(String nDA) {
		NDA = nDA;
	}

}
