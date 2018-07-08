<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../other/header1.jsp"%>
<%@ include file="../other/header2.jsp"%>
<title>用户组详情</title>
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
							onclick="window.location.href='groupDetail?uniqueName=${group.uniqueName}'">常规</button>
					<button class="order-detail-not-clicked"
							onclick="window.location.href='groupDetailUser?uniqueName=${group.uniqueName}'">用户</button>
					<button class="order-detail-not-clicked">子组</button>
				</div>
				<div class="inline-b" id="user-detail-tab">
					<table>
						<tr>
							<td id="order-detail-tab-col1">定义者：</td>
							<td id="order-detail-tab-col2">${group.difiner}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">组名称：</td>
							<td id="order-detail-tab-col2">${group.name}
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">说明：</td>
							<td id="order-detail-tab-col2">${group.description}
							</td>
						</tr>
					</table>
				</div>
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
</body>
</html>
