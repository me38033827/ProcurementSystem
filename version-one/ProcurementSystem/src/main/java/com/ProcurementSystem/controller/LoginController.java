package com.ProcurementSystem.controller;

import java.util.Objects;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ProcurementSystem.entity.Login;
import com.ProcurementSystem.entity.User;
import com.ProcurementSystem.service.BuyerCommodityService;
import com.ProcurementSystem.service.BuyerUserService;
import com.ProcurementSystem.service.LoginService;

@Controller
public class LoginController {

	@Resource
	LoginService service;
	@Resource
	BuyerCommodityService commodityService;
	@Resource
	BuyerUserService userService;

	@RequestMapping(value = "login")
	public String login(Login login, HttpServletRequest request) {
		if (login.getUsername() == null || login.getUsername().equals("") || login.getPassword().equals("")) {
			return "login";
		}

		String username = login.getUsername();
		String role = login.getRole();

		// login为从页面上获取的登录信息，loginResult为从数据库中返回的登录信息
		Login loginResult = service.getLoginInformation(login);

		// 判断是否有相关的登录信息
		if (loginResult != null) {

			// //生成商品目录导航
			// NavTree navTree = commodityService.generateCommodityNav();
			// request.getServletContext().setAttribute("navTree", navTree);
			// 成功登录，将supplierUniqueName/buyerUniqueName以及username存储到session中
			HttpSession session = request.getSession();
			if (role.equals("supplier")) {
				int a = loginResult.getSupplier().getUniqueName();
				System.out.println("adsfsd");
				session.setAttribute("supplierUniqueName", loginResult.getSupplier().getUniqueName());
				session.setAttribute("username", username);
				System.out.println("Login SUPPLIER " + username + " successfully!");
				// System.out.println(loginResult.get(0).getSupplierUniqueName());
				return "redirect:supplier/main";
			}
			if (role.equals("buyer")) {
				int uniqueName = loginResult.getUser().getUniqueName();
				User user = userService.getUserDetail(uniqueName+"");
				if(Objects.equals(user.getStatus(), "已停用")) {
					request.setAttribute("loginInfo", login);
					request.setAttribute("error", "stopUsed");
					request.setAttribute("role", login.getRole());
					System.out.println("The user is stopUsed!");
					return "login";
				}
				session.setAttribute("userUniqueName", uniqueName);
				session.setAttribute("username", username);
				System.out.println("Login USER " + username + " successfully!");
				// System.out.println(loginResult.get(0).getUserUniqueName());
				return "redirect:buyer/main";
			}
		}
		int usernameExistance = service.getUsernameExistance(login);
		request.setAttribute("loginInfo", login);
		request.setAttribute("role", login.getRole());
		if (usernameExistance == 0) {
			request.setAttribute("error", "username");
			System.out.println("Username does not exist!");
		} else {
			request.setAttribute("error", "password");
			System.out.println("Wrong password!");
		}
		return "login";
	}

	

	@RequestMapping(value = "logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("sqm");
		session.removeAttribute("spm");
		session.removeAttribute("supplierUniqueName");
		// interceptor相关
		session.removeAttribute("username");
		return "redirect:login";
	}

}
