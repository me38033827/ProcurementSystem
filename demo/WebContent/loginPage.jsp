<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登录</title>
		<link href="assets/css/login.css" rel="stylesheet" type="text/css" />
		<script src="assets/js/jquery-1.10.2.js"></script>
	</head>
	<body id="login-page">
		<div id="login-box">
			<a id="login-title">登录</a>
			<input id="username" value="用户名" onfocus="if(this.value=='用户名') this.value=''"
				onblur="if(this.value=='')this.value='用户名' "/>
			<input id="psd_info" value="密码" type="text" onfocus="psd();"/>
			<input id="psd" type="password" onblur="psd_back();" style="display:none;"/>
			<button id="login-btn" onclick="check();">登录</button>
			<div id="forget">忘记<a id="forget-username" href="#">用户名</a>或<a id="forget-psd" href="#">密码</a>？</div>
		</div>
	<script>
		function psd(){
			$("#psd_info").hide();
			$("#psd").show();
			$("#psd").focus();
		}
		function psd_back(){
			if($("#psd").val()==""){
			$("#psd").hide();
			$("#psd_info").show();
			}
		}
		function check(){
			var username=document.getElementById("username").value;
			var psd=document.getElementById("psd").value;
			if(username=="用户名"){
				alert("请输入用户名！");
				return false;
			}
			if(psd==""){
				alert("请输入密码！");
				return false;
			}
			if(username!="test"){
				alert("用户名不存在！");
				return false;
			}
			if(psd!="test"){
				alert("密码错误！");
				return false;
			}
			else{
				location.href="contract-creation.jsp";
			}
		}
	</script>
	</body>
</html>