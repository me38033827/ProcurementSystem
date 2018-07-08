<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>用户创建界面</title>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
<script src="/ProcurementSystem/js/selectLeader.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">用户－创建用户</a>
				<div class="right">
					<button class="btn-b" onclick="creationSubmit()">保存</button>
					<button class="btn-w"
						onclick="window.location.href='userSearching.html'">取消</button>
				</div>
			</div>
			<div class="user-main">
				<div id="order-detail-line2">
					<a class="black">带星号 (*) 的字段为必填字段。输入个人数据并单击“保存”按钮。</a>
				</div>
				<form id="userCreationForm">
				<div class="inline-b" id="user-detail-tab">
					<table>
						<tr>
							<td id="order-detail-tab-col1">＊定义者：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="definer">
									<option>管理者</option>
									<option>外部</option>
									<option>手工维护</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">类型：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="passwordAdapter">
									<option>企业用户</option>
									<option>第三方企业用户</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">角色：</td>
							<td id="order-detail-tab-col2"><select id="my-select">
									<option value="buyer">采购方</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊用户标识符：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="userIdentifier" name="userIdentifier" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊名称：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="name" name="name" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊登录账号：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="username" name="username" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊登录密码：</td>
							<td id="order-detail-tab-col2"><input type="password"
								class="form-control input" id="password" name="password" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊确认密码：</td>
							<td id="order-detail-tab-col2"><input type="password"
								class="form-control input" id="passwordConfirm" /></td>
							<td id="order-detail-tab-col2">
								<span id="pw_warning" style="color:red;display:none;">&nbsp;&nbsp;两次密码不一致</span>
								<span id="pw_success" style="color:green;display:none;">&nbsp;&nbsp;√两次密码一致</span>
							</td>
						</tr>
						<!-- <tr>
							<td id="order-detail-tab-col1">＊组织：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="organization">
									<option>测试组</option>
							</select></td>
						</tr> -->
						<tr>
							<td id="order-detail-tab-col1">＊业务电子邮件地址：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="emailAddress" name="emailAddress" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">允许外部电子邮件域：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="allowExternalEmailDomain" name="allowedExternalEmailDomain" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务电话号码：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="phone" name="phone" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务传真号码：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" id="fax" name="fax" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">区域：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="locale">
									<option>中文－中国大陆</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">默认货币：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="defaultCurrency">
									<option value="人民币">人民币</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">时区：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="timeZone">
									<option>中国</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊上级主管：</td>
							<td id="order-detail-tab-col2">
								<input type="hidden" id="supervisorName" name="supervisorName" value=""/>
								<span id="leaderShow"></span>
								［&nbsp;<a
									class="blue inline-b choose" href="javascript:void(0);" onclick="onSelectLeader();">选择</a>&nbsp;］
								<!-- <input class="form-control input" id="supervisorName" name="supervisorName" /></td> -->
						</tr>
						<tr>
							<td id="order-detail-tab-col1">备用电子邮件地址：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" name="alternateEmailAddresses" /></td>
						</tr>
					</table>
				</div>

				<div>
					<a class="black f-12">带星号 (*) 的字段为必填字段。输入个人数据并单击“保存”按钮。</a>
				</div>
				<div class="choice">
					<div class="right">
						<button class="btn-b" type="button" onclick="creationSubmit()">保存</button>
						<button class="btn-w" type="button"
							onclick="window.location.href = document.referrer;">取消</button>
					</div>
				</div>
				</form>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<%@include file="selectLeader.jsp"%>
			</div>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
	<div class="foot">
		<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All
			rights reserved.</div>
	</div>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>

	<script>
		$(function(){
			/**
			* 提示效果	
			* 验证两次输入密码是否一致 
			*/
			$("#passwordConfirm").keydown(function(){
				$("#pw_warning").css('display','none');
				$("#pw_success").css('display','none');
			});
			$("#passwordConfirm").blur(function(){
				var password = $("#password").val();
				var passwordConfirm = $("#passwordConfirm").val();
				if(password != '' && passwordConfirm != '' && password != passwordConfirm){
					$("#pw_warning").css('display','block');
					$("#pw_success").css('display','none');
				}else if(passwordConfirm == ''){
					$("#pw_warning").css('display','none');
					$("#pw_success").css('display','none');
				}else{
					$("#pw_warning").css('display','none');
					$("#pw_success").css('display','block');
				}
			});
		});  
		/* 提交表单  */
		function creationSubmit(){
			var userIdentifier = $("#userIdentifier").val();
			var name = $("#name").val();
			var emailAddress = $("#emailAddress").val();
			var supervisorName = $("#supervisorName").val();
			var userName = $("#username").val();
			var password = $("#password").val();
			var passwordConfirm = $("#passwordConfirm").val();
			if(passwordConfirm != password){
				alert("两次密码输入不一致！");
				return true;
			}
			if(userIdentifier=='' || username == '' || name=='' || password==''
					|| emailAddress=='' || emailAddress=='' ||supervisorName==''){
				alert("操作失败，存在标星号的项未填写！");
			}else{
				$.ajax({
					type:"POST",
					url:"userCreationSubmit",
					data:$("#userCreationForm").serialize(),
					//dataType : 'json',
					success : function(result) {
						alert(result.result);
						if(result.result == "保存成功！")
						 	window.location.reload();
					},
					error : function() {
						alert("操作失败，请重试！");
					}			
				});
			}
		}
	</script>
</body>
</html>
