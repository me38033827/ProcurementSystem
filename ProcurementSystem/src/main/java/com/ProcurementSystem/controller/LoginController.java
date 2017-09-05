package com.ProcurementSystem.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.service.LoginService;

@Controller
public class LoginController {

	@Resource
	LoginService service;

	@RequestMapping(value = "login")
	public String login(Login login, HttpServletRequest request){
	
		if(login.getUsername()==null || login.getUsername().equals("") || login.getPassword().equals("")){
			return "login";
		}
		
		System.out.println("123");
		
		String username = login.getUsername();
		String role = login.getRole();
		
		// login为从页面上获取的登录信息，loginResult为从数据库中返回的登录信息
		List<Login> loginResult = service.getLoginInformation(login);
		int numOfResults = loginResult.size();
		
		// 判断是否有相关的登录信息
		if(numOfResults==1){
			// 成功登录，将supplierUniqueName/buyerUniqueName以及username存储到session中
			HttpSession session = request.getSession();
			
			if(role.equals("supplier")){
				session.setAttribute("supplierUniqueName", loginResult.get(0).getSupplierUniqueName());
				session.setAttribute("username", username);
				System.out.println("Login SUPPLIER " + username + " successfully!");
				//System.out.println(loginResult.get(0).getSupplierUniqueName());
				return "redirect:supplier/main";
			}
			if(role.equals("buyer")){
				session.setAttribute("userUniqueName", loginResult.get(0).getUserUniqueName());
				session.setAttribute("username", username);
				System.out.println("Login USER " + username + " successfully!");
				//System.out.println(loginResult.get(0).getUserUniqueName());
				return "redirect:buyer/main";
			}
		}
		if(numOfResults==0){
			int usernameExistance = service.getUsernameExistance(login);
			request.setAttribute("loginInfo", login);
			request.setAttribute("role", login.getRole());
			if(usernameExistance==0){
				request.setAttribute("error", "username");
				System.out.println("Username does not exist!");
			}else{
				request.setAttribute("error", "password");
				System.out.println("Wrong password!");
			}
		}
		return "login";
	}
	
	@RequestMapping(value = "logout")
	public String logout(HttpServletRequest request){
		return "redirect:login";
	}
	
}
