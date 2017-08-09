<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>用户组详情界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“采购用户”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='userGroupSearchingR.jsp'">完成</button>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetail.jsp'">常规</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetailUser.jsp'">用户</button>
					<button class="order-detail-clicked" onclick="window.location.href='userGroupDetailSon.jsp'">子组</button>
				</div>

				<div class="adjust"></div>
				<div>
					<table class="fulltab">
						<tr class="searching-tab-row1">
							<td>唯一名称</td>
							<td>组名称</td>
						</tr>
						<tr class="searching-tab-row2">
							<td colspan="2" style="text-align:center;">无项目</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>


</body>
</html>
