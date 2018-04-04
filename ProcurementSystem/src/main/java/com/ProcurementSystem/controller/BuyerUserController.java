package com.ProcurementSystem.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.service.BuyerUserService;

@Controller
public class BuyerUserController {

	@Resource
	BuyerUserService service;
	
	/**
	 * 跳转到创建用户页面
	 * @return
	 */
	@RequestMapping(value="userCreation")
	public String userCreation() {
		return "user/userCreation";
	}
	
	/**
	 * 创建用户的保存操作
	 * @param newUser
	 * @return
	 */
	@RequestMapping(value="userCreationSubmit")
	public @ResponseBody Map<String, String> userCreationSubmit(User newUser){
		/**
		 * 关于前台传入中文乱码问题，需要把本机tomcat的server.xml编码改为UTF-8。
		 */
		HashMap<String, String> result = new HashMap<String,String>();
		// check whether user exists
		boolean serviceResult = service.checkName(newUser.getUserIdentifier(), newUser.getPasswordAdapter());
		if(serviceResult == true){
			System.out.println("User " + newUser.getUserIdentifier() + " has already exists.");
			result.put("result", "该用户已存在！");
			return result;
		}
		// add new user
		service.createNewUser(newUser);
		result.put("result", "保存成功！");
		return result;
	}
	
	/**
	 * 跳转到用户管理
	 * @return
	 */
	@RequestMapping(value="userSearching")
	public String userSearching(@RequestParam(required = false) String passwordAdapter,
								@RequestParam(required = false) String userIdentifier,
								@RequestParam(required = false) String userName,
								Model model){
		Map<String, String> params = new HashMap<String, String>();
		params.put("passwordAdapter", passwordAdapter);
		params.put("userIdentifier", userIdentifier);
		params.put("userName", userName);
		List<User> users = service.getUsers(params);
		model.addAttribute("users", users);
		return "user/userSearching";
	}
	
	/**
	 * 跳转到用户详情
	 * @param request
	 * @return
	 */
	@RequestMapping(value="userDetail")
	public String getUserDetail(@RequestParam(required=false) String userUniqueName, HttpServletRequest request){
		// get user detail from service
		User user = service.getUserDetail(userUniqueName);
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
		/*System.out.println("Time Zone " + user.getTimeZone());
		System.out.println("Unique name " + user.getUniqueName());
		System.out.println("上次失败后次数 " + user.getFailedLoginAttemptAfterLastLogin());
		System.out.println("login date " + user.getLoginDate());
		System.out.println("last login date " + user.getLastLoginDate());*/
		
		return "user/userDetail";
	}
}
