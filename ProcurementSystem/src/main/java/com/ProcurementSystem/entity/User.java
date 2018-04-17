package com.ProcurementSystem.entity;

import java.util.List;

public class User {
	private	int	uniqueName	;
	private	List<Group>	groups	;
	private	String	definer	;
	private	String	passwordAdapter	;
	private	String	name	;
	private	String	userIdentifier	;
	private	String	status	;
	private	String	emailAddress	;
	private	String	allowedExternalEmailDomain	;
	private	String	defaultCurrency	;
	private	String	locale	;
	private	String	timeZone	;
	private	String	phone	;
	private	String	fax	;
	private	int	failedLoginAttemptAfterLastLogin	;
	private	String	loginDate	;
	private	String	lastLoginDate	;
	private	String	supervisorName	;
	private	String	alternateEmailAddresses	;
	private	String 	createDate	;
	private	String	lastModifyDate	;
	private	String	expireDate	;
	private String  role  ;
	private String  username  ;
	private String  password  ;
	public int getUniqueName() {
		return uniqueName;
	}
	public void setUniqueName(int uniqueName) {
		this.uniqueName = uniqueName;
	}
	public List<Group> getGroups() {
		return groups;
	}
	public void setGroups(List<Group> groups) {
		this.groups = groups;
	}
	public String getDefiner() {
		return definer;
	}
	public void setDefiner(String definer) {
		this.definer = definer;
	}
	public String getPasswordAdapter() {
		return passwordAdapter;
	}
	public void setPasswordAdapter(String passwordAdapter) {
		this.passwordAdapter = passwordAdapter;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserIdentifier() {
		return userIdentifier;
	}
	public void setUserIdentifier(String userIdentifier) {
		this.userIdentifier = userIdentifier;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getAllowedExternalEmailDomain() {
		return allowedExternalEmailDomain;
	}
	public void setAllowedExternalEmailDomain(String allowedExternalEmailDomain) {
		this.allowedExternalEmailDomain = allowedExternalEmailDomain;
	}
	public String getDefaultCurrency() {
		return defaultCurrency;
	}
	public void setDefaultCurrency(String defaultCurrency) {
		this.defaultCurrency = defaultCurrency;
	}
	public String getLocale() {
		return locale;
	}
	public void setLocale(String locale) {
		this.locale = locale;
	}
	public String getTimeZone() {
		return timeZone;
	}
	public void setTimeZone(String timeZone) {
		this.timeZone = timeZone;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public int getFailedLoginAttemptAfterLastLogin() {
		return failedLoginAttemptAfterLastLogin;
	}
	public void setFailedLoginAttemptAfterLastLogin(int failedLoginAttemptAfterLastLogin) {
		this.failedLoginAttemptAfterLastLogin = failedLoginAttemptAfterLastLogin;
	}
	public String getLoginDate() {
		return loginDate;
	}
	public void setLoginDate(String loginDate) {
		this.loginDate = loginDate;
	}
	public String getLastLoginDate() {
		return lastLoginDate;
	}
	public void setLastLoginDate(String lastLoginDate) {
		this.lastLoginDate = lastLoginDate;
	}
	public String getSupervisorName() {
		return supervisorName;
	}
	public void setSupervisorName(String supervisorName) {
		this.supervisorName = supervisorName;
	}
	public String getAlternateEmailAddresses() {
		return alternateEmailAddresses;
	}
	public void setAlternateEmailAddresses(String alternateEmailAddresses) {
		this.alternateEmailAddresses = alternateEmailAddresses;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getLastModifyDate() {
		return lastModifyDate;
	}
	public void setLastModifyDate(String lastModifyDate) {
		this.lastModifyDate = lastModifyDate;
	}
	public String getExpireDate() {
		return expireDate;
	}
	public void setExpireDate(String expireDate) {
		this.expireDate = expireDate;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [uniqueName=" + uniqueName + ", groups=" + groups + ", definer=" + definer + ", passwordAdapter="
				+ passwordAdapter + ", name=" + name + ", userIdentifier=" + userIdentifier + ", status="
				+ status + ", emailAddress=" + emailAddress + ", allowedExternalEmailDomain="
				+ allowedExternalEmailDomain + ", defaultCurrency=" + defaultCurrency + ", locale=" + locale
				+ ", timeZone=" + timeZone + ", phone=" + phone + ", fax=" + fax + ", failedLoginAttemptAfterLastLogin="
				+ failedLoginAttemptAfterLastLogin + ", loginDate=" + loginDate + ", lastLoginDate=" + lastLoginDate
				+ ", supervisorName=" + supervisorName + ", alternateEmailAddresses=" + alternateEmailAddresses
				+ ", createDate=" + createDate + ", lastModifyDate=" + lastModifyDate + ", expireDate=" + expireDate
				+ ", username=" + username + ", password=" + password + "]";
	}
	
}
