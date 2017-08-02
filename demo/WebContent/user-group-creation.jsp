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
						onclick="window.location.href='user-group-searching.jsp'">保存</button>
					<button class="btn-w"
						onclick="window.location.href='user-group-searching1.jsp'">取消</button>
				</div>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line2">
					<a class="black">创建新组，包括分配角色、权限、用户和子组。</a>
				</div>
				<div id="order-detail-line4">
					<button class="order-detail-clicked">常规</button>
					<button class="order-detail-not-clicked">用户</button>
					<button class="order-detail-not-clicked">子组</button>
				</div>

				<div class="adjust"></div>
				<div class="inline-b" id="user-detail-tab">
					<table>

						<tr>
							<td id="order-detail-tab-col1">＊唯一名称：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">＊组名称：</td>
							<td id="order-detail-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">说明：</td>
							<td id="order-detail-tab-col2"><textarea
									class="form-control" id="group-area"></textarea></td>
						</tr>
					</table>
				</div>
				<div class="choice">
					<div class="right">
						<button class="btn-b">保存</button>
						<button class="btn-w"
							onclick="window.location.href='user-group-searching1.jsp'">取消</button>
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
