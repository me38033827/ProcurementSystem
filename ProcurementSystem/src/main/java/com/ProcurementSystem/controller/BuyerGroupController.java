package com.ProcurementSystem.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.dto.UserGroupBean;
import com.ProcurementSystem.entity.Group;
import com.ProcurementSystem.service.BuyerGroupService;
import com.ProcurementSystem.service.BuyerUserService;

/**
 * 用户组控制层
 * @CreateDate: 2018年4月4日 上午10:33:23
 * @author lrq <279377616@qq.com>
 * @history Sr Date Modified By Why &amp; What is modified
 *   1.2018年4月4日 lrq &amp; new
 */
@Controller
@RequestMapping("group")
public class BuyerGroupController {

	Logger logger = LoggerFactory.getLogger(BuyerGroupController.class);
	
	@Resource
	private BuyerGroupService groupService;
	@Resource
	private BuyerUserService userService;
	
	/**
	 * 跳转到创建用户组页面
	 * @return
	 */
	@RequestMapping(value="groupCreation")
	public String groupCreation() {
		return "group/groupCreation";
	}
	
	/**
	 * 创建用户组的保存操作
	 * @param newGroup
	 * @return
	 */
	@RequestMapping(value="groupCreationSubmit")
	public @ResponseBody Map<String, String> groupCreationSubmit(Group newGroup){
		/**
		 * 关于前台传入中文乱码问题，需要把本机tomcat的server.xml编码改为UTF-8。
		 */
		HashMap<String, String> result = new HashMap<String,String>();
		// check whether group exists
		if(Objects.equals(newGroup.getName(), "null")) {
			result.put("result", "用户组名称不能为空！");
			return result;
		}
		if(!groupService.checkName(newGroup.getName())){
			logger.info("Group " + newGroup.getName() + " has already exists.");
			result.put("result", "该用户组已存在！");
			return result;
		}
		// add new group
		groupService.createNewGroup(newGroup);
		result.put("result", "保存成功！");
		return result;
	}
	/**
	 * 删除用户组(添加事务，删除用户-用户组、删除用户组视为原子操作)
	 * @param groupUniqueName
	 * @return
	 */
	@Transactional
	@RequestMapping(value="groupDelete")
	public @ResponseBody Map<String, String> groupDelete(String groupUniqueName){
		HashMap<String, String> result = new HashMap<String,String>();
		System.err.println(groupUniqueName);
		try {
			groupService.deleteUserGroupByGroupUniqueName(groupUniqueName);
			groupService.deleteGroup(groupUniqueName);
		} catch (Exception e) {
			result.put("result", "操作失败！");
			return result;
		}
		result.put("result", "删除成功！");
		return result;
	}
	/**
	 * 跳转到用户组管理 或 添加用户组界面
	 * @param name
	 * @param description
	 * @param model
	 * @return
	 */
	@RequestMapping(value="groupSearching")
	public String groupSearching(@RequestParam(required = false) String name,
								@RequestParam(required = false) String description,
								@RequestParam(required = false) String param,
								Model model){
		Map<String, String> params = new HashMap<String, String>();
		params.put("name", name);
		params.put("description", description);
		List<Group> groups = groupService.getGroups(params);
		model.addAttribute("groups", groups);
		if(Objects.equals(param, null))	
			return "group/groupSearching";
		else
			return "user/selectGroup";
	}
	
	/**
	 * 跳转到用户组详情
	 * @param request
	 * @return
	 */
	@RequestMapping(value="groupDetail")
	public String getGroupDetail(@RequestParam(required=false) String uniqueName, Model model){
		// get group detail from service
		Map<String, String> params = new HashMap<String, String>();
		params.put("uniqueName", uniqueName);
		Group group = groupService.getGroupDetail(params);
		model.addAttribute(group);
		return "group/groupDetail";
	}
	/**
	 * 当前组所有用户
	 * @param uniqueName
	 * @param model
	 * @return
	 */
	@RequestMapping(value="groupDetailUser")
	public String getGroupDetailUsers(@RequestParam(required=false) String uniqueName, Model model) {
		Group group = new Group();
		group.setUsers(groupService.getUsersByGroupUniqueName(uniqueName));
		group.setUniqueName(Integer.parseInt(uniqueName));
		model.addAttribute(group);
		return "group/groupDetailUser";
	}
	/**
	 * 跳转到添加用户页面
	 * @return
	 */
	@RequestMapping(value="selectUser")
	public String selectUsers(@RequestParam(required=true) String uniqueName, Model model) {
		Map<String, String> params = new HashMap<String, String>();
		List<User> users = userService.getUsers(params);
		model.addAttribute("groupUniqueName", uniqueName);
		model.addAttribute("users", users);
		return "group/selectUser";
	}
	/**
	 * 添加用户到当前用户组
	 * @param bean
	 * @return
	 */
	@RequestMapping(value="addUserToGroup")
	public @ResponseBody Map<String, String> addUserToGroup(@RequestBody UserGroupBean bean){
		Map<String, String> result = new HashMap<String, String>();
		String[] groups = bean.getGroups();
		String[] users = bean.getUsers();
		StringBuffer sb = new StringBuffer();
		try {
			for (String group : groups) {
				for (String user : users) {
					/*验证用户是否已经在组中*/
					if(groupService.checkUserGroupIsExist(group, user)) {
						groupService.addUserToGroup(group, user);
					}else {
						sb.append("'"+userService.getUserDetail(user).getName()+"' ");
					}
				}
			}
			
		} catch (Exception e) {
			result.put("result", "操作失败！请重试！");
			return result;
		}
		if(sb.length()!=0) {
			result.put("result", "添加成功！但 "+ sb.toString()+" 已经在当前组中, 无需重复添加");
		}else {
			result.put("result", "添加成功！");
		}
		return result;
	}
	/**
	 * 从当前用户组删除用户
	 * @param bean
	 * @return
	 */
	@RequestMapping(value="deleteUserFromGroup")
	public @ResponseBody Map<String, String> deleteUserFromGroup(@RequestBody UserGroupBean bean){
		String[] groups = bean.getGroups();
		String[] users = bean.getUsers();
		Map<String, String> result = new HashMap<String, String>();
		for (String group : groups) {
			groupService.deleteUserFromGroup(group, users);
		}
		result.put("result", "删除成功！");
		return result;
	}
}
