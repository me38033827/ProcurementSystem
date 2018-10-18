package com.ProcurementSystem.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ProcurementSystem.common.TemplateTaskTree;
import com.ProcurementSystem.entity.SIMTree;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.entity.SupplierQuestion;
import com.ProcurementSystem.entity.SupplierSIM;
import com.ProcurementSystem.entity.SupplierSIMAnswer;
import com.ProcurementSystem.entity.SupplierSPM;
import com.ProcurementSystem.entity.SupplierSQM;
import com.ProcurementSystem.entity.SupplierSQMAllowedCode;
import com.ProcurementSystem.entity.Template;
import com.ProcurementSystem.entity.TemplateTaskPhase;
import com.ProcurementSystem.entity.TemplateTaskSchedule;
import com.ProcurementSystem.entity.TemplateTaskTreeNode;
import com.ProcurementSystem.entity.UNSPSC;
import com.ProcurementSystem.entity.UNSPSCTree;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.service.BuyerSupplierSQMAllowedCodeService;
import com.ProcurementSystem.service.BuyerTemplateService;
import com.ProcurementSystem.service.BuyerTemplateTaskPhaseService;
import com.ProcurementSystem.service.BuyerTemplateTaskScheduleService;
import com.ProcurementSystem.service.BuyerTemplateTaskTreeNodeService;
import com.ProcurementSystem.service.SupplierSIMQService;
import com.ProcurementSystem.service.SupplierSIMService;
import com.ProcurementSystem.service.SupplierSPMService;
import com.ProcurementSystem.service.SupplierSQMService;
import com.ProcurementSystem.service.SupplierService;
import com.ProcurementSystem.service.UNSPSCService;
import com.alibaba.fastjson.JSONArray;

@Controller
@RequestMapping(value = "buyer/supplier")
public class BuyerSupplierController {

	@Resource
	SupplierService service;
	@Resource
	SupplierSIMService simService;
	@Resource
	SupplierSQMService sqmService;
	@Resource
	SupplierSPMService spmService;
	@Resource
	SupplierSIMQService simqService;
	@Resource
	BuyerTemplateTaskTreeNodeService templateTaskTreeNodeService;
	@Resource
	BuyerTemplateTaskPhaseService templateTaskPhaseService;
	@Resource
	BuyerTemplateTaskScheduleService templateTaskScheduleService;
	@Resource
	BuyerTemplateService templateService;
	@Resource
	UNSPSCService unspscService;
	@Resource
	BuyerSupplierSQMAllowedCodeService allowedCodeService;

	// P2P显示供应商信息管理
	@RequestMapping(value = "simQuestionnaire")
	public String simQuestionnaire(HttpServletRequest request) {
		SIMTree simTree = simService.generateSIMTree();
		request.setAttribute("treeData", simTree.traverseToJSONArray());
		return "upStream/supplier/sim/showQuestionEdit";
	}
	
	//获得空白选项 (多选和日期)
	@RequestMapping(value = "getMultiSelectionDate")
	public @ResponseBody List<SupplierSIM> getMultiSelectionDate(HttpServletRequest request) {
		return simService.getMultiSelectionDate();
	}

	// P2P显示供应商信息管理
	@RequestMapping(value = "supplierInformationManagement")
	public String supplierInformationManagement(HttpServletRequest request) {
		return "upStream/supplier/sim/supplierInformationManagement";
	}

	// P2P显示供应商信息管理－创建文件夹
	@RequestMapping(value = "createFolder")
	public String createFolder(String id, HttpServletRequest request) {
		int id_int = Integer.parseInt(id);
		if (id_int == 10000) {
			int order = simService.getMaxNewId() + 1;
			request.setAttribute("parentList", order + " Untitled");
			request.setAttribute("parentId", 10000);
			request.setAttribute("order", order);
			return "upStream/supplier/sim/createFolder";
		}
		Map<String, Object> params = simService.getAllParentNodes(id_int, true);

		request.setAttribute("parentList", params.get("resultStr"));
		request.setAttribute("parentId", params.get("parentId"));
		request.setAttribute("order", params.get("order"));
		return "upStream/supplier/sim/createFolder";
	}

	// P2P显示供应商信息管理－创建问题
	@RequestMapping(value = "createQuestion")
	public String createQuestion(String id, HttpServletRequest request) {
		int id_int = Integer.parseInt(id);
		if (id_int == 10000) {
			int order = simService.getMaxNewId() + 1;
			request.setAttribute("parentList", order + " Untitled");
			request.setAttribute("parentId", 10000);
			request.setAttribute("order", order);
			return "upStream/supplier/sim/createQuestion";
		}
		Map<String, Object> params = simService.getAllParentNodes(id_int, true);

		request.setAttribute("parentList", params.get("resultStr"));
		request.setAttribute("parentId", params.get("parentId"));
		request.setAttribute("order", params.get("order"));
		return "upStream/supplier/sim/createQuestion";
	}

	// P2P显示供应商信息管理－将问题添加到数据库
	@RequestMapping(value = "addQuestion")
	public String addQuestion(SupplierSIM suppliersim, HttpServletRequest request) {
		int parentId = Integer.parseInt(request.getParameter("parentId"));
		int order = Integer.parseInt(request.getParameter("order"));

		String title = request.getParameter("title");
		int answerType = Integer.parseInt(request.getParameter("answerType"));
		String initialAnswer = request.getParameter("initialAnswer");
		int multipleValue = Integer.parseInt(request.getParameter("multipleValue"));
		int acceptValue = Integer.parseInt(request.getParameter("acceptValue"));

		SupplierSIM sim = new SupplierSIM();
		sim.setTitle(title);
		sim.setAnswerType(answerType);
		sim.setAcceptValue(acceptValue);
		System.out.println(suppliersim.getMultipleValue());
		System.out.println(multipleValue);
		sim.setMultipleValue(multipleValue);
		if (acceptValue == 1) {
			sim.setInitialAnswer(initialAnswer);
			simService.addQuestion(sim, parentId, order);
		}
		if (acceptValue == 2) {
			int selection = Integer.parseInt(request.getParameter("selection"));
			String selectionValue = "";
			List<String> selections = new ArrayList<String>();
			int j = 0;
			for (int i = 1; i <= selection; i++) {
				selectionValue = request.getParameter("selection-" + i);
				if(selectionValue != null && selectionValue != ""){
					selections.add(j, selectionValue);
					j++;
				}else{
					System.out.println("Empty selection");
				}
			}
			simService.addQuestionWithSelection(sim, selections, parentId, order);
		}
		return "redirect:simQuestionnaire";
	}

	// P2P显示供应商信息管理－将文件夹添加到数据库
	@RequestMapping(value = "addFolder")
	public String addFolder(SupplierSIM sim, HttpServletRequest request) {
		int parentId = Integer.parseInt(request.getParameter("parentId"));
		int order = Integer.parseInt(request.getParameter("order"));
		simService.addFolder(sim, parentId, order);
		return "redirect:simQuestionnaire";
	}

	// P2P显示供应商信息管理－编辑文件夹
	@RequestMapping(value = "editFolder")
	public String editFolder(String id, HttpServletRequest request) {
		int id_int = Integer.parseInt(id);
		SupplierSIM sim = simService.getFolderOrQuestion(id_int);
		request.setAttribute("id", id_int);
		request.setAttribute("sim", sim);

		request.setAttribute("parentList", simService.getAllParentNodes(id_int, false).get("resultStr"));

		return "upStream/supplier/sim/editFolder";
	}

	// P2P显示供应商信息管理－编辑问题
	@RequestMapping(value = "editQuestion")
	public String editQuestion(String id, HttpServletRequest request) {
		int id_int = Integer.parseInt(id);
		SupplierSIM sim = simService.getFolderOrQuestion(id_int);
		request.setAttribute("id", id_int);
		request.setAttribute("sim", sim);
		// 问题是否带选项 选项个数存进 selection 无选项则为0
		int selection = 0;
		if (sim.getAcceptValue() == 2) {
			selection = sim.getSelections().size();
		}
		System.out.println("selection: " + 0);
		request.setAttribute("selection", selection);
		request.setAttribute("parentList", simService.getAllParentNodes(id_int, false).get("resultStr"));

		return "upStream/supplier/sim/editQuestion";
	}

	// P2P显示供应商信息管理－更新问题
	@RequestMapping(value = "updateQuestion")
	public String updateQuestion(SupplierSIM sim, HttpServletRequest request) {
		int acceptValue = sim.getAcceptValue();
		if (acceptValue == 1) {
			// 更新问题
			simService.updateQuestion(sim);
		}
		if (acceptValue == 2) {
			// 更新问题及选项
			int selection = Integer.parseInt(request.getParameter("selection"));
			String selectionValue = "";
			List<String> selections = new ArrayList<String>();
			for (int i = 1; i <= selection; i++) {
				selectionValue = request.getParameter("selection-" + i);
				System.out.println(i + ":" + selectionValue);
				selections.add(i - 1, selectionValue);
			}
			simService.updateQuestionWithSelection(sim, selections);
		}
		return "redirect:simQuestionnaire";
	}

	// P2P显示供应商信息管理－更新文件夹
	@RequestMapping(value = "updateFolder")
	public String updateFolder(SupplierSIM sim, HttpServletRequest request) {
		String id = request.getParameter("id");
		int int_id = Integer.parseInt(id);
		sim.setId(int_id);
		simService.updateFolder(sim);
		return "redirect:simQuestionnaire";
	}

	// P2P显示供应商信息管理－删除问题
	@RequestMapping(value = "deleteQuestion")
	public String deleteQuestion(String id) {
		int int_id = Integer.parseInt(id);
		simService.deleteQuestion(int_id);
		return "redirect:simQuestionnaire";
	}

	// P2P显示供应商信息管理－删除问题
	@RequestMapping(value = "deleteFolder")
	public String deleteFolder(String id) {
		int int_id = Integer.parseInt(id);
		simService.deleteFolder(int_id);
		return "redirect:simQuestionnaire";
	}
	// P2P显示供应商概要
	// @RequestMapping(value = "supplierSearchDistribute")
	// public String supplierSearchDistribute(HttpServletRequest request){
	// String type = request.getParameter("searchType");
	// String content = request.getParameter("content");
	// System.out.println(type);
	// System.out.println(content);
	// if(type.equals("spm")||type.equals("sqm")){
	// if(content==null){
	// return "redirect:" + type + "Searching?action=initial";
	// }else{
	// request.getSession().setAttribute("content", content);
	// return "redirect:" + type + "Searching?action=search";
	// }
	// }
	// if(type.equals("supplier")){
	// if(content==null){
	// return "redirect:supplierSearch?action=initial";
	// }else{
	// request.getSession().setAttribute("content", content);
	// return "redirect:supplierSearch?action=search";
	// }
	// }
	// return "";
	// }

	// 供应商搜索功能页面
	@RequestMapping(value = "supplierSearch")
	public String supplierSearch(HttpServletRequest request, Supplier supplier) {
		request.getSession().removeAttribute("supplierSession");
		request.getSession().removeAttribute("supplierQuestions");
		System.out.println("---Controller: supplierSearch---");
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if (action.equals("reset")) {
			request.getSession().setAttribute("contentSession", "");
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}
		String content = (String) request.getSession().getAttribute("content");
		System.out.println(content);
		if (content == null) {
			content = request.getParameter("content");
		} else {
			request.getSession().removeAttribute("content");
		}
		if (action.equals("initial")) {
			request.getSession().setAttribute("contentSession", content);
			System.out.println(content);
			if (content.equals("使用名称、标识符或任何其他词语搜索")) {
				request.setAttribute("num", "-1");
				return "upStream/supplier/supplierSearching";
			}
		}

		if (action.equals("back")) {
			content = (String) request.getSession().getAttribute("contentSession");
		}

		if (content == null) {
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}

		System.out.println("Search for content: " + content);
		List<Supplier> suppliers = service.completeSearchSupplier(supplier, content);
		request.setAttribute("suppliers", suppliers);
		request.getSession().setAttribute("contentSession", content);
		request.setAttribute("num", Integer.toString(suppliers.size()));
		System.out.println("共有" + Integer.toString(suppliers.size()) + "个搜索结果");
		request.getSession().setAttribute("supplierSearchInfoSession", supplier);
		request.setAttribute("supplierSearchInfo", supplier);
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSearching";
	}

	// P2P显示供应商概要
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "supplierDetail")
	public String showSupplierDetail(HttpServletRequest request) {
		request.getSession().setAttribute("backTask", "supplierDetailTask");// 设置
		String backCreateCommodityCatalog = "../commodityCatalog/commodityCatalogCreateChooseSupplier?action=search";// 设置返回路径
		request.getSession().setAttribute("backCreateCommodityCatalog", backCreateCommodityCatalog);
		HttpSession session = request.getSession();
		Supplier supplier = null;
		List<SupplierSIMAnswer> answers = new ArrayList<SupplierSIMAnswer>();

		// 获得supplier uniqueName
		String uniqueNameStr = request.getParameter("id");

		int uniqueName = -1;
		if (uniqueNameStr != null) {
			uniqueName = Integer.parseInt(uniqueNameStr);
			session.setAttribute("uniqueName", uniqueName);
		} else {
			uniqueName = (int) session.getAttribute("uniqueName");
		}

		supplier = service.getSupplierDetail(uniqueName);
		session.setAttribute("supplierSession", supplier);
		answers = simService.getSupplierSIMAnswer(uniqueName);
		request.setAttribute("supplier", supplier);

		// 显示sim填写结果
		SIMTree simTree = simService.generateSIMTree();
		JSONArray json = simTree.traverseToJSONArrayWithAnswer(answers);
		request.setAttribute("treeData", json);

		return "upStream/supplier/supplierDetail";
	}

	@RequestMapping(value = "editSupplierDetail")
	public String editSupplierDetail(HttpServletRequest request) {
		String id = request.getParameter("id");
		int id_int = Integer.parseInt(id);
		Supplier supplier = service.getSupplierDetail(id_int);
		request.setAttribute("supplier", supplier);

		// sim
		SIMTree simTree = simService.generateSIMTree();
		JSONArray json = simTree.traverseToJSONArray();
		request.setAttribute("treeData", json);

		return "upStream/supplier/editSupplierDetail";
	}

	@RequestMapping(value = "editSupplierAnalyze")
	public String editSupplierAnalyze(Supplier supplier, HttpServletRequest request) {
		service.updateSupplier(supplier);

		int uniqueName = supplier.getUniqueName();
		// 更新供应商问卷答案
		List<SupplierSIM> questionObjs = simService.getAllQuestionId();
		List<SupplierSIMAnswer> allAnswers = new ArrayList<SupplierSIMAnswer>();

		// 从前端读取answer
		for (int i = 0; i < questionObjs.size(); i++) {
			int id = questionObjs.get(i).getId();
			SupplierSIMAnswer answer = new SupplierSIMAnswer();
			answer.setAnswer(request.getParameter("ans-" + id));
			answer.setSupplierId(uniqueName);
			answer.setQuestionId(id);
			allAnswers.add(answer);
		}
		// 将问卷答案更新至数据库
		simService.insertOrUpdateSIMAnswers(allAnswers);

		return "redirect:supplierDetail?id=" + supplier.getUniqueName();
	}

	@RequestMapping(value = "getSIMAnswers")
	public @ResponseBody List<SupplierSIMAnswer> getSIMAnswers(@RequestParam("supplierId") int supplierId) {
		return simService.getSupplierSIMAnswer(supplierId);
	}

	// P2P显示供应商概述
	@RequestMapping(value = "supplierDetailSummary")
	public String showSupplierDetailSummary(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailSummary";
	}

	// P2P显示供应商文档
	@RequestMapping(value = "supplierDetailDoc")
	public String showSupplierDetailDoc(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailDoc";
	}

	// P2P显示供应商历史记录
	@RequestMapping(value = "supplierDetailHistory")
	public String showSupplierDetailHistory(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailHistory";
	}

	// P2P显示供应商信息板
	@RequestMapping(value = "supplierDetailInfo")
	public String showSupplierDetailInfo(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailInfo";
	}

	// P2P显示供应商事件消息
	@RequestMapping(value = "supplierDetailNews")
	public String showSupplierDetailNews(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailNews";
	}

	// P2P显示供应商报告
	@RequestMapping(value = "supplierDetailReport")
	public String showSupplierDetailReport(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailReport";
	}

	// P2P显示供应商团队
	@RequestMapping(value = "supplierDetailTeam")
	public String showSupplierDetailTeam(HttpServletRequest request) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailTeam";
	}

	/** 任务 */
	// P2P显示供应商任务
	@RequestMapping(value = { "supplierDetailTask", "templateSIMTask" })
	public String showSupplierDetailTask(HttpServletRequest request, ModelMap map) {
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		TemplateTaskTreeNode root = supplier.getTemplateTaskTreeNode();
		if (root != null) {
			TemplateTaskTree taskTree = new TemplateTaskTree(root);// 生成任务树
			templateTaskTreeNodeService.generateTemplateTree(taskTree);
			taskTree.traverse();
			JSONArray json = taskTree.supplierTasktraverseToJSONArray();
			map.put("json", json);// json格式的任务树
		}
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailTask";
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
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// SIM模板 - 任务 - 编辑阶段
	@RequestMapping(value = "templateTaskPhaseEdit")
	public String templateTaskPhaseEdit(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		if (id != null) {
			TemplateTaskPhase templateTaskPhase = templateTaskPhaseService.getById(id);
			request.setAttribute("taskPhase", templateTaskPhase);
			return "upStream/template/templateSIM/templateSIMTaskPhaseEdit";
		}
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// SIM模板 - 任务 - 保存编辑阶段
	@RequestMapping(value = "templateTaskPhaseEditSave")
	public String templateSIMTaskPhaseEditSave(TemplateTaskPhase templateTaskPhase, HttpServletRequest request) {
		templateTaskPhaseService.editById(templateTaskPhase);
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// 任务-删除任务树节点(任务阶段和待办任务)
	@RequestMapping(value = "templateTaskTreeNodeDelete")
	public String templateTaskTreeNodeDelete(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskTreeNodeService.deleteById(id);
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
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
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
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
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
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

	// 待办事项标记已开始
	@RequestMapping(value = "templateTaskScheduleMarkStart")
	public String templateTaskScheduleMarkStart(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskScheduleService.setStatus(id, "已开始");
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskScheduleService.getTemplateTaskTreeNode(id);
		templateTaskTreeNodeService.changeStatus(templateTaskTreeNode.getParentId());
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// 待办事项标记已完成
	@RequestMapping(value = "templateTaskScheduleMarkComplete")
	public String templateTaskScheduleMarkComplete(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskScheduleService.setStatus(id, "已完成");
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskScheduleService.getTemplateTaskTreeNode(id);
		templateTaskTreeNodeService.changeStatus(templateTaskTreeNode.getParentId());
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// 待办事项重新激活
	@RequestMapping(value = "templateTaskScheduleReactive")
	public String templateTaskScheduleReactive(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskScheduleService.setStatus(id, "未开始");
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskScheduleService.getTemplateTaskTreeNode(id);
		templateTaskTreeNodeService.changeStatus(templateTaskTreeNode.getParentId());
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// 阶段标记已开始
	@RequestMapping(value = "templateTaskPhaseMarkStart")
	public String templateTaskPhaseMarkStart(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskPhaseService.setStatus(id, "已开始");
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskPhaseService.getTemplateTaskTreeNode(id);
		templateTaskTreeNodeService.changeStatus(templateTaskTreeNode.getParentId());
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// 阶段标记已完成
	@RequestMapping(value = "templateTaskPhaseMarkComplete")
	public String templateTaskPhaseMarkComplete(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskPhaseService.setStatus(id, "已完成");
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskPhaseService.getTemplateTaskTreeNode(id);
		templateTaskTreeNodeService.changeStatus(templateTaskTreeNode.getParentId());
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	// 阶段重新激活
	@RequestMapping(value = "templateTaskPhaseMarkReactive")
	public String templateTaskPhaseMarkReactive(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
		templateTaskPhaseService.setStatus(id, "未开始");
		TemplateTaskTreeNode templateTaskTreeNode = templateTaskPhaseService.getTemplateTaskTreeNode(id);
		templateTaskTreeNodeService.changeStatus(templateTaskTreeNode.getParentId());
		String backTask = (String) request.getSession().getAttribute("backTask");
		return "redirect:" + backTask;
	}

	/** 任务结束 */

	// P2P创建供应商 产生新的供应商标识符
	@RequestMapping(value = "supplierCreation")
	public String creationSupplier(HttpServletRequest request) {
		int uniqueName = service.findMaxUniqueName() + 1;
		request.setAttribute("uniqueName", uniqueName);
		SIMTree simTree = simService.generateSIMTree();
		request.setAttribute("treeData", simTree.traverseToJSONArrayWithoutSelection());
		request.setAttribute("templates", templateService.getActivatedTemplate("SIM"));
		return "upStream/supplier/supplierCreation";
	}

	// P2P传递创建供应商的信息到数据库
	@RequestMapping(value = "supplierAnalyze")
	public String creationSupplierAnalyze(Supplier supplier, HttpServletRequest request) {
		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
		String isSupplier = "是";
		supplier.setIsSupplier(isSupplier);
		User creator = new User();
		creator.setUniqueName(100001);
		supplier.setCreator(creator);
		Template template = new Template();
		template.setType("SIM");
		TemplateTaskTreeNode taskTreeNode = service.generateTaskTree(template);
		supplier.setTemplateTaskTreeNode(taskTreeNode);/** 根据模板生成supplier任务树 */
		service.insertSupplier(supplier);
		// SIM Questionnaire
		// 查找所有问题序号
		List<SupplierSIM> questionObjs = simService.getAllQuestionId();
		List<SupplierSIMAnswer> allAnswers = new ArrayList<SupplierSIMAnswer>();
		// 从前端读取问题号及答案到list
		String[] answers = new String[questionObjs.size()];
		System.out.println(request.getParameter("ans-10002"));
		for (int i = 0; i < questionObjs.size(); i++) {
			int id = questionObjs.get(i).getId();
			answers[i] = request.getParameter("ans-" + id);
			SupplierSIMAnswer answer = new SupplierSIMAnswer();
			answer.setAnswer(answers[i]);
			answer.setSupplierId(uniqueName);
			answer.setQuestionId(id);
			allAnswers.add(answer);
		}
		// 将问卷答案填写至问卷
		simService.insertOrUpdateSIMAnswers(allAnswers);
		return "redirect:../supplier/supplierDetail?id="+uniqueName;
	}

	/* SQM详情 */
	@RequestMapping(value = "sqmSummary")
	public String sqmSummary(HttpServletRequest request, @RequestParam (value = "id", required = false) String id) {
		String backTask = "sqmTask";
		request.getSession().setAttribute("backTask", backTask);
		if(id != null){
			SupplierSQM sqm = sqmService.getSupplierSQM(Integer.parseInt(id));
			request.getSession().setAttribute("sqm", sqm);
			request.setAttribute("sqm", sqm);
		}
		return "upStream/supplier/supplierSQMSummary";
	}

	@RequestMapping(value = "sqmDoc")
	public String sqmDoc(HttpServletRequest request) {
		SupplierSQM sqm = (SupplierSQM) request.getSession().getAttribute("sqm");
		request.setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMdoc";
	}

	@RequestMapping(value = "sqmTask")
	public String sqmTask(HttpServletRequest request, ModelMap map) {
		SupplierSQM sqm = (SupplierSQM) request.getSession().getAttribute("sqm");
		TemplateTaskTreeNode root = sqm.getTemplateTaskTreeNode();
		if (root != null) {
			TemplateTaskTree taskTree = new TemplateTaskTree(root);// 生成任务树
			templateTaskTreeNodeService.generateTemplateTree(taskTree);
			taskTree.traverse();
			JSONArray json = taskTree.supplierTasktraverseToJSONArray();
			map.put("json", json);// json格式的任务树
		}
		request.setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMtask";
	}

	@RequestMapping(value = "sqmTeam")
	public String sqmTeam(HttpServletRequest request) {
		SupplierSQM sqm = (SupplierSQM) request.getSession().getAttribute("sqm");
		request.setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMteam";
	}

	@RequestMapping(value = "sqmInfo")
	public String sqmInfo(HttpServletRequest request) {
		SupplierSQM sqm = (SupplierSQM) request.getSession().getAttribute("sqm");
		request.setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMinfo";
	}

	@RequestMapping(value = "sqmNews")
	public String sqmNews(HttpServletRequest request) {
		SupplierSQM sqm = (SupplierSQM) request.getSession().getAttribute("sqm");
		request.setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMnews";
	}

	@RequestMapping(value = "sqmHistory")
	public String sqmHistory(HttpServletRequest request) {
		SupplierSQM sqm = (SupplierSQM) request.getSession().getAttribute("sqm");
		request.setAttribute("sqm", sqm);
		return "upStream/supplier/supplierSQMhistory";
	}

	@RequestMapping(value = "sqmCreation")
	public String sqmCreation(HttpServletRequest request, @Valid SupplierSQM sqm, BindingResult result, ModelMap map,
			@RequestParam(value = "sqmTemplateId", required = false) Integer sqmTemplateId,
			@RequestParam(value = "commoditiesId", required = false) String commoditiesId,
			@RequestParam(value = "nodeIds", required = false) String nodesId) {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		System.out.println(action);
		if (action.equals("initial")) {
			Template template = new Template();
			template.setType("SQM");
			template.setStatus("已激活");
			List<Template> templates = templateService.get(template);/** 可供选择的模板 */
			SupplierSQM sqmSession = new SupplierSQM();
			request.getSession().setAttribute("sqmSession", sqmSession);
			request.getSession().setAttribute("templates", templates);
			return "upStream/supplier/supplierSQMCreation";
		}
		if (action.equals("back")) {
			SupplierSQM lastSqm = (SupplierSQM) request.getSession().getAttribute("sqmSession");
			
			if(lastSqm.getCommodities()!=null){
				String nodeIds = "";
				String ids = "";
				String names = "";
				for(UNSPSC c: lastSqm.getCommodities()){
					nodeIds += c.getNodeId() + ",";
					ids += c.getId() + ",";
					names += c.getDescription() + ",";
				}
				request.setAttribute("commoditiesName", names);
				request.setAttribute("commoditiesId", ids);
				request.setAttribute("commoditiesNodeId", nodeIds);
				System.out.println(names);
				System.out.println(ids);
			}
			request.setAttribute("sqm", lastSqm);
			return "upStream/supplier/supplierSQMCreation";
		}
		if (action.equals("submit")) {
			sqm.setStatus("待审核");
			SupplierSQM sqmSession = (SupplierSQM) session.getAttribute("sqmSession");
			sqm.setSupplier(sqmSession.getSupplier());
			User user = new User();
			int userUniqueName = (int) session.getAttribute("userUniqueName");
			user.setUniqueName(userUniqueName);
			sqm.setUser(user);

			session.removeAttribute("sqmSession");
			sqm.setId(sqmService.getMaxId() + 1);
			Template template = new Template();
			template.setId(sqmTemplateId);
			TemplateTaskTreeNode taskTreeNode = service.generateTaskTree(template);
			sqm.setTemplateTaskTreeNode(taskTreeNode);// 根据模板设置任务树
			sqmService.InsertSQM(sqm);// 持久化SQM
			SupplierSQMAllowedCode allowedCode = new SupplierSQMAllowedCode();
			allowedCode.setSqm(sqm);
			String oriCode = commoditiesId;
			allowedCode.setSpscCode(oriCode);// 设置原始code，特殊分隔符分开
			//若商品为空，则默认商品id设为0
			if(!nodesId.equals("null")) {
				allowedCode.setNodeId(nodesId);
			}else {
				allowedCode.setNodeId("0");
			}
			allowedCodeService.setAllowedSpscCode(allowedCode);// 设置SQM准入类别，并持久化
			return "redirect:sqmSummary?id=" + sqm.getId();
		}
		;
		return "redirect:sqmSummary?id=" + sqm.getId();
	}
	
	/**
	 * 根据id删除供应商资格sqm
	 * @param id
	 * @return
	 */
	@RequestMapping(value="sqmDelete")
	public @ResponseBody Map<String, String> sqmDelete(@RequestParam String id){
		Map<String, String> result = new HashMap<String, String>();
		try {
			sqmService.deleteSqmById(id);
			result.put("result", "删除成功！");
		} catch (Exception e) {
			e.printStackTrace();
			result.put("result", "操作失败！");
			return result;
		}
		return result;
	}
	
	/* 根据unspsc表选择商品－sqmCreation和sqm搜索的地方会用到 */
	@RequestMapping(value = "selectCommodity")
	public @ResponseBody JSONArray selectCommodity() {
		UNSPSCTree tree = unspscService.generateUNSPSCTree();
		JSONArray result = tree.UNSPSCTreeToJSON();
		return result;
	}
	@RequestMapping(value = "selectSingleCommodity")
	public @ResponseBody JSONArray selectSingleCommodity() {
		UNSPSCTree tree = unspscService.generateUNSPSCTree();
		JSONArray result = tree.UNSPSCTreeToJSON1();
		return result;
	}

	// 创建sqm->选择供应商页
	@RequestMapping(value = "sqmCreationChooseSupplier")
	public String sqmCreateChooseSupplier(SupplierSQM sqm, HttpServletRequest request,
			@RequestParam(value = "sqmTemplateId", required = false) Integer sqmTemplateId,
			@RequestParam(value = "commoditiesId", required = false) String commoditiesId,
			@RequestParam(value = "commoditiesName", required = false) String commoditiesName,
			@RequestParam(value = "nodeIds", required = false) String nodeIds) {
		HttpSession session = request.getSession();
		String target = "upStream/supplier/supplierSQMCreationChooseSupplier";// 跳转页面路径

		String action = request.getParameter("action");
		if (action.equals("reset")) {// 搜索重置
			session.setAttribute("contentSession", "");
			request.setAttribute("num", "-1");// -1表示无项目
			return target;
		}
		if (action.equals("initial")) {
			request.setAttribute("num", "-1");
			if(sqmTemplateId!=null){
				TemplateTaskTreeNode template = new TemplateTaskTreeNode();
				template.setId(sqmTemplateId);
				sqm.setTemplateTaskTreeNode(template);
			}
			if(commoditiesId!="" && commoditiesName != ""){
				String[] ids = commoditiesId.split(",");
				String[] names = commoditiesName.split(",");
				System.out.println(nodeIds);
				String[] nodes = nodeIds.split(",");
				List<UNSPSC> commodities = new ArrayList<UNSPSC>();
				for(int i = 0; i<ids.length; i++){
					UNSPSC un = new UNSPSC();
					un.setId(Integer.parseInt(ids[i]));
					un.setDescription(names[i]);
					un.setNodeId(Integer.parseInt(nodes[i]));
					commodities.add(un);
				}
				sqm.setCommodities(commodities);
			}
			session.setAttribute("sqmSession", sqm);
			return target;
		}
		String content = request.getParameter("content");
		if (action.equals("back")) {
			request.setAttribute("commoditiesName",commoditiesName);
			request.setAttribute("commoditiesId",commoditiesId);
			request.setAttribute("commoditiesNodeId", nodeIds);
			content = (String) request.getSession().getAttribute("sqmSession");
		}
		if (content == null) {
			request.setAttribute("num", "-1");
			return target;
		}
		// search
		if (content.equals("使用名称、标识符或任何其他词语搜索")) {// 默认搜索全部
			List<Supplier> suppliers = service.searchAllSupplier();
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("num", Integer.toString(suppliers.size()));
		} else {// 按条件搜索
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
		}
		request.getSession().setAttribute("contentSession", content);
		return target;
	}

	@RequestMapping(value = "getSelectedSupplier")
	public String getSelectedSupplier(HttpServletRequest request) {
		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
		String name = request.getParameter("name");
		Supplier supplier = new Supplier();
		supplier.setUniqueName(uniqueName);
		supplier.setName(name);
		HttpSession session = request.getSession();
		SupplierSQM sqmSession = (SupplierSQM) session.getAttribute("sqmSession");
		sqmSession.setSupplier(supplier);
		return "redirect: sqmCreation?action=back";
	}
	
	@RequestMapping(value = "sqmEdit")
	public String sqmEdit(HttpServletRequest request, SupplierSQM sqmFin,
			@RequestParam(value = "id", required = true) String id,
			@RequestParam(value = "action", required = true) String action,
			@RequestParam(value = "commoditiesId", required = false) String commoditiesId,
			@RequestParam(value = "commoditiesName", required = false) String commoditiesName,
			@RequestParam(value = "nodeIds", required = false) String nodeIds) {
		SupplierSQM sqm = sqmService.getSupplierSQM(Integer.parseInt(id));
		request.getSession().setAttribute("sqm", sqm);
		request.setAttribute("sqm", sqm);
		HttpSession session = request.getSession();
		if (action.equals("initial")){
			if(sqm.getCommodities()!=null){
				String nodes = "";
				String ids = "";
				String names = "";
				for(UNSPSC c: sqm.getCommodities()){
					nodes += c.getNodeId() + ",";
					ids += c.getId() + ",";
					names += c.getDescription() + ",";
				}
				request.setAttribute("commoditiesName", names);
				request.setAttribute("commoditiesId", ids);
				request.setAttribute("commoditiesNodeId", nodes);
			}
			return "upStream/supplier/supplierSQMEdit";
		}else if(action.equals("back")){
			SupplierSQM lastSqm = (SupplierSQM) request.getSession().getAttribute("sqmSession");
			
			if(lastSqm.getCommodities()!=null){
				String nodes = "";
				String ids = "";
				String names = "";
				for(UNSPSC c: lastSqm.getCommodities()){
					nodes += c.getNodeId() + ",";
					ids += c.getId() + ",";
					names += c.getDescription() + ",";
				}
				request.setAttribute("commoditiesName", names);
				request.setAttribute("commoditiesId", ids);
				request.setAttribute("commoditiesNodeId", nodes);
			}
			request.setAttribute("sqm", lastSqm);
			return "upStream/supplier/supplierSQMEdit";
		}else if(action.equals("submit")){
			//SupplierSQM sqmSession = (SupplierSQM) request.getSession().getAttribute("sqmSession");
			String supplierUniqueName = (String) request.getParameter("supplierUniqueName");
			Supplier supplier = new Supplier();
			supplier.setUniqueName(Integer.parseInt(supplierUniqueName));
			sqmFin.setSupplier(supplier);
			
			session.removeAttribute("sqmSession");
			
			sqmService.updateSQM(sqmFin);// 持久化SQM
			
			SupplierSQMAllowedCode allowedCode = new SupplierSQMAllowedCode();
			allowedCode.setSqm(sqmFin);
			String oriCode = commoditiesId;
			allowedCode.setSpscCode(oriCode);// 设置原始code，特殊分隔符分开
			String oriNodes = nodeIds;
			allowedCode.setNodeId(oriNodes );
			allowedCodeService.modifyAllowedSpscCode(allowedCode);// 设置SQM准入类别，并持久化
			return "redirect:sqmSummary?id=" + sqm.getId();
		}
		return "upStream/supplier/supplierSQMEdit";
	}
	
	// 创建sqm->选择供应商页
	@RequestMapping(value = "sqmEditCreationChooseSupplier")
	public String sqmEditCreateChooseSupplier(SupplierSQM sqm, HttpServletRequest request,
			@RequestParam(value = "commoditiesId", required = false) String commoditiesId,
			@RequestParam(value = "commoditiesName", required = false) String commoditiesName,
			@RequestParam(value = "nodeIds", required = false) String nodeIds) {
		HttpSession session = request.getSession();
		request.setAttribute("sqmId", sqm.getId());
		String target = "upStream/supplier/supplierSQMEditChooseSupplier";// 跳转页面路径

		String action = request.getParameter("action");
		if (action.equals("reset")) {// 搜索重置
			session.setAttribute("contentSession", "");
			request.setAttribute("num", "-1");// -1表示无项目
			return target;
		}
		if (action.equals("initial")) {
			request.setAttribute("num", "-1");
			if(commoditiesId!="" && commoditiesName != ""){
				String[] ids = commoditiesId.split(",");
				String[] names = commoditiesName.split(",");
				System.out.println(nodeIds);
				String[] nodes = nodeIds.split(",");
				List<UNSPSC> commodities = new ArrayList<UNSPSC>();
				for(int i = 0; i<ids.length; i++){
					UNSPSC un = new UNSPSC();
					un.setId(Integer.parseInt(ids[i]));
					un.setDescription(names[i]);
					un.setNodeId(Integer.parseInt(nodes[i]));
					commodities.add(un);
				}
				sqm.setCommodities(commodities);
			}
			session.setAttribute("sqmSession", sqm);
			return target;
		}
		String content = request.getParameter("content");
		if (action.equals("back")) {
			request.setAttribute("commoditiesName",commoditiesName);
			request.setAttribute("commoditiesId",commoditiesId);
			request.setAttribute("commoditiesNodeId", nodeIds);
			content = (String) request.getSession().getAttribute("sqmSession");
		}
		if (content == null) {
			request.setAttribute("num", "-1");
			return target;
		}
		// search
		if (content.equals("使用名称、标识符或任何其他词语搜索")) {// 默认搜索全部
			List<Supplier> suppliers = service.searchAllSupplier();
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("num", Integer.toString(suppliers.size()));
		} else {// 按条件搜索
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
		}
		request.getSession().setAttribute("contentSession", content);
		return target;
	}

	@RequestMapping(value = "sqmEditGetSelectedSupplier")
	public String sqmEditGetSelectedSupplier(HttpServletRequest request,
			@RequestParam(value = "uniqueName", required = true) int uniqueName,
			@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "id", required = true) String id) {
//		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
//		String name = request.getParameter("name");
		Supplier supplier = new Supplier();
		supplier.setUniqueName(uniqueName);
		supplier.setName(name);
		HttpSession session = request.getSession();
		SupplierSQM sqmSession = (SupplierSQM) session.getAttribute("sqmSession");
		sqmSession.setSupplier(supplier);
		return "redirect: sqmEdit?id="+id+"&action=back";
	}

	@RequestMapping(value = "sqmStatus")
	public @ResponseBody SupplierSQM sqmStatus(@RequestParam("sqmId") int sqmId,
			@RequestParam("status") String status) {
		SupplierSQM sqm = new SupplierSQM();
		sqm.setId(sqmId);
		sqm.setStatus(status);
		sqmService.updateSQMStatus(sqm);
		return sqm;
	}

	@RequestMapping(value = "spmCreation")
	public String spmCreation(HttpServletRequest request, @Valid SupplierSPM spm, BindingResult result, ModelMap map) {
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		System.out.println(action);
		request.setAttribute("templates", templateService.getActivatedTemplate("SQM"));
		if (action.equals("initial")) {
			SupplierSPM spmSession = new SupplierSPM();
			request.getSession().setAttribute("spmSession", spmSession);
			return "upStream/supplier/supplierSPMCreation";
		}
		if (action.equals("back")) {
			SupplierSPM lastSpm = (SupplierSPM) request.getSession().getAttribute("spmSession");
			System.out.println(lastSpm.getTitle());
			request.setAttribute("spm", lastSpm);
			return "upStream/supplier/supplierSPMCreation";
		}
		if (action.equals("submit")) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日");
			spm.setStatus("待审核");
			spm.setStartDate(dateFormat.format(new Date()));
			SupplierSPM spmSession = (SupplierSPM) session.getAttribute("spmSession");
			spm.setSupplier(spmSession.getSupplier());
			User user = new User();
			int userUniqueName = (int) session.getAttribute("userUniqueName");
			user.setUniqueName(userUniqueName);
			spm.setUser(user);

			// error
			if (spm.getSupplier() == null) {
				map.put("Error_" + "supplier", "供应商不能为空");
			}
			if (result.hasErrors()) {
				List<FieldError> errorList = result.getFieldErrors();
				for (FieldError error : errorList) {
					System.out.println(error.getField().replace("supplier.", "") + ":" + error.getDefaultMessage());
					map.put("Error_" + error.getField().replace("supplier.", ""), error.getDefaultMessage());
				}
			}
			if (spm.getSupplier() == null || result.hasErrors()) {
				request.setAttribute("spm", spm);
				return "upStream/supplier/supplierSPMCreation";
			}
			session.removeAttribute("spmSession");
			spm.setId(spmService.getMaxId() + 1);
			spmService.InsertSPM(spm);
			return "redirect:spmSummary?id=" + spm.getId();
		}
		;
		return "redirect:spmSummary?id=" + spm.getId();
	}

	// 创建spm->选择供应商页
	@RequestMapping(value = "spmCreationChooseSupplier")
	public String spmChooseSupplier(SupplierSPM spm, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = "upStream/supplier/supplierSPMCreationChooseSupplier";// 跳转页面路径

		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if (action.equals("reset")) {// 搜索重置
			session.setAttribute("contentSession", "");
			request.setAttribute("num", "-1");// -1表示无项目
			return target;
		}
		String content = request.getParameter("content");
		if (action.equals("initial")) {//
			request.setAttribute("num", "-1");
			System.out.println("spmCreationChooseSupplier" + spm.getTitle());
			session.setAttribute("spmSession", spm);
			return target;
			// }
		}
		if (action.equals("back")) {
			content = (String) request.getSession().getAttribute("spmSession");

		}
		if (content == null) {
			request.setAttribute("num", "-1");
			return target;
		}
		// search
		System.out.println("Search for content: " + content);
		if (content.equals("使用名称、标识符或任何其他词语搜索")) {// 默认搜索全部
			List<Supplier> suppliers = service.searchAllSupplier();
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有" + Integer.toString(suppliers.size()) + "个搜索结果");
		} else {// 按条件搜索
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有" + Integer.toString(suppliers.size()) + "个搜索结果");
		}
		request.getSession().setAttribute("contentSession", content);
		return target;
	}

	@RequestMapping(value = "spmGetSelectedSupplier")
	public String spmGetSelectedSupplier(HttpServletRequest request) {
		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
		String name = request.getParameter("name");
		Supplier supplier = new Supplier();
		supplier.setUniqueName(uniqueName);
		supplier.setName(name);

		HttpSession session = request.getSession();
		SupplierSPM spmSession = (SupplierSPM) session.getAttribute("spmSession");
		spmSession.setSupplier(supplier);
		session.setAttribute("spmSession", spmSession);
		return "redirect: spmCreation?action=back";
	}

	/* SQM搜索 */
	@RequestMapping(value = "spmSearching")
	public String spmSearching(HttpServletRequest request) {
		String action = request.getParameter("action");
		if (action.equals("reset") || action.equals("initial")) {
			request.getSession().setAttribute("contentSession", null);
			request.setAttribute("num", null);
			return "upStream/supplier/supplierSPMSearching";
		}
		String content = (String) request.getSession().getAttribute("content");
		System.out.println(content);
		if (content == null) {
			content = request.getParameter("content");
		} else {
			request.getSession().removeAttribute("content");
		}
		// search
		System.out.println("Search for content: " + content);
		if (content == null) {
			List<SupplierSPM> supplierSPMs = spmService.searchAllSupplierSPM();
			request.setAttribute("supplierSPMs", supplierSPMs);
			request.setAttribute("num", Integer.toString(supplierSPMs.size()));
			System.out.println("共有" + Integer.toString(supplierSPMs.size()) + "个搜索结果");
		} else {
			List<SupplierSPM> supplierSPMs = spmService.searchSupplierSPM(content);
			request.setAttribute("supplierSPMs", supplierSPMs);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(supplierSPMs.size()));
			System.out.println("共有" + Integer.toString(supplierSPMs.size()) + "个搜索结果");
		}

		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSPMSearching";
	}

	/* SPM详情 */
	@RequestMapping(value = "spmSummary")
	public String spmSummary(HttpServletRequest request) {
		SupplierSPM spm = null;
		if (request.getSession().getAttribute("spm") == null) {
			int id = Integer.parseInt(request.getParameter("id"));
			spm = spmService.getSupplierSPM(id);
			request.getSession().setAttribute("spm", spm);
		} else {
			spm = (SupplierSPM) request.getSession().getAttribute("spm");
		}
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMsummary";
	}

	/* SPM详情 */
	@RequestMapping(value = "spmDoc")
	public String spmDoc(HttpServletRequest request) {
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMdoc";
	}

	/* SPM详情 */
	@RequestMapping(value = "spmTask")
	public String spmTask(HttpServletRequest request) {
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMtask";
	}

	/* SPM详情 */
	@RequestMapping(value = "spmTeam")
	public String spmTeam(HttpServletRequest request) {
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMteam";
	}

	/* SPM详情 */
	@RequestMapping(value = "spmInfo")
	public String spmInfo(HttpServletRequest request) {
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMinfo";
	}

	/* SPM详情 */
	@RequestMapping(value = "spmNews")
	public String spmNews(HttpServletRequest request) {
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMnews";
	}

	/* SIM Questionnaire */
	@ResponseBody
	@RequestMapping(value = "addMultipleQuestion")
	public SupplierQuestion addMultipleQuestion(@RequestParam("question") String question, @RequestParam("a") String a,
			@RequestParam("b") String b, @RequestParam("c") String c, @RequestParam("d") String d,
			@RequestParam("supplierId") String supplierId) {
		int supplierUniqueName = Integer.parseInt(supplierId);
		SupplierQuestion sq = new SupplierQuestion();
		Supplier supplier = new Supplier();
		supplier.setUniqueName(supplierUniqueName);
		System.out.println(question);
		sq.setSupplier(supplier);
		sq.setQuestion(question);
		sq.setA(a);
		sq.setB(b);
		sq.setC(c);
		sq.setD(d);
		sq.setType(1);
		sq.setId(simqService.getSupplierQuestionId());
		simqService.insertSupplierQuestion(sq);
		return sq;
	}

	@RequestMapping(value = "addBlankQuestion")
	public @ResponseBody String addBlankQuestion(HttpServletRequest request) {
		return "";
	}
}
