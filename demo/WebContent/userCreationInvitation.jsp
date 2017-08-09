<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户创建界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">用户－创建用户</a>
				<div style="float:right;">
					<button class="btn-b">保存</button>
					<button class="btn-w" onclick="window.location.href='userSearchingR.jsp'">取消</button>
				</div>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='userCreation.jsp'">常规</button>
					<button class="order-detail-clicked" onclick="window.location.href='userCreationInvitation.jsp'">邀请</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userCreationGroup.jsp'">组</button>
				</div>

				<div id="order-detail-line2">
					<label class="inline-b"><input type="checkbox" class="checkboxes" value="" /></label>
					<a class="black inline-b">在保存用户后发送邀请函。您也可以从用户搜索屏幕中邀请此用户，方法是选择此用户，然后单击“生成密码”。</a>
				</div>

				
				
				
				<div class="choice">
					<div class="right">
						<button class="btn-b">保存</button>
						<button class="btn-w"
							onclick="window.location.href='userSearchingR.html'">取消</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
