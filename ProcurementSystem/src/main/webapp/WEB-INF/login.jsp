<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="/ProcurementSystem/css/bootstrap.css" rel="stylesheet" />
<link href="/ProcurementSystem/css/styles.css" rel="stylesheet" />
<script type="text/javascript" src="/ProcurementSystem/js/jquery.js"></script>
<%-- <link rel="stylesheet" type="text/css" href='<c:url value="css/style.css"></c:url>'>
<link rel="stylesheet" type="text/css" href='<c:url value="css/bootstrap.css"></c:url>'>
<script type="text/javascript" src='<c:url value="js/jquery.js"></c:url>'></script> --%>
<script>
</script>
</head>
<body>
	<div class="htmleaf-container" >
		<div class="wrapper">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<h1>欢迎</h1>

						<form class="form" method = "post">
							<input type="text" placeholder="用户名" name="username" class="inputLogin" id="username"
								<%if(request.getAttribute("loginInfo")!=null)
								{%>value="${login.username}"
								<%}%> style="margin-bottom:0;"
							> 
							<div style="height:26px;width:300px; text-align:right;">
							<input id="useralert" style="background-color:transparent; text-align:right; border:0;color:red; font-weight:bold; line-height:26px;" <%if(request.getAttribute("loginInfo")!=null){
									if(request.getAttribute("error").equals("username")){%>
									value="用户名不存在！"
								<%}} %> disabled
								/>
							</div>
							<input type="password"  name="password" placeholder="密码" class="inputLogin" id="psd"
								<%if(request.getAttribute("loginInfo")!=null)
								{%>value="${login.password}"
								<%} %> style="margin-bottom:0;"
							>
							<div style="height:26px;width:300px; text-align:right;">
							<input id="psdalert" style="background-color:transparent; text-align:right; border:0;color:red; font-weight:bold; line-height:26px;" <%if(request.getAttribute("loginInfo")!=null){
									if(request.getAttribute("error").equals("password")){ %>
									value="密码错误！"
								<%}} %> disabled
								/>
							</div>
							<div style="height:26px;width:300px; text-align:right;">
							<input id="stopUsed" style="background-color:transparent; text-align:right; border:0;color:red; font-weight:bold; line-height:26px;" <%if(request.getAttribute("loginInfo")!=null){
									if(request.getAttribute("error").equals("stopUsed")){ %>
									value="该账户已停用！"
								<%}} %> disabled
								/>
							</div>
							
							<div class="radio" style="margin-bottom:2px; margin-top:-2px; font-size:16px; width:200px; display:inline-block" onChange="showSignUp();">
								<label> <input type="radio" name="role" id="buyer" value="buyer"
								<%if(request.getAttribute("loginInfo")!=null){
									if(request.getAttribute("role").equals("buyer")){%>checked
								<%}}else{%>
									checked
								<%} %>
								> 采购方
								</label> &nbsp;&nbsp;&nbsp;
								<label> <input type="radio" name="role" id="supplier" value="supplier"
								<%if(request.getAttribute("loginInfo")!=null){
									if(request.getAttribute("role").equals("supplier")){%>checked
								<%}}%>
								> 供应商
								</label>
							</div>
							<div style="display:inline-block; width:95px; text-align:right;height:24px;">
								

								<%-- <button form="initialSignUp" <%if(request.getAttribute("loginInfo")!=null){
=======
								<button form="initialSignUp" style="border:0;width:100px;background-color:transparent; font-size:13px; width:100px; height:24px;margin-top:0;" <%if(request.getAttribute("loginInfo")!=null){

									if(request.getAttribute("role").equals("buyer")){%>hidden="hidden" 
								<%}}else{%> hidden="hidden" <%} %>
								id="signup" >注册供应商</button> --%>
							</div>
							<button id="login-button" style="margin-top:14px; display:block;" onclick="return check();">登录</button>
						</form>
						<form id="initialSignUp" action="supplier/signUp?signup=true" method="post" hidden="hidden">
							
						</form>
					</div>
				</div>
			</div>

			<ul class="bg-bubbles">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
			<%@ include file="other/footerLogin.jsp"%>
		</div>

	</div>

	<script>
		function showSignUp(){
			var role=$('input:radio[name="role"]:checked').val();
			if(role=="supplier"){
				//alert("123");
				$("#signup").show()
			}else{
				//alert("1234");
				$("#signup").hide()
			}
		}
		
		function check() {
			var username = $("#username").val();
			var psd = $("#psd").val();
			if(username==""){
				$("#useralert").val("请输入用户名");
				//alert("请输入用户名");
				return false;
			}
			$("#useralert").val("");
			if(psd==""){
				$("#psdalert").val("请输入密码");
				return false;
			}
			$("#psdalert").val("");
			location.href = "login";
		}
	</script>
</body>
</html>