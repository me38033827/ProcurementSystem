package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ProcurementSystem.entity.TemplateFolder;
import com.ProcurementSystem.entity.TemplateTreeNode;
import com.ProcurementSystem.service.BuyerTemplateFolderService;
import com.ProcurementSystem.service.BuyerTemplateService;
import com.ProcurementSystem.service.BuyerTemplateTreeNodeService;

@Controller
@RequestMapping(value = "buyer/template")
public class BuyerTemplateController {
	@Resource
	BuyerTemplateFolderService templateFolderService;
	@Resource
	BuyerTemplateService templateService;
	@Resource
	BuyerTemplateTreeNodeService templateTreeNodeService;

	// 模板概述
	@RequestMapping(value = "templateSummary")
	public String templateSummary() {
		return "upStream/template/templateSummary";
	}

	// 模板文档
	@RequestMapping(value = "templateDoc")
	public String templateDoc(@RequestParam(value="parentId",required=false)Integer parentId) {
		if(parentId == null) parentId = 1000001;
		List<TemplateFolder>templateFolders = templateFolderService.getByParentId(parentId);//获得所有文件夹
		
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
	public String templatChooseType() {
		return "upStream/template/templateChooseType";
	}

	// 创建模板
	@RequestMapping(value = "templateCreate")
	public String templateCreate() {
		return "upStream/template/templateCreate";
	}

	/** SPM模板 **/
	// SPM模板 - 概述
	@RequestMapping(value = "templateSupplierSPMSummary")
	public String templateSupplierSPMSummary() {
		return "upStream/template/templateSupplierSPMSummary";
	}

	// SPM模板 - 文档
	@RequestMapping(value = "templateSupplierSPMDoc")
	public String templateSupplierSPMDoc() {
		return "upStream/template/templateSupplierSPMDoc";
	}

	// SPM模板 - 任务
	@RequestMapping(value = "templateSupplierSPMTask")
	public String templateSupplierSPMTask() {
		return "upStream/template/templateSupplierSPMTask";
	}

	// SPM模板 - 团队
	@RequestMapping(value = "templateSupplierSPMTeam")
	public String templateSupplierSPMTeam() {
		return "upStream/template/templateSupplierSPMTeam";
	}

	// SPM模板 - 时间消息
	@RequestMapping(value = "templateSupplierSPMCondition")
	public String templateSupplierSPMMessage() {
		return "upStream/template/templateSupplierSPMCondition";
	}

	// SPM模板 - 高级选项
	@RequestMapping(value = "templateSupplierSPMOption")
	public String templateSupplierSPMOption() {
		return "upStream/template/templateSupplierSPMOption";
	}

	// SPM模板 - 历史记录
	@RequestMapping(value = "templateSupplierSPMHistory")
	public String templateSupplierSPMHistory() {
		return "upStream/template/templateSupplierSPMHistory";
	}

}
