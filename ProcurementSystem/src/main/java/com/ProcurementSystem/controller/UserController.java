package com.ProcurementSystem.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.service.UserService;

@Controller
public class UserController {

	@Resource
	UserService service;
	
	@RequestMapping(value="userDetail")
	public String getUserDetail(HttpServletRequest request){
		String userIdentifier = "zhixuan";
		
		System.out.println("In user controller...");
		System.out.println("Start to searching details for user " + userIdentifier + "...");
		
		// get user detail from service
		User user = service.getUserDetail(userIdentifier);
		
		System.out.println("Back to user controller...");
		
		// set attributes for jsp
		request.setAttribute("userIdentifierBack", user.getUserIdentifier());
		request.setAttribute("definer", user.getDefiner());
		request.setAttribute("name", user.getName());
		request.setAttribute("type", user.getPasswordAdapter());
		request.setAttribute("organization", user.getOrganization());
		request.setAttribute("emailAddress", user.getEmailAddress());
		request.setAttribute("allowedExternalEmailDomain", user.getAllowedExternalEmailDomain());
		request.setAttribute("phone",user.getPhone());
		request.setAttribute("fax",user.getFax());
		request.setAttribute("locale", user.getLocale());
		request.setAttribute("timeZone", user.getTimeZone());
		request.setAttribute("currency", user.getDefaultCurrency());
		request.setAttribute("loginDate", user.getLoginDate());
		request.setAttribute("lastLogin", user.getLastLoginDate());
		request.setAttribute("supervisorName", user.getSupervisorName());
		request.setAttribute("alternateEmailAddress", user.getAlternateEmailAddresses());
		request.setAttribute("createDate", user.getCreateDate());
		request.setAttribute("lastModifyDate", user.getLastModifyDate());
		request.setAttribute("expireDate", user.getExpireDate());

		// test other data
		System.out.println("Time Zone " + user.getTimeZone());
		System.out.println("Unique name " + user.getUniqueName());
		System.out.println("上次失败后次数 " + user.getFailedLoginAttemptAfterLastLogin());
		System.out.println("login date " + user.getLoginDate());
		System.out.println("last login date " + user.getLastLoginDate());
		
		return "user/userDetail";
	}
}
