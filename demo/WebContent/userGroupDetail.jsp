<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>组详情</title>

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
					<button class="order-detail-clicked" onclick="window.location.href='userGroupDetail.jsp'">常规</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetailUser.jsp'">用户</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userGroupDetailSon.jsp'">子组</button>
				</div>

				<div class="adjust"></div>
				<div class="inline-b" id="user-detail-tab">
					<table>

						<tr>
							<td class="order-detail-tab-col1" valign="top">定义者：</td>
							<td class="order-detail-tab-col2" valign="top">系统</td>
						</tr>
						<tr>
							<td class="order-detail-tab-col1" valign="top">唯一名称：</td>
							<td class="order-detail-tab-col2" valign="top">采购用户</td>
						</tr>
						<tr>
							<td class="order-detail-tab-col1" valign="top">组名称：</td>
							<td class="order-detail-tab-col2" valign="top">采购用户</td>
						</tr>
						<tr>
							<td class="order-detail-tab-col1" valign="top">说明：</td>
							<td class="order-detail-tab-col2" valign="top">该组的成员可以：<br>
								<a class="f-13 black">&nbsp;&nbsp;&nbsp;&nbsp;＊&nbsp;创建请购单。</a><br>
								<a class="f-13 black">&nbsp;&nbsp;&nbsp;&nbsp;＊&nbsp;查询采购流程中自己和下属的待批文档。</a><br>
								<a class="f-13 black">&nbsp;&nbsp;&nbsp;&nbsp;＊&nbsp;查询自己和下属的协作请求。</a><br>
								<a class="f-13 black">&nbsp;&nbsp;&nbsp;&nbsp;＊&nbsp;查看并运行自己和下属的报告（包括组合报告）。数据仅限为自己和下属创建的数据。</a><br>
								该组的成员可以查看“订购单”、“购物卡”和“Buyer 结算”文件夹中的报告。只有来自 Procure-to-Pay 网站的用户才可以查看请购报告、出差费报告和订购单报告。来自 Ariba Invoice and Payment 网站的用户不能查看这些报告。</td>
						</tr>

					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>


</body>
</html>
