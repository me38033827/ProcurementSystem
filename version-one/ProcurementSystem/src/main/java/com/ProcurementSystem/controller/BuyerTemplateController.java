package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ProcurementSystem.common.TemplateTaskTree;
import com.ProcurementSystem.common.TemplateTree;
import com.ProcurementSystem.entity.Template;
import com.ProcurementSystem.entity.TemplateFolder;
import com.ProcurementSystem.entity.TemplateTaskPhase;
import com.ProcurementSystem.entity.TemplateTaskSchedule;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;
import com.ProcurementSystem.entity.TemplateTreeNode;
import com.ProcurementSystem.service.BuyerTemplateFolderService;
import com.ProcurementSystem.service.BuyerTemplateService;
import com.ProcurementSystem.service.BuyerTemplateTaskPhaseService;
import com.ProcurementSystem.service.BuyerTemplateTaskScheduleService;
import com.ProcurementSystem.service.BuyerTemplateTaskTreeNodeService;
import com.ProcurementSystem.service.BuyerTemplateTreeNodeService;
import com.alibaba.fastjson.JSONArray;

@Controller
@RequestMapping(value = "buyer/template")
public class BuyerTemplateController {
	@Resource
	BuyerTemplateFolderService templateFolderService;
	@Resource
	BuyerTemplateService templateService;
	@Resource
	BuyerTemplateTreeNodeService templateTreeNodeService;
	@Resource
	BuyerTemplateTaskTreeNodeService templateTaskTreeNodeService;
	@Resource
	BuyerTemplateTaskPhaseService templateTaskPhaseService;
	@Resource
	BuyerTemplateTaskScheduleService templateTaskScheduleService;

	// 模板概述
	@RequestMapping(value = "templateSummary")
	public String templateSummary(ModelMap map) {
		TemplateTree templateTree = templateTreeNodeService.generateTemplateTree();
		templateTree.traverse();
		JSONArray json = templateTree.traverseToJSONArray();
		map.put("json", json);
		return "upStream/template/templateSummary";
	}

	// 模板文档
	@RequestMapping(value = "templateDoc")
	public String templateDoc(@RequestParam(value = "parentId", required = false) Integer parentId, ModelMap map) {
		TemplateTree templateTree = templateTreeNodeService.generateTemplateTree();
		templateTree.traverse();
		JSONArray json = templateTree.traverseToJSONArray();
		map.put("json", json);
		return "upStream/template/templateDoc";
	}

	// 模板团队
	@RequestMapping(value = "templateTeam")
	public String templateTeam() {
		return "upStream/template/templateTeam";
	}

	// 模板历史记录
	@RequestMapping(value = "templateHistory")
	public String templateHistory() {
		return "upStream/template/templateHistory";
	}

	/** 模板文件夹 **/
	// 显示文件夹Profile
	@RequestMapping(value = "templateFolderProfile")
	public String templateFolderProfile(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		TemplateFolder templateFolder = templateFolderService.getById(id);
		request.getSession().setAttribute("folder", templateFolder);
		return "upStream/template/templateFolderProfile";
	}

	// 创建文件夹
	@RequestMapping(value = "templateCreateFolder")
	public String templateCreateFolder(@RequestParam(value = "parentId") Integer parentId, HttpServletRequest request) {
		request.getSession().setAttribute("parentId", parentId);
		return "upStream/template/templateCreateFolder";
	}

	// 创建文件夹，保存至数据库
	@RequestMapping(value = "templateCreateFolderSave")
	public String templateCreateFolderSave(TemplateFolder templateFolder, HttpServletRequest request) {
		Integer parentId = (Integer) request.getSession().getAttribute("parentId");
		if (parentId != null) {
			templateFolder = templateFolderService.add(templateFolder);// 持久化folder
			TemplateTreeNode node = new TemplateTreeNode();
			node.setTemplateFolder(templateFolder);
			node.setParentId(parentId);
			node.setType(1);
			templateTreeNodeService.add(node);
			return "redirect:templateDoc?parentId=1000001";
		}
		return "error";
	}

	// 编辑文件夹
	@RequestMapping(value = "templateFolderEdit")
	public String templateFolderEdit(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		TemplateFolder templateFolder = templateFolderService.getById(id);
		request.setAttribute("folder", templateFolder);
		return "upStream/template/templateFolderEdit";
	}

	// 编辑保存
	@RequestMapping(value = "templateFolderEditSave")
	public String templateFolderEditSave(TemplateFolder templateFolder, HttpServletRequest request) {
		templateFolderService.editById(templateFolder);
		return "redirect:templateDoc?parentId=1000001";
	}

	// 删除文件夹
	@RequestMapping(value = "templateFolderDelete")
	public String templateFolderDelete(@RequestParam(value = "id") Integer id) {
		templateTreeNodeService.deleteById(id);
		return "redirect:templateDoc?parentId=1000001";
	}

	// 选择模板类型
	@RequestMapping(value = "templateChooseType")
	public String templatChooseType(HttpServletRequest request,
			@RequestParam(value = "parentId", required = false) Integer parentId) {
		if (parentId == null)
			parentId = 1000001;
		request.getSession().setAttribute("parentId", parentId);
		return "upStream/template/templateChooseType";
	}

	// 创建模板
	@RequestMapping(value = "templateCreate")
	public String templateCreate(@RequestParam(value = "type") String type, HttpServletRequest request) {
		request.getSession().setAttribute("type", type);
		return "upStream/template/templateCreate";
	}

	// 创建模板,保存至数据库
	@Transactional
	@RequestMapping(value = "templateCreateSave")
	public String templateCreateSave(Template template, HttpServletRequest request, ModelMap map) {
		TemplateTaskTreeNode templateTaskTreeNode = new TemplateTaskTreeNode();
		templateTaskTreeNode.setType(1);
		TemplateTaskPhase templateTaskPhase = new TemplateTaskPhase();
		templateTaskPhase.setTitle("根节点");
		templateTaskPhaseService.add(templateTaskPhase);// 持久化任务阶段
		templateTaskTreeNode.setTemplateTaskPhase(templateTaskPhase);
		templateTaskTreeNodeService.add(templateTaskTreeNode);// 持久化任务结点
		template.setTemplateTaskTreeNode(templateTaskTreeNode);
		if (template.getName() == null && template.getName().equals("")) {// 模板标题非空检测
			map.put("Error_name", "名称不能为空");
			return "upStream/template/templateCreate";
		}
		String type = (String) request.getSession().getAttribute("type");
		Integer parentId = (Integer) request.getSession().getAttribute("parentId");
		template.setType(type);
		templateService.add(template);// 持久化template
		TemplateTreeNode templateTreeNode = new TemplateTreeNode();
		templateTreeNode.setParentId(parentId);
		templateTreeNode.setType(0);
		templateTreeNode.setTemplate(template);
		templateTreeNodeService.add(templateTreeNode);// 持久化treeNode
		return "redirect:templateDoc";
	}

	// 删除模板
	@RequestMapping(value = "templateDelete")
	public String templateDelete(@RequestParam(value = "id") Integer id) {
		templateService.delete(id);
		return "redirect:templateDoc";
	}

	/** SIM模板 **/
	// SIM模板 - 概述
	@RequestMapping(value = "templateSIMSummary")
	public String templateSIMSummary() {
		return "upStream/template/templateSIM/templateSIMSummary";
	}

	// 激活模板
	@RequestMapping(value = "templateActivate")
	public String templateActivate(@RequestParam("id") Integer id, HttpServletRequest request) {
		templateService.setStatus(id, "已激活");
		Template template = new Template();
		template.setId(id);
		List<Template> templates = templateService.get(template);
		request.getSession().setAttribute("template", templates.get(0));
		return "redirect:templateSIMSummary";
	}

	// 停用模板
	@RequestMapping(value = "templateDeactivate")
	public String templateDeactivate(@RequestParam("id") Integer id, HttpServletRequest request) {
		templateService.setStatus(id, "草稿");
		Template template = new Template();
		template.setId(id);
		List<Template> templates = templateService.get(template);
		request.getSession().setAttribute("template", templates.get(0));
		return "redirect:templateSIMSummary";
	}

	// SIM模板 - 文档
	@RequestMapping(value = "templateSIMDoc")
	public String templateSIMDoc() {
		return "upStream/template/templateSIM/templateSIMDoc";
	}

	// SIM模板 - 任务
	@RequestMapping(value = "templateSIMTask")
	public String templateSIMTask(@RequestParam(value = "id", required = false) Integer id, ModelMap map,
			HttpServletRequest request) {
		if (id == null)
			id = ((Template) request.getSession().getAttribute("template")).getId();// 若未提供id，自动获取已存在session中的Template
		Template template = new Template();
		template.setId(id);
		List<Template> templates = templateService.get(template);
		TemplateTaskTree templateTaskTree = new TemplateTaskTree(templates.get(0).getTemplateTaskTreeNode());
		templateTaskTreeNodeService.generateTemplateTree(templateTaskTree);// 生成模板任务树
		templateTaskTree.traverse();
		JSONArray json = templateTaskTree.traverseToJSONArray();
		map.put("json", json);
		map.put("template", templates.get(0));
		request.getSession().setAttribute("template", templates.get(0));// 保存访问的模板
		return "upStream/template/templateSIM/templateSIMTask";
	}

	// SIM模板 - 任务 - 创建阶段
	@RequestMapping(value = "templateSIMTaskPhaseCreate")
	public String templateSIMTaskPhaseCreate(@RequestParam(value = "parentId") Integer parentId,
			HttpServletRequest request) {
		request.getSession().setAttribute("parentId", parentId);
		return "upStream/template/templateSIM/templateSIMTaskPhaseCreate";
	}

	// SIM模板 - 任务 - 创建阶段保存至数据库
	@RequestMapping(value = "templateSIMTaskPhaseSave")
	public String templateSIMTaskPhaseSave(HttpServletRequest request, TemplateTaskPhase templateTaskPhase,
			ModelMap map) {
		TemplateTaskTreeNode templateTaskTreeNode = new TemplateTaskTreeNode();
		Integer parentId = (Integer) request.getSession().getAttribute("parentId");
		if (templateTaskPhase.getTitle().equals("") || templateTaskPhase.getTitle() == null) {
			map.put("Error_title", "标题不能为空");
			return "upStream/template/templateSIM/templateSIMTaskPhaseCreate";
		}
		if (parentId != null) {
			templateTaskPhaseService.add(templateTaskPhase);// 持久化任务阶段
			templateTaskTreeNode.setParentId(parentId);
			templateTaskTreeNode.setTemplateTaskPhase(templateTaskPhase);
			templateTaskTreeNode.setType(1);
			templateTaskTreeNodeService.add(templateTaskTreeNode);// 持久化结点
		}
		Template template = (Template) request.getSession().getAttribute("template");
		return "redirect:templateSIMTask?id=" + template.getId();
	}

	// SIM模板 - 任务 - 编辑阶段
	@RequestMapping(value = "templateTaskPhaseEdit")
	public String templateTaskPhaseEdit(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		if (id != null) {
			TemplateTaskPhase templateTaskPhase = templateTaskPhaseService.getById(id);
			request.setAttribute("taskPhase", templateTaskPhase);
			return "upStream/template/templateSIM/templateSIMTaskPhaseEdit";
		}
		Template template = (Template) request.getSession().getAttribute("template");
		return "redirect:templateSIMTask?id=" + template.getId();
	}

	// SIM模板 - 任务 - 保存编辑阶段
	@RequestMapping(value = "templateTaskPhaseEditSave")
	public String templateSIMTaskPhaseEditSave(TemplateTaskPhase templateTaskPhase, HttpServletRequest request) {
		templateTaskPhaseService.editById(templateTaskPhase);
		Template template = (Template) request.getSession().getAttribute("template");
		return "redirect:templateSIMTask?id=" + template.getId();
	}

	// 任务-删除任务树节点(任务阶段和待办任务)
	@RequestMapping(value = "templateTaskTreeNodeDelete")
	public String templateTaskTreeNodeDelete(@RequestParam(value = "id") Integer id) {
		templateTaskTreeNodeService.deleteById(id);
		return "redirect:templateSIMTask";
	}

	// SIM模板 - 任务 - 创建待办任务
	@RequestMapping(value = "templateSIMTaskScheduleCreate")
	public String templateSIMTaskInformCreate(@RequestParam(value = "parentId") Integer parentId,
			HttpServletRequest request) {
		request.getSession().setAttribute("parentId", parentId);
		return "upStream/template/templateSIM/templateSIMTaskScheduleCreate";
	}

	// SIM模板 - 任务 - 创建待办任务保存至数据库
	@RequestMapping(value = "templateSIMTaskScheduleSave")
	public String templateSIMTaskInformSave(HttpServletRequest request, TemplateTaskSchedule templateTaskSchedule,
			ModelMap map) {
		Integer parentId = (Integer) request.getSession().getAttribute("parentId");
		if (templateTaskSchedule.getTitle().equals("") || templateTaskSchedule.getTitle() == null) {
			map.put("Error_title", "标题不能为空");
			return "upStream/template/templateSIM/templateSIMTaskPhaseCreate";
		}
		if (parentId != null) {
			templateTaskScheduleService.add(templateTaskSchedule);// 持久化待办任务
			TemplateTaskTreeNode templateTaskTreeNode = new TemplateTaskTreeNode();
			templateTaskTreeNode.setParentId(parentId);
			templateTaskTreeNode.setType(0);
			templateTaskTreeNode.setTemplateTaskSchedule(templateTaskSchedule);
			templateTaskTreeNodeService.add(templateTaskTreeNode);// 持久化任务结点
		}
		Template template = (Template) request.getSession().getAttribute("template");
		return "redirect:templateSIMTask?id=" + template.getId();
	}

	// SIM模板 - 任务 - 编辑待办任务
	@RequestMapping(value = "templateTaskScheduleEdit")
	public String templateTaskScheduleEdit(Integer id, HttpServletRequest request) {
		if (id != null) {
			TemplateTaskSchedule templateTaskSchedule = templateTaskScheduleService.getById(id);
			request.setAttribute("schedule", templateTaskSchedule);
		}
		return "upStream/template/templateSIM/templateSIMTaskScheduleEdit";
	}

	// SIM模板 - 任务 - 编辑待办任务保存至数据库
	@RequestMapping(value = "templateTaskScheduleEditSave")
	public String templateTaskScheduleEditSave(TemplateTaskSchedule templateTaskSchedule, HttpServletRequest request) {
		templateTaskScheduleService.edit(templateTaskSchedule);
		return "redirect:templateSIMTask?";
	}

	// 查看阶段详细信息
	@RequestMapping(value = "templateTaskPhaseInfo")
	public String templateTaskPhaseInfo(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		TemplateTaskPhase templateTaskPhase = templateTaskPhaseService.getById(id);
		request.getSession().setAttribute("taskPhase", templateTaskPhase);
		return "upStream/template/templateSIM/templateSIMTaskPhaseInfo";
	}

	// 查看阶段详细信息
	@RequestMapping(value = "templateTaskScheduleInfo")
	public String templateTaskScheduleInfo(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		TemplateTaskSchedule templateTaskSchedule = templateTaskScheduleService.getById(id);
		request.getSession().setAttribute("schedule", templateTaskSchedule);
		return "upStream/template/templateSIM/templateSIMTaskScheduleInfo";
	}

	// SIM模板 - 团队
	@RequestMapping(value = "templateSIMTeam")
	public String templateSIMTeam() {
		return "upStream/template/templateSIM/templateSIMTeam";
	}

	// SIM模板 - 时间消息
	@RequestMapping(value = "templateSIMCondition")
	public String templateSIMMessage() {
		return "upStream/template/templateSIM/templateSIMCondition";
	}

	// SIM模板 - 高级选项
	@RequestMapping(value = "templateSIMOption")
	public String templateSIMOption() {
		return "upStream/template/templateSIM/templateSIMOption";
	}

}
