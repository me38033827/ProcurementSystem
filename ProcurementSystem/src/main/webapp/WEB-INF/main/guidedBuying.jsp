<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.common.*"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>商品目录界面</title>

<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<!-- 页面整体宽度：1320px -->
<body  class="a-dashbrd-page-bg">

	<div>
		<div id="thirdline-out" style="background-color:#ffffffa6; border:0;">
			<span style="padding-left:20px;">Guided Buying</span>
		</div>
	</div>
	<div class="container" id="whole-container" style="padding:0 15%;">
		
		<div class="main-subjects">
			
			<div style="width:100%; height:240px;">
				<div class="col-md-4 box-container">
					<button class="box-a-third" onclick="window.location.href='top50'">Top50</button>
				</div>
				<div class="col-md-4 box-container">
					<button class="box-a-third" onclick="window.location.href='recommend'">推荐产品</button>
				</div>
				<div class="col-md-4 box-container">
					<button class="box-a-third" onclick="window.location.href='guidedCommodity'">所有产品</button>
				</div>
				<c:forEach var="node" items="${firstClass}" begin="1" step="1" end="6">
					<div class="col-md-4 box-container">
						<button class="box-a-third" onclick="window.location.href='guidedCommodity?code=${node.spscCode }'">${node.name }</button>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

</body>
</html>
