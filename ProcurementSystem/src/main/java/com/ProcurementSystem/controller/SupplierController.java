package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.service.LoginService;
import com.ProcurementSystem.service.SupplierService;

@Controller
@RequestMapping(value = "supplier")
public class SupplierController {
	
	@Resource
	SupplierService supplierService;
	@Resource
	LoginService loginService;
	
	
	//AN主页
	@RequestMapping(value = "main")
	public String main(){
		return "supplier/main";
	}
	
	//AN注册
	@RequestMapping(value = "signUp")
	public String signUpAnalyze(HttpServletRequest request, @Valid Login login,
			BindingResult result, ModelMap map){
		
		//	判断是不是刚刚进入signup界面
		String signup = (String) request.getParameter("signup");
		if(signup!=null){
			System.out.println("sign up");
			return "supplier/signUp";
		}
		System.out.println("sign up again");
		// 数据校验
		String password = login.getPassword();
		String confirmPsd = request.getParameter("confirmPsd");
		if(confirmPsd==""){
			System.out.println("confirm password"+":"+"确认密码不能为空");
			map.put("Error_"+"confirmPsd", "确认密码不能为空");
		}else{
			if(!password.equals(confirmPsd)){
				System.out.println("confirm password"+":"+"两次密码不相同！");
				map.put("Error_"+"confirmPsd", "两次密码不相同！");
			}
		}
		if (result.hasErrors()) {
			List<FieldError> errorList = result.getFieldErrors();
			for (FieldError error : errorList) {
				System.out.println(error.getField().replace("supplier.", "") + ":" + error.getDefaultMessage());
				map.put("Error_" + error.getField().replace("supplier.", ""), error.getDefaultMessage());
			}
			return "supplier/signUp";
		}
		
		System.out.println("success");
		
		int uniqueName = supplierService.findMaxUniqueName()+1;
		login.getSupplier().setUniqueName(uniqueName);
		login.getSupplier().setApproveState("待审批");
		supplierService.insertSupplier(login.getSupplier());
		
		loginService.insertSupplierLogin(login);
		return "redirect:../login";
	}
	
}
