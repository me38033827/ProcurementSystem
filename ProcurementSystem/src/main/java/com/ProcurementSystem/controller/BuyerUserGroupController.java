package com.ProcurementSystem.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.entity.UserGroup;
import com.ProcurementSystem.service.BuyerUserGroupService;
import com.ProcurementSystem.service.BuyerUserService;

/**
 * 用户组控制层
 * @CreateDate: 2018年4月4日 上午10:33:23
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月4日 lrq &amp; new
 */
@Controller
@RequestMapping("userGroup")
public class BuyerUserGroupController {

	Logger logger = LoggerFactory.getLogger(BuyerUserGroupController.class);
	
	@Resource
	BuyerUserService userService;
	@Resource
	BuyerUserGroupService userGroupService;
	
	/**
	 * 跳转到创建用户组页面
	 * @return
	 */
	@RequestMapping(value="userGroupCreation")
	public String userGroupCreation() {
		return "userGroup/userGroupCreation";
	}
	
	/**
	 * 创建用户组的保存操作
	 * @param newUser
	 * @return
	 */
	@RequestMapping(value="userGroupCreationSubmit")
	public @ResponseBody Map<String, String> userGroupCreationSubmit(UserGroup newUserGroup){
		/**
		 * 关于前台传入中文乱码问题，需要把本机tomcat的server.xml编码改为UTF-8。
		 */
		HashMap<String, String> result = new HashMap<String,String>();
		// check whether userGroup exists
		if(Objects.equals(newUserGroup.getName(), "null")) {
			result.put("result", "用户组名称不能为空！");
			return result;
		}
		if(!userGroupService.checkName(newUserGroup.getName())){
			logger.info("UserGroup " + newUserGroup.getName() + " has already exists.");
			result.put("result", "该用户组已存在！");
			return result;
		}
		// add new userGroup
		userGroupService.createNewUserGroup(newUserGroup);
		result.put("result", "保存成功！");
		return result;
	}
	
	/**
	 * 跳转到用户组管理
	 * @return
	 */
	@RequestMapping(value="userGroupSearching")
	public String userGroupSearching(@RequestParam(required = false) String name,
								@RequestParam(required = false) String description,
								Model model){
			Map<String, String> params = new HashMap<String, String>();
			params.put("name", name);
			params.put("description", description);
			List<UserGroup> userGroups = userGroupService.getUserGroups(params);
			model.addAttribute("userGroups", userGroups);
		return "userGroup/userGroupSearching";
	}
	
	/**
	 * 跳转到用户组详情
	 * @param request
	 * @return
	 */
	@RequestMapping(value="userGroupDetail")
	public String getUserGroupDetail(@RequestParam(required=false) String name, HttpServletRequest request){
		// get user detail from service
		Map<String, String> params = new HashMap<String, String>();
		params.put("name", name);
		UserGroup userGroup = userGroupService.getUserGroupDetail(params);
		// set attributes for jsp
		request.setAttribute("name", userGroup.getName());
		request.setAttribute("description", userGroup.getDescription());
		request.setAttribute("difiner", userGroup.getDifiner());
		return "userGroup/userGroupDetail";
	}
}
