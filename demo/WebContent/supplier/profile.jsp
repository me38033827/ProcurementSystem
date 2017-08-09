<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要</title>
<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>
</head>
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">公司概要</a>
			<div class="right">
				<button class="btn-b">保存</button>
				<button class="btn-w">关闭</button>
			</div>
		</div>
		<div id="order-detail-main">
			<div class="row">
				<!-- 左侧主要内容 -->
				<div class="col-md-10">
					<div id="order-detail-line4">
						<button class="order-detail-clicked" onclick="window.location.href='profile.jsp'">基本</button>
						<button class="order-detail-not-clicked" onclick="window.location.href='profileBusiness.jsp'">商务</button>
						<button class="order-detail-not-clicked" onclick="window.location.href='profileMarket.jsp'">营销</button>
						<button class="order-detail-not-clicked" onclick="window.location.href='profileContact.jsp'">联系人</button>
						<button class="order-detail-not-clicked" onclick="window.location.href='profileAuth.jsp'">认证</button>
						<button class="order-detail-not-clicked" onclick="window.location.href='profileCustomer.jsp'">请求的客户</button>
						<button class="order-detail-not-clicked" onclick="window.location.href='profileDoc.jsp'">其他文档</button>
					</div>
					
					<div id="order-detail-line2">
						<a class="black">＊表示必填字段</a>
					</div>
					
					<div id="order-detail-line">
						<a class="order-detail-subtitle">概述</a>
					</div>
					
					<div>
						<table>
							<tr class="row-standard">
								<td class="col-standard1">＊公司名称：</td>
								<td class="col-standard2"><input class="form-control input"/></td>
							</tr>
							
						</table>
					</div>
					
					
				</div>
				<div class="col-md-2">
					<div id="order-detail-line4">
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>