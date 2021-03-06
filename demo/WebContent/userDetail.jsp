﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户详情界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">查看“Liyi”的详细信息</a>
				<button class="btn-w right"
					onclick="window.location.href='userSearchingR.jsp'">完成</button>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div id="order-detail-line4">
					<button class="order-detail-clicked" onclick="window.location.href='userDetail.jsp'">常规</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userDetailGroup.jsp'">组</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='userDetailAllGroup.jsp'">所有组</button>
				</div>

				<div id="order-detail-line2">
					<a class="black">指定用户信息并将该用户分配到组。用 *
						标记的字段是必填字段。输入此个人数据并单击“保存”按钮后，您确认您授权根据 Ariba 隐私声明、贵公司与 Ariba
						之间的服务协议和适用法律，在欧盟或其他辖区以外传送此个人数据。</a>
				</div>

				<div class="inline-b" id="user-detail-tab">
					<table>
						<tr>
							<td id="order-detail-tab-col1">定义者：</td>
							<td id="order-detail-tab-col2">Hanlu</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">类型：</td>
							<td id="order-detail-tab-col2">第三方企业用户</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">用户标识符：</td>
							<td id="order-detail-tab-col2">Liyi</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">名称：</td>
							<td id="order-detail-tab-col2">Liyi</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">组织：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务电子邮件地址：</td>
							<td id="order-detail-tab-col2">lilyliyi@scraper.com.cn</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">允许外部电子邮件域：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务电话号码：</td>
							<td id="order-detail-tab-col2">010-66772534</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">业务传真号码：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">上级主管：</td>
							<td id="order-detail-tab-col2">用户3</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">备用电子邮件地址：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>

						<tr>
							<td id="order-detail-tab-col1">创建日期：</td>
							<td id="order-detail-tab-col2">2017年3月12日 18:00</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">上次修改日期：</td>
							<td id="order-detail-tab-col2">2017年3月20日 09:32</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">停用日期：</td>
							<td id="order-detail-tab-col2"></td>
						</tr>

					</table>
				</div>
			</div>
		</div>
	</div>
	
	<%@ include file="other/footer.jsp"%>

	
</body>
</html>
