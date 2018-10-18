package com.ProcurementSystem.interceptor;

import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class LoginInterceptor implements HandlerInterceptor{
	@Override
    public boolean preHandle(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response, Object handler) throws Exception {
       //首先进入的方法
        System.out.println("preHandle");
        //return false表示拦截，不向下执行
         //return true表示放行
        System.out.println(request.getServletPath());
        HttpSession session = request.getSession();
        String user = (String) session.getAttribute("username");
        if(user != null && user != ""){
            return true;
        }else{
        		response.sendRedirect("/ProcurementSystem/login");
        		//request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
        		return false;
        }

    }
    //返回modelAndView之前执行
    @Override
    public void postHandle(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle");
    }
    //执行Handler完成执行此方法
    @Override
    public void afterCompletion(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response, Object handler, Exception ex) throws Exception {

        System.out.println("afterCompletion");
    }
}
