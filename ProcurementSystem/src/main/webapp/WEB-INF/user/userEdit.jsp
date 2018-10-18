<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">

		<!-- 主要内容 -->
		<div class="con">
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-clicked"
						onclick="window.location.href='userDetail?userUniqueName=${user.uniqueName}'">常规</button>
					<button class="order-detail-not-clicked"
						onclick="window.location.href='userDetailGroup?userUniqueName=${user.uniqueName}'">组</button>
					<button class="order-detail-not-clicked">所有组</button>
				</div>

				<div id="order-detail-line2">
					<a class="black">修改用户信息</a>
				</div>
				<form id="userEditForm">
				<div class="inline-b" id="user-detail-tab">
					<table>
						<tr>
							<td id="order-detail-tab-col1">*定义者：</td>
							<td id="order-detail-tab-col2"><select id="definer" name="definer">
									<option <c:if test="${user.definer == '管理者'}">selected</c:if>>管理者</option>
									<option <c:if test="${user.definer == '外部'}">selected</c:if>>外部</option>
									<option <c:if test="${user.definer == '手工维护'}">selected</c:if>>手工维护</option>
							</select></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">类型：
							</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="passwordAdapter">
									<option <c:if test="${user.passwordAdapter == '企业用户'}">selected</c:if>>企业用户</option>
									<option <c:if test="${user.passwordAdapter == '第三方企业用户'}">selected</c:if>>第三方企业用户</option>
							</select>
							</td>
						</tr>
						<%-- <tr>
							<td id="order-detail-tab-col1">角色：</td>
							<td id="order-detail-tab-col2"><select id="my-select">
									<option <c:if test="${user.passwordAdapter == 'buyer'}">selected</c:if> value="buyer">采购方</option>
							</select></td>
						</tr> --%>
						<tr>
							<td id="order-detail-tab-col1">*用户标识符：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" id="userIdentifier" type="text" name="userIdentifier" value="${user.userIdentifier}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">*名称：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" id="name" type="text" name="name" value="${user.name}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">状态：</td>
							<td id="order-detail-tab-col2"><select id="my-select" name="status">
									<option <c:if test="${user.status == '已停用'}">selected</c:if>>已停用</option>
									<option <c:if test="${user.status == '已启用'}">selected</c:if>>已启用</option>
							</select>
							</td>
						</tr>
						<%-- <tr>
							<td id="order-detail-tab-col1">＊登录账号：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="username" value="${user.username}" />
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊登录密码：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="password" value="${user.password}" />
							</td>
						</tr> --%>
						<tr>
							<td id="order-detail-tab-col1">*业务电子邮件地址：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" id="emailAddress" type="text" name="emailAddress" value="${user.emailAddress}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">允许外部电子邮件域：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="allowedExternalEmailDomain" value="${user.allowedExternalEmailDomain}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务电话号码：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="phone" value="${user.phone}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务传真号码：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="fax" value="${user.fax}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">区域：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="locale" value="${user.locale}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">默认货币：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="defaultCurrency" value="${user.defaultCurrency}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">时区：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="timeZone" value="${user.timeZone}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">*上级主管：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" id="supervisorName" type="text" name="supervisorName" value="${user.supervisorName}" />
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">备用电子邮件地址：</td>
							<td id="order-detail-tab-col2">
								<input class="form-control input" type="text" name="alternateEmailAddresses" value="${user.alternateEmailAddresses}" />
								<input type="hidden" name="uniqueName" value="${user.uniqueName}" />
							</td>
						</tr>
					</table>
				</div>
				<div>
					<a class="black f-12">带星号 (*) 的字段为必填字段。输入个人数据并单击“保存”按钮。</a>
				</div>
				<div class="choice">
					<div class="right">
						<button class="btn-b" type="button" id="userEditSubmit">保存</button>
						<button class="btn-w" type="button"
							onclick="window.location.href = document.referrer;">取消</button>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
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
		$("#userEditSubmit").click(function(){
			var userIdentifier = $("#userIdentifier").val();
			var name = $("#name").val();
			var emailAddress = $("#emailAddress").val();
			var supervisorName = $("#supervisorName").val();
			/* var userName = $("#username").val();
			var password = $("#password").val(); */
			if(userIdentifier=='' || emailAddress=='' || emailAddress=='' ||supervisorName==''){
				alert("操作失败，存在标星号的项未填写！");
			}else{
				$.ajax({
					type:"POST",
					url:"userEditSubmit",
					data:$("#userEditForm").serialize(),
					//dataType : 'json',
					success : function(result) {
						alert(result.result);
						if(result.result == "修改成功！")
							window.location.href = document.referrer;
					},
					error : function() {
						alert("操作失败，请重试！");
					}			
				});
			}
		});
	</script>
</body>
</html>
