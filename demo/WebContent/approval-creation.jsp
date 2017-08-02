<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>审批流程创建界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">添加新的审批流程</a>
			<div class="right inline-b">
				<button class="btn-b"
					onclick="window.location.href='approval-edit.html'">下一步</button>
				<button class="btn-w">取消</button>
			</div>
		</div>
		<div id="order-detail-main">
			<div id="approval-creation-line2">
				<a class="black">为新的审批流程指定名称，然后选择待批件类型。</a>
				<table>
					<tr>
						<td class="text-right">＊标题：</td>
						<td><input class="form-control input" /></td>
					</tr>
					<tr>
						<td class="text-right">＊待批件类型：</td>
						<td><select id="my-select">
								<option>一般待批件</option>
								<option>供应商数据更新</option>
								<option>供应商概要请求</option>
								<option>出差授权</option>
								<option>出差授权单</option>
								<option>出差授权单确认</option>
								<option>出差概要</option>
								<option>协作请求</option>
								<option>发票</option>
						</select></td>
					</tr>
					<tr>
						<td class="text-right">激活状态：</td>
						<td>否</td>
					</tr>
					<tr>
						<td class="text-right">防止委派期间自我审批：</td>
						<td><input class="form-control input" /></td>
					</tr>
				</table>
			</div>
			<div class="right inline-b" style="margin-top: 10px;">
				<button class="btn-b"
					onclick="window.location.href='approval-edit.html'">下一步</button>
				<button class="btn-w">取消</button>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp" %>
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
