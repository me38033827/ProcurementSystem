<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery.js"></script>
<link href="/ProcurementSystem/css/standard.css" rel="stylesheet" />
<link href="/ProcurementSystem/css/signUp.css" rel="stylesheet" />
<link href="/ProcurementSystem/css/mycss.css" rel="stylesheet" />
</head>
<body>
	<div class="bg">
		<div class="form-container">
			<div class="form-title">
				<h2>供应商注册</h2>
			</div>
			<form class="form" id="signup" method="post">
				<table>
					<tr class="signup-row1">
						<td>用户名：</td>
						<td><input class="form-control input" name="username" value="${login.username}"/><br></td>
					</tr>
					<tr class="signup-row2">
						<td></td>
						<td><span class="error-message">${Error_username}</span></td>
					</tr>
					<tr class="signup-row1">
						<td>密码：</td>
						<td><input type="password" class="form-control input" name="password" value="${login.password}"/><br></td>
					</tr>
					<tr class="signup-row2">
						<td></td>
						<td><span class="error-message">${Error_password}</span></td>
					</tr>
					<tr class="signup-row1">
						<td>确认密码：</td>
						<td><input type="password" class="form-control input" name="confirmPsd"/><br></td>
					</tr>
					<tr class="signup-row2">
						<td></td>
						<td><span class="error-message">${Error_confirmPsd}</span></td>
					</tr>
					<tr class="signup-row1">
						<td>公司名称：</td>
						<td><input class="form-control input" name="supplier.name" value="${login.supplier.name}"/><br></td>
					</tr>
					<tr class="signup-row2">
						<td></td>
						<td><span class="error-message">${Error_name}</span></td>
					</tr>
					<tr class="signup-row1">
						<td>电子邮件地址：</td>
						<td><input class="form-control input" name="supplier.mainEmail" value="${login.supplier.mainEmail }"/><br></td>
					</tr>
					<tr class="signup-row2">
						<td></td>
						<td><span class="error-message">${Error_mainEmail}</span></td>
					</tr>
					<tr class="signup-row1">
						<td>总机：</td>
						<td><input class="form-control input" name="supplier.switchboard" value="${login.supplier.switchboard }"/><br></td>
					</tr>
					<tr class="signup-row2">
						<td></td>
						<td><span class="error-message">${Error_switchboard}</span></td>
					</tr>
				</table>
			</form>	
			
			<button class="btn1" form="signup" formaction="signUp">提交</button> 
			
			<button class="btn2" onclick="window.location.href='../login'">返回登陆页</button>
		</div>
	</div>
	<script>
	</script>
</body>

</html>