package com.ProcurementSystem.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
import org.springframework.web.multipart.MultipartFile;

import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.entity.Supplier;
import com.ProcurementSystem.entity.SupplierQuestion;
import com.ProcurementSystem.entity.SupplierSPM;
import com.ProcurementSystem.entity.SupplierSQM;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.service.SupplierSIMQService;
import com.ProcurementSystem.service.SupplierSPMService;
import com.ProcurementSystem.service.SupplierSQMService;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "buyer/supplier")
public class BuyerSupplierController {
	
	@Resource
	SupplierService service;
	@Resource
	SupplierSQMService sqmService;
	@Resource
	SupplierSPMService spmService;
	@Resource
	SupplierSIMQService simqService;
	
	@RequestMapping(value = "supplierSearchDistribute")
	public String supplierSearchDistribute(HttpServletRequest request){
		String type = request.getParameter("searchType");
		String content = request.getParameter("content");
		System.out.println(type);
		System.out.println(content);
		if(type.equals("spm")||type.equals("sqm")){
			if(content==null){
				return "redirect:" + type + "Searching?action=initial";
			}else{
				request.getSession().setAttribute("content", content);
				return "redirect:" + type + "Searching?action=search";
			}
		}
		if(type.equals("supplier")){
			if(content==null){
				return "redirect:supplierSearch?action=initial";
			}else{
				request.getSession().setAttribute("content", content);
				return "redirect:supplierSearch?action=search";
			}
		}
		return "";
	}
	
	//供应商搜索功能页面
	@RequestMapping(value = "supplierSearch")
	public String supplierSearch(HttpServletRequest request){
		request.getSession().removeAttribute("supplierSession");
		request.getSession().removeAttribute("supplierQuestions");
		System.out.println("---Controller: supplierSearch---");
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if(action.equals("reset")){
			request.getSession().setAttribute("contentSession","");
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}
		String content = (String) request.getSession().getAttribute("content");
		System.out.println(content);
		if(content==null){
			content = request.getParameter("content");
		}else{
			request.getSession().removeAttribute("content");
		}
		if(action.equals("initial")){
			request.getSession().setAttribute("contentSession", content);
			System.out.println(content);
			if(content.equals("使用名称、标识符或任何其他词语搜索")){
				request.setAttribute("num", "-1");
				return "upStream/supplier/supplierSearching";
			}
		}
		
		if(action.equals("back")){
			content=(String) request.getSession().getAttribute("contentSession");
		}

		if(content==null){
			request.setAttribute("num", "-1");
			return "upStream/supplier/supplierSearching";
		}
		
		// search
		System.out.println("Search for content: " + content);
		if(content==""){
			List<Supplier> suppliers = service.searchAllSupplier();
			request.setAttribute("suppliers", suppliers);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}else{
			List<Supplier> suppliers = service.searchSupplier(content);
			request.setAttribute("suppliers", suppliers);
			request.getSession().setAttribute("contentSession", content);
			request.setAttribute("num", Integer.toString(suppliers.size()));
			System.out.println("共有"+Integer.toString(suppliers.size())+"个搜索结果");
		}
		
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSearching";
	}
	
	//P2P显示供应商概要
	@RequestMapping(value = "supplierDetail")
	public String showSupplierDetail(HttpServletRequest request){
		HttpSession session = request.getSession();
		Supplier supplier = null;
		List<SupplierQuestion> supplierQuestions = null;
		if(session.getAttribute("supplierSession")!=null){
			 supplier = (Supplier) session.getAttribute("supplierSession");
			 supplierQuestions = (List<SupplierQuestion>) session.getAttribute("supplierQuestions");
		}else{
			String uniqueNameStr = request.getParameter("id");
			int uniqueName = -1;
			System.out.println(uniqueNameStr);
			if(uniqueNameStr!=null){
				uniqueName = Integer.parseInt(uniqueNameStr);
				session.setAttribute("uniqueName", uniqueName);
			}else{
				uniqueName = (int) session.getAttribute("uniqueName");
				
			}
			supplier = service.getSupplierDetail(uniqueName);
			supplierQuestions = simqService.searchQA(uniqueName);
			session.setAttribute("supplierSession", supplier);
			session.setAttribute("supplierQuestions", supplierQuestions);
		}
		request.setAttribute("supplier", supplier);
		request.setAttribute("supplierQuestions", supplierQuestions);
		return "upStream/supplier/supplierDetail";
	}
	
	//P2P显示供应商概述
	@RequestMapping(value = "supplierDetailSummary")
	public String showSupplierDetailSummary(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailSummary";
	}
	
	//P2P显示供应商文档
	@RequestMapping(value = "supplierDetailDoc")
	public String showSupplierDetailDoc(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailDoc";
	}
	
	//P2P显示供应商历史记录
	@RequestMapping(value = "supplierDetailHistory")
	public String showSupplierDetailHistory(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailHistory";
	}
	
	//P2P显示供应商信息板
	@RequestMapping(value = "supplierDetailInfo")
	public String showSupplierDetailInfo(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailInfo";
	}
	
	//P2P显示供应商事件消息
	@RequestMapping(value = "supplierDetailNews")
	public String showSupplierDetailNews(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailNews";
	}
	
	//P2P显示供应商报告
	@RequestMapping(value = "supplierDetailReport")
	public String showSupplierDetailReport(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailReport";
	}
	
	//P2P显示供应商团队
	@RequestMapping(value = "supplierDetailTeam")
	public String showSupplierDetailTeam(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailTeam";
	}
	
	//P2P显示供应商任务
	@RequestMapping(value = "supplierDetailTask")
	public String showSupplierDetailTask(HttpServletRequest request){
		Supplier supplier = (Supplier) request.getSession().getAttribute("supplierSession");
		request.setAttribute("supplier", supplier);
		return "upStream/supplier/supplierDetailTask";
	}
	
	//P2P创建供应商 产生新的供应商标识符
	@RequestMapping(value = "supplierCreation")
	public String creationSupplier(HttpServletRequest request){
		int uniqueName = service.findMaxUniqueName()+1;
		request.setAttribute("uniqueName", uniqueName);
		
		return "upStream/supplier/supplierCreation";
	}
	
	//P2P传递创建供应商的信息到数据库
	@RequestMapping(value = "supplierAnalyze")
	public String creationSupplierAnalyze(Supplier supplier, HttpServletRequest request){
		System.out.println("123123123");
		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
		String isSupplier = "是";
		supplier.setIsSupplier(isSupplier);
		service.insertSupplier(supplier);
		List<SupplierQuestion> supplierQuestions = simqService.searchQA(uniqueName);
		for(int i=0; i<supplierQuestions.size();i++){
			supplierQuestions.get(i).setAnswer(request.getParameter("question"+supplierQuestions.get(i).getId()));
			simqService.updateAnswer(supplierQuestions.get(i));
		}
		System.out.println(supplierQuestions.get(0).getAnswer());
		return "redirect:supplierSearch?action=back";
	}
	
	/* SQM搜索 */
	@RequestMapping(value = "sqmSearching")
	public String sqmSearching(HttpServletRequest request){
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if(action.equals("reset")||action.equals("initial")){
			request.getSession().setAttribute("contentSession", null);
			request.setAttribute("num", null);
			return "upStream/supplier/supplierSQMSearching";
		}
		String content = (String) request.getSession().getAttribute("content");
		System.out.println(content);
		if(content==null){
			content = request.getParameter("content");
		}else{
			request.getSession().removeAttribute("content");
		}
		// search
		System.out.println("Search for content: " + content);
		if(content==null){
			List<SupplierSQM> supplierSQMs = sqmService.searchAllSupplierSQM();
			request.setAttribute("supplierSQMs", supplierSQMs);
			request.setAttribute("num", Integer.toString(supplierSQMs.size()));
			System.out.println("共有"+Integer.toString(supplierSQMs.size())+"个搜索结果");
		}else{
			List<SupplierSQM> supplierSQMs = sqmService.searchSupplierSQM(content);
			request.setAttribute("supplierSQMs", supplierSQMs);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(supplierSQMs.size()));
			System.out.println("共有"+Integer.toString(supplierSQMs.size())+"个搜索结果");
		}
		
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSQMSearching";
	}
	
	/* SQM详情 */
	@RequestMapping(value = "sqmSummary")
	public String sqmSummary(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		SupplierSQM sqm = sqmService.getSupplierSQM(id);
		request.getSession().setAttribute("sqm", sqm);
		request.setAttribute("sqm", sqm);
		System.out.println(sqm.getLastValid());
		return "upStream/supplier/supplierSQMsummary";
	}
	
	@RequestMapping(value = "sqmDoc")
	public String sqmDoc(HttpServletRequest request){
		return "upStream/supplier/supplierSQMdoc";
	}
	
	@RequestMapping(value = "sqmTask")
	public String sqmTask(HttpServletRequest request){
		return "upStream/supplier/supplierSQMtask";
	}
	
	@RequestMapping(value = "sqmTeam")
	public String sqmTeam(HttpServletRequest request){
		return "upStream/supplier/supplierSQMteam";
	}
	
	@RequestMapping(value = "sqmInfo")
	public String sqmInfo(HttpServletRequest request){
		return "upStream/supplier/supplierSQMinfo";
	}
	
	@RequestMapping(value = "sqmNews")
	public String sqmNews(HttpServletRequest request){
		return "upStream/supplier/supplierSQMnews";
	}
	
	@RequestMapping(value = "sqmHistory")
	public String sqmHistory(HttpServletRequest request){
		return "upStream/supplier/supplierSQMhistory";
	}
	
	@RequestMapping(value = "sqmCreation")
	public String sqmCreation(HttpServletRequest request, @Valid SupplierSQM sqm,
			BindingResult result, ModelMap map){
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equals("initial")){
			SupplierSQM sqmSession = new SupplierSQM();
			request.getSession().setAttribute("sqmSession", sqmSession);
			return "upStream/supplier/supplierSQMcreation";
		}
		if(action.equals("back")){
			SupplierSQM lastSqm = (SupplierSQM) request.getSession().getAttribute("sqmSession");
			System.out.println(lastSqm.getTitle());
			request.setAttribute("sqm", lastSqm);
			return "upStream/supplier/supplierSQMcreation";
		}
		if(action.equals("submit")){	
			System.out.println("Submit:" + sqm.getTitle());
			sqm.setStatus("待审核");
			SupplierSQM sqmSession = (SupplierSQM)session.getAttribute("sqmSession");
			sqm.setSupplier(sqmSession.getSupplier());
			User user = new User();
			int userUniqueName = (int) session.getAttribute("userUniqueName");
			user.setUniqueName(userUniqueName);
			sqm.setUser(user);
			
			//error
			if(sqm.getSupplier()==null){
				map.put("Error_"+"supplier", "供应商不能为空");
			}
			if (result.hasErrors()) {
				List<FieldError> errorList = result.getFieldErrors();
				for (FieldError error : errorList) {
					System.out.println(error.getField().replace("supplier.", "") + ":" + error.getDefaultMessage());
					map.put("Error_" + error.getField().replace("supplier.", ""), error.getDefaultMessage());
				}
			}
			if(sqm.getSupplier()==null||result.hasErrors()){
				request.setAttribute("sqm",sqm);
				return "upStream/supplier/supplierSQMcreation";
			}
			session.removeAttribute("sqmSession");
			sqm.setId(sqmService.getMaxId()+1);
			sqmService.InsertSQM(sqm);
			return "redirect:sqmSummary?id="+sqm.getId();
		};
		return "redirect:sqmSummary?id="+sqm.getId();
	}
	
	// 创建sqm->选择供应商页
	@RequestMapping(value = "sqmCreationChooseSupplier")
	public String sqmCreateChooseSupplier(SupplierSQM sqm, HttpServletRequest request) {
		HttpSession session = request.getSession();
		String target = "upStream/supplier/supplierSQMCreationChooseSupplier";// 跳转页面路径
		
		String action = request.getParameter("action");
		System.out.println("action is " + action);
		if (action.equals("reset")) {// 搜索重置
			session.setAttribute("contentSession", "");
			request.setAttribute("num", "-1");// -1表示无项目
			return target;
		}
		if (action.equals("initial")) {//
			request.setAttribute("num", "-1");
			System.out.println("sqmCreationChooseSupplier" + sqm.getTitle());
			session.setAttribute("sqmSession", sqm);
			return target;
			// }
		}
		String content = request.getParameter("content");
		if (action.equals("back")) {
			content =  (String)request.getSession().getAttribute("sqmSession");
			
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
	
	@RequestMapping(value = "getSelectedSupplier")
	public String getSelectedSupplier(HttpServletRequest request){
		int uniqueName = Integer.parseInt(request.getParameter("uniqueName"));
		String name = request.getParameter("name");
		Supplier supplier = new Supplier();
		supplier.setUniqueName(uniqueName);
		supplier.setName(name);
//		System.out.println(user.getUniqueName());
//		System.out.println(user.getName());
		
		HttpSession session = request.getSession();
		SupplierSQM sqmSession = (SupplierSQM) session.getAttribute("sqmSession");
		sqmSession.setSupplier(supplier);
		session.setAttribute("sqmSession", sqmSession);
//		System.out.println("success in choose!");
//		System.out.println(sqmSession.getTitle());
		return "redirect: sqmCreation?action=back";
	}
	
	@RequestMapping(value = "sqmStatus")
	public @ResponseBody SupplierSQM sqmStatus(@RequestParam("sqmId") int sqmId, @RequestParam("status") String status){
		SupplierSQM sqm = new SupplierSQM();
		sqm.setId(sqmId);
		sqm.setStatus(status);
		sqmService.updateSQMStatus(sqm);
		return sqm;
	}
	
	@RequestMapping(value = "spmCreation")
	public String spmCreation(HttpServletRequest request, @Valid SupplierSPM spm,
		BindingResult result, ModelMap map){
		HttpSession session = request.getSession();
		String action = request.getParameter("action");
		System.out.println(action);
		if(action.equals("initial")){
			SupplierSPM spmSession = new SupplierSPM();
			request.getSession().setAttribute("spmSession", spmSession);
			return "upStream/supplier/supplierSPMcreation";
		}
		if(action.equals("back")){
			SupplierSPM lastSpm = (SupplierSPM) request.getSession().getAttribute("spmSession");
			System.out.println(lastSpm.getTitle());
			request.setAttribute("spm", lastSpm);
			return "upStream/supplier/supplierSPMcreation";
		}
		if(action.equals("submit")){	
			SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日");
			spm.setStatus("待审核");
			spm.setStartDate(dateFormat.format(new Date()));
			SupplierSPM spmSession = (SupplierSPM)session.getAttribute("spmSession");
			spm.setSupplier(spmSession.getSupplier());
			User user = new User();
			int userUniqueName = (int) session.getAttribute("userUniqueName");
			user.setUniqueName(userUniqueName);
			spm.setUser(user);
			
			//error
			if(spm.getSupplier()==null){
				map.put("Error_"+"supplier", "供应商不能为空");
			}
			if (result.hasErrors()) {
				List<FieldError> errorList = result.getFieldErrors();
				for (FieldError error : errorList) {
					System.out.println(error.getField().replace("supplier.", "") + ":" + error.getDefaultMessage());
					map.put("Error_" + error.getField().replace("supplier.", ""), error.getDefaultMessage());
				}
			}
			if(spm.getSupplier()==null||result.hasErrors()){
				request.setAttribute("spm",spm);
				return "upStream/supplier/supplierSPMcreation";
			}
			session.removeAttribute("spmSession");
			spm.setId(spmService.getMaxId()+1);
			spmService.InsertSPM(spm);
			return "redirect:spmSummary?id="+spm.getId();
		};
		return "redirect:spmSummary?id="+spm.getId();
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
			content =  (String)request.getSession().getAttribute("spmSession");
			
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
	public String spmGetSelectedSupplier(HttpServletRequest request){
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
	public String spmSearching(HttpServletRequest request){
		String action = request.getParameter("action");
		if(action.equals("reset")||action.equals("initial")){
			request.getSession().setAttribute("contentSession", null);
			request.setAttribute("num", null);
			return "upStream/supplier/supplierSPMSearching";
		}
		String content = (String) request.getSession().getAttribute("content");
		System.out.println(content);
		if(content==null){
			content = request.getParameter("content");
		}else{
			request.getSession().removeAttribute("content");
		}
		// search
		System.out.println("Search for content: " + content);
		if(content==null){
			List<SupplierSPM> supplierSPMs = spmService.searchAllSupplierSPM();
			request.setAttribute("supplierSPMs", supplierSPMs);
			request.setAttribute("num", Integer.toString(supplierSPMs.size()));
			System.out.println("共有"+Integer.toString(supplierSPMs.size())+"个搜索结果");
		}else{
			List<SupplierSPM> supplierSPMs = spmService.searchSupplierSPM(content);
			request.setAttribute("supplierSPMs", supplierSPMs);
			request.setAttribute("content", content);
			request.setAttribute("num", Integer.toString(supplierSPMs.size()));
			System.out.println("共有"+Integer.toString(supplierSPMs.size())+"个搜索结果");
		}
		
		request.getSession().setAttribute("contentSession", content);
		return "upStream/supplier/supplierSPMSearching";
	}
	
	/* SPM详情 */
	@RequestMapping(value = "spmSummary")
	public String spmSummary(HttpServletRequest request){
		SupplierSPM spm = null;
		if(request.getSession().getAttribute("spm")==null){
			int id = Integer.parseInt(request.getParameter("id"));
			spm = spmService.getSupplierSPM(id);
			request.getSession().setAttribute("spm", spm);
		}else{
			spm = (SupplierSPM) request.getSession().getAttribute("spm");
		}
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMsummary";
	}
	
	/* SPM详情 */
	@RequestMapping(value = "spmDoc")
	public String spmDoc(HttpServletRequest request){
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMdoc";
	}
	
	/* SPM详情 */
	@RequestMapping(value = "spmTask")
	public String spmTask(HttpServletRequest request){
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMtask";
	}
	
	/* SPM详情 */
	@RequestMapping(value = "spmTeam")
	public String spmTeam(HttpServletRequest request){
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMteam";
	}
	
	/* SPM详情 */
	@RequestMapping(value = "spmInfo")
	public String spmInfo(HttpServletRequest request){
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMinfo";
	}
	
	/* SPM详情 */
	@RequestMapping(value = "spmNews")
	public String spmNews(HttpServletRequest request){
		SupplierSPM spm = (SupplierSPM) request.getSession().getAttribute("spm");
		request.setAttribute("spm", spm);
		return "upStream/supplier/supplierSPMnews";
	}
	
	/* SIM Questionnaire*/
	@ResponseBody
	@RequestMapping(value = "addMultipleQuestion")
	public SupplierQuestion addMultipleQuestion(
			@RequestParam("question") String question,
			@RequestParam("a") String a,
			@RequestParam("b") String b,
			@RequestParam("c") String c,
			@RequestParam("d") String d,
			@RequestParam("supplierId") String supplierId){
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
	public @ResponseBody String addBlankQuestion(HttpServletRequest request){
		return "";
	}
}
