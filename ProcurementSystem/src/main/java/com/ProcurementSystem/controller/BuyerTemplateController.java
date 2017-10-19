package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ProcurementSystem.common.TemplateTree;
import com.ProcurementSystem.entity.Template;
import com.ProcurementSystem.entity.TemplateFolder;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;
import com.ProcurementSystem.entity.TemplateTreeNode;
import com.ProcurementSystem.service.BuyerTemplateFolderService;
import com.ProcurementSystem.service.BuyerTemplateService;
import com.ProcurementSystem.service.BuyerTemplateTaskTreeNodeService;
import com.ProcurementSystem.service.BuyerTemplateTreeNodeService;
import com.alibaba.fastjson.JSON;
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

	// 模板概述
	@RequestMapping(value = "templateSummary")
	public String templateSummary() {
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

//	// 模板文档
//	@RequestMapping(value = "getChildNodes")
//	public @ResponseBody JSON getChildNodes(@RequestParam(value = "parentId") Integer parentId) {
//		List<TemplateTreeNode> templateTreeNodes = templateTreeNodeService.getFolderByParentId(parentId);// 获得所有文件夹
//		// map.put("templateTreeNodes", templateTreeNodes);
//		JSON jsonArray = (JSON) JSONArray.toJSON(templateTreeNodes);
//		System.out.println(jsonArray.toString());
//		return jsonArray;
//	}

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

	// 选择模板类型
	@RequestMapping(value = "templateChooseType")
	public String templatChooseType(HttpServletRequest request,@RequestParam(value = "parentId",required=false) Integer parentId) {
		if(parentId == null) parentId = 1000001;
		request.getSession().setAttribute("parentId", parentId);
		
		return "upStream/template/templateChooseType";
	}

	// 创建模板
	@RequestMapping(value = "templateCreate")
	public String templateCreate(@RequestParam(value = "type") String type,HttpServletRequest request) {
		request.getSession().setAttribute("type", type);
		return "upStream/template/templateCreate";
	}

	// 创建模板,保存至数据库
	@RequestMapping(value = "templateCreateSave")
	public String templateCreateSave(Template template, HttpServletRequest request,ModelMap map) {
		if(template.getName() == null && template.getName().equals("")){
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
		templateTreeNodeService.add(templateTreeNode);//持久化treeNode
		return "redirect:templateDoc";
	}

	/** SPM模板 **/
	// SPM模板 - 概述
	@RequestMapping(value = "templateSPMSummary")
	public String templateSPMSummary() {
		return "upStream/template/templateSPM/templateSPMSummary";
	}

	// SPM模板 - 文档
	@RequestMapping(value = "templateSPMDoc")
	public String templateSPMDoc() {

		return "upStream/template/templateSPM/templateSPMDoc";
	}

	// SPM模板 - 任务
	@RequestMapping(value = "templateSPMTask")
	public String templateSPMTask() {
		return "upStream/template/templateSPMTask";
	}

	// SPM模板 - 团队
	@RequestMapping(value = "templateSPMTeam")
	public String templateSPMTeam() {
		return "upStream/template/templateSPMTeam";
	}

	// SPM模板 - 时间消息
	@RequestMapping(value = "templateSPMCondition")
	public String templateSPMMessage() {
		return "upStream/template/templateSPMCondition";
	}

	// SPM模板 - 高级选项
	@RequestMapping(value = "templateSPMOption")
	public String templateSPMOption() {
		return "upStream/template/templateSPMOption";
	}

	// SPM模板 - 历史记录
	@RequestMapping(value = "templateSPMHistory")
	public String templateSPMHistory() {
		return "upStream/template/templateSPMHistory";
	}

	/** SIM模板 **/
	// SIM模板 - 概述
	@RequestMapping(value = "templateSIMSummary")
	public String templateSIMSummary() {
		return "upStream/template/templateSIM/templateSIMSummary";
	}

	// SIM模板 - 文档
	@RequestMapping(value = "templateSIMDoc")
	public String templateSIMDoc() {

		return "upStream/template/templateSIM/templateSIMDoc";
	}

	// SIM模板 - 任务
	@RequestMapping(value = "templateSIMTask")
	public String templateSIMTask() {
		return "upStream/template/templateSIM/templateSIMTask";
	}

	// SIM模板 - 任务 - 创建阶段
	@RequestMapping(value = "templateSIMTaskPhaseCreate")
	public String templateSIMTaskPhaseCreate(@RequestParam(value = "parentId", required = false) Integer parentId,
			HttpServletRequest request) {
		request.getSession().setAttribute("parentId", parentId);
		return "upStream/template/templateSIM/templateSIMTaskPhaseCreate";
	}

	// SIM模板 - 任务 - 创建阶段保存至数据库
	@RequestMapping(value = "templateSIMTaskPhaseSave")
	public String templateSIMTaskPhaseSave(HttpServletRequest request, TemplateTaskTreeNode templateTaskTreeNode,
			ModelMap map) {
		Integer parentId = (Integer) request.getSession().getAttribute("parentId");
		if (templateTaskTreeNode.getTitle().equals("") || templateTaskTreeNode.getTitle() == null) {
			map.put("Error_title", "标题不能为空");
			return "upStream/template/templateSIM/templateSIMTaskPhaseCreate";
		}
		if (parentId != null) {
			templateTaskTreeNode.setParentId(parentId);
			templateTaskTreeNodeService.add(templateTaskTreeNode);
		}
		return "redirect:templateSIMTask";
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
