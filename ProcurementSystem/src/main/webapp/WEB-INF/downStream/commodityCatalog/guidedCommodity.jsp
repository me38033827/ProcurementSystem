<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.ProcurementSystem.common.*"%>
<%@ page import="com.ProcurementSystem.entity.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>商品目录界面</title>

<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<!-- 页面整体宽度：1320px -->
<body  class="a-dashbrd-page-bg">

	<div>
		<div id="thirdline-out" style="background-color:#ffffffa6; border:0;">
			<span style="padding-left:20px;">Guided Buying</span>
		</div>
	</div>
	<div class="container" id="whole-container" style="margin:0 5%;">
		
		<div class="main-subjects">
			
			<div style="width:90%; height:300px;">
				<div class="col-md-4 full-height">
					<div class="a-third">
						<div class="a-third-title">商品名称：</div>
						<img class="a-third-img" src="" />
						<div class="a-third-description">商品详情：</div>
						<div class="a-third-price">价格：</div> 
					</div>
				</div>
				<div class="col-md-4 full-height">
					<div class="a-third">
						<div class="a-third-title">商品名称：</div>
						<img class="a-third-img" src="" />
						<div class="a-third-description">商品详情：</div>
						<div class="a-third-price">价格：</div> 
					</div>
				</div>
				<div class="col-md-4 full-height">
					<div class="a-third">
						<div class="a-third-title">商品名称：</div>
						<img class="a-third-img" src="" />
						<div class="a-third-description">商品详情：</div>
						<div class="a-third-price">价格：</div> 
					</div>
				</div>
			</div>
			<div class="adjust-10"></div>
			<div class="adjust-10"></div>
		</div>
	</div>

</body>
</html>
