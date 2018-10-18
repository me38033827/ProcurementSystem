package com.ProcurementSystem.controller;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ProcurementSystem.dto.UserGroupBean;
import com.ProcurementSystem.entity.Group;
import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.service.BuyerGroupService;
import com.ProcurementSystem.service.BuyerUserService;
import com.ProcurementSystem.service.LoginService;

@Controller
public class BuyerUserController {

	@Resource
	BuyerUserService service;
	@Resource
	LoginService loginService;
	@Resource
	BuyerGroupService groupService;
	
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
	@Transactional
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
		// add new user and add new login (transactional)
		try {
			Login login = new Login();
			login.setUsername(newUser.getUsername());
			login.setPassword(newUser.getPassword());
			login.setRole("buyer");
			if(service.checkName(newUser.getUserIdentifier(), newUser.getPasswordAdapter())) {
				result.put("result", "用户已存在！");
				return result;
			}
			if(loginService.getUsernameExistance(login)!=0){
				result.put("result", "登录账号已存在，请更换！");
				return result;
			}
			service.createNewUser(newUser);
			login.setUser(newUser);
			loginService.insertBuyserLogin(login);
		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "操作失败！");
			return result;
		}
		result.put("result", "保存成功！");
		return result;
	}
	
	/**
	 * 编辑用户的保存操作
	 * @param newUser
	 * @return
	 */
	@Transactional
	@RequestMapping(value="userEditSubmit")
	public @ResponseBody Map<String, String> userEditSubmit(User user){
		HashMap<String, String> result = new HashMap<String,String>();
		//用户名是否被修改
		boolean nameChanged = !Objects.equals(service.getUserDetail(user.getUniqueName()+"").getUserIdentifier(), user.getUserIdentifier());
		//类型被是否被修改
		boolean typeChanged = !Objects.equals(service.getUserDetail(user.getUniqueName()+"").getPasswordAdapter(), user.getPasswordAdapter());
		try {
			/** 用户名或者类型被修改后，验证新的用户名是否重复 */
			if((nameChanged || typeChanged)) {
				if(service.checkName(user.getUserIdentifier(), user.getPasswordAdapter())) {
					result.put("result", "用户名已存在！");
					return result;
				}
			}
			//update user
			service.updateUser(user);
		} catch (Exception e) {
			result.put("result", "操作失败！");
			e.printStackTrace();
			return result;
		}
		result.put("result", "修改成功！");
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
								@RequestParam(required = false) String param,
								Model model){
		Map<String, String> params = new HashMap<String, String>();
		params.put("passwordAdapter", passwordAdapter);
		params.put("userIdentifier", userIdentifier);
		params.put("userName", userName);
		List<User> users = service.getUsers(params);
		model.addAttribute("users", users);
		if(Objects.equals(param, null))
			return "user/userSearching";
		else
			return "group/selectUser";
	}

	
	/**
	 * 上级主管
	 * @return
	 */
	@RequestMapping(value="leaderSearching")
	public @ResponseBody Map<String, List<User>> leaderSearching(@RequestParam(required = false) String passwordAdapter,
																@RequestParam(required = false) String userIdentifier,
																@RequestParam(required = false) String userName){
		Map<String, String> params = new HashMap<String, String>();
		Map<String, List<User>> result = new HashMap<String, List<User>>();
		params.put("passwordAdapter", passwordAdapter);
		params.put("userIdentifier", userIdentifier);
		params.put("userName", userName);
		List<User> users = service.getUsers(params);
		result.put("users", users);
		return result;
	}
	
	/**
	 * 跳转到用户详情 或 用户编辑
	 * @param request
	 * @return
	 */
	@RequestMapping(value="userDetail")
	public String getUserDetail(@RequestParam(required=false) String userUniqueName,
								@RequestParam(required=false) String param,
								Model model){
		// get user detail from service
		User user = service.getUserDetail(userUniqueName);
		model.addAttribute(user);
		if(Objects.equals(param, "edit"))
			return "user/userEdit";
		else
			return "user/userDetail";
	}
	
	/**
	 * 当前用户所属用户组
	 * @param userUniqueName
	 * @param model
	 * @return
	 */
	@RequestMapping(value="userDetailGroup")
	public String getUserDetailGroup(@RequestParam(required=false) String userUniqueName, Model model){
		User user = new User();
		user.setGroups(service.getGroupsByUserUniqueName(userUniqueName));
		user.setUniqueName(Integer.parseInt(userUniqueName));
		model.addAttribute(user);
//		request.setAttribute("userUniqueName", userUniqueName);
		return "user/userDetailGroup";
	}
	/**
	 * 跳转到添加用户组页面
	 * @return
	 */
	@RequestMapping(value="selectGroup")
	public String selectGroups(@RequestParam(required=true) String uniqueName, Model model) {
		Map<String, String> params = new HashMap<String, String>();
		List<Group> groups = groupService.getGroups(params);
		model.addAttribute("userUniqueName", uniqueName);
		model.addAttribute("groups", groups);
		return "user/selectGroup";
	}
	
	/**
	 * 启用或停用账户
	 * @param uniqueName
	 * @return
	 */
	@RequestMapping(value="stopOrStartUse")
	public @ResponseBody Map<String, String> stopOrStartUse(String uniqueName) {
		Map<String, String> result = new HashMap<String, String>();
		System.err.println(uniqueName);
		User user = service.getUserDetail(uniqueName);
		if(Objects.equals(user.getStatus(), "已启用"))
			user.setStatus("已停用");
		else
			user.setStatus("已启用");
		try {
			service.updateUser(user);
		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "error");
			return result;
		}
		result.put("result", "success");
		return result;
	}
}
