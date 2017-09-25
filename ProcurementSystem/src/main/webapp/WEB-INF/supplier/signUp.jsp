<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/ProcurementSystem/css/signUp.css">
<link rel="stylesheet" type="text/css" href="/ProcurementSystem/css/standard.css">
<link rel="stylesheet" type="text/css" href="/ProcurementSystem/css/styles.css">
<link rel="stylesheet" type="text/css" href="/ProcurementSystem/css/bootstrap.css">
<script src="/ProcurementSystem/js/jquery.js"></script>
<script>
</script>
</head>
<body>
	<div class="htmleaf-container" >
		<div class="wrapper" style="height:660px;">
			<div class="form-container" align="center" style="margin-top:5%;">
				<div class="form-title">
					<h2>供应商注册</h2>
				</div>
				<form id action="signUp" method="post" style="margin-left:0;">
					<table>
						<tr class="signup-row1">
							<td>用户名：</td>
							<td>
								<input class="form-control input" style="width:200px;" name="username" value="${login.username}"/>
								
							</td>
						</tr>
						<tr class="signup-row2">
							<td></td>
							<td><div class="error"><span class="error-message">${Error_username}</span></div>
							</td>
						</tr>
						<tr class="signup-row1">
							<td>密码：</td>
							<td><input type="password" class="form-control input" style="width:200px;" name="password" value="${login.password}"/></td>
						</tr>
						<tr class="signup-row2">
							<td></td>
							<td><div class="error"><span class="error-message">${Error_password}</span></div>
							</td>
						</tr>
						<tr class="signup-row1">
							<td>确认密码：</td>
							<td><input type="password" class="form-control input" style="width:200px;" name="confirmPsd"/></td>
						</tr>
						<tr class="signup-row2">
							<td></td>
							<td><div class="error"><span class="error-message">${Error_confirmPsd}</span></div>
							</td>
						</tr>
						<tr class="signup-row1">
							<td>公司名称：</td>
							<td><input class="form-control input" name="supplier.name" style="width:200px;" value="${login.supplier.name}"/></td>
						</tr>
						<tr class="signup-row2">
							<td></td>
							<td><div class="error"><span class="error-message">${Error_name}</span></div>
							</td>
						</tr>
						<tr class="signup-row1">
							<td>电子邮件地址：</td>
							<td><input class="form-control input" name="supplier.mainEmail" style="width:200px;"value="${login.supplier.mainEmail }"/></td>
						</tr>
						<tr class="signup-row2">
							<td></td>
							<td><div class="error"><span class="error-message">${Error_mainEmail}</span></div>
							</td>
						</tr>
						<tr class="signup-row1">
							<td>总机：</td>
							<td><input class="form-control input" name="supplier.switchboard" style="width:200px;" value="${login.supplier.switchboard }"/></td>
						</tr>
						<tr class="signup-row2">
							<td></td>
							<td><div class="error"><span class="error-message">${Error_switchboard}</span></div>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center" >
								<button class="btn-b" style="width:200px;height:36px;">提交</button>
							</td>
						</tr>
					</table>
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