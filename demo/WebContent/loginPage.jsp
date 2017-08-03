<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<script src="assets/js/jquery-2.1.1.min.js" type="text/javascript"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>登录</title>
<link rel="stylesheet" type="text/css" href="assets/css/styles.css">

</head>
<body>
	<div class="htmleaf-container">
		<div class="wrapper">
			<div class="container">

				<h1>欢迎</h1>


				<form class="form">
					<input type="text" placeholder="用户名" id="username"> <input
						type="password" placeholder="密码" id="psd">
					<button type="submit" id="login-button" onclick="check();">登录</button>
				</form>
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
		function check() {
			var username = document.getElementById("username").value;
			var psd = document.getElementById("psd").value;
			if (username == "用户名") {
				alert("请输入用户名！");
				return false;
			}
			if (psd == "") {
				alert("请输入密码！");
				return false;
			}
			if (username != "test") {
				alert("用户名不存在！");
				return false;
			}
			if (psd != "test") {
				alert("密码错误！");
				return false;
			} else {
				location.href = "main.jsp";
			}
		}
	</script>


</body>
</html>