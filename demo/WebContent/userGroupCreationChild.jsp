<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户组详情界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">组－创建组</a>
				<div class="right">
					<button class="btn-b"
						onclick="window.location.href='userGroupSearchingR.jsp'">保存</button>
					<button class="btn-w"
						onclick="window.location.href='userGroupSearchingR.jsp'">取消</button>
				</div>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line2">
					<a class="black">创建新组，包括分配角色、权限、用户和子组。</a>
				</div>
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupCreation.jsp'">常规</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupCreationUser.jsp'">用户</button>
					<button class="order-detail-clicked" onclick="window.location.href='userGroupCreationChild.jsp'">子组</button>
				</div>

				<div class="adjust"></div>
				<div>
					<table class="fulltab">
						<tr class="searching-tab-row1">
							<td style="width:30%;">用户标识符</td>
							<td style="width:30%;">名称</td>
							<td style="width:40%;">类型</td>
						</tr>
						<tr class="searching-tab-row2" id="none-item">
							<td colspan="3" style="text-align:center;">无项目</td>
						</tr>
						<tr class="searching-tab-row3">
							<td colspan="3">
								<button class="btn-w">添加／删除</button>
							</td>
						</tr>
					</table>
				</div>
				<div class="adjust1">
				</div>
				<div class="choice">
					<div class="right">
						<button class="btn-b">保存</button>
						<button class="btn-w"
							onclick="window.location.href='userGroupSearchingR.jsp'">取消</button>
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
