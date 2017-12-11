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
	<div class="container" id="whole-container" style="margin:0 15%;">
		
		<div class="main-subjects">
			
			<div style="width:70%; height:200px;">
				<div class="col-md-4 full-height">
					<div class="box-a-third"><span>Top50产品</span></div>
				</div>
				<div class="col-md-4 full-height">
					<div class="box-a-third">推荐产品</div>
				</div>
				<div class="col-md-4 full-height">
					<div class="box-a-third">计算机和IT设备</div>
				</div>
			</div>
			<div class="adjust-10"></div>
			<div class="adjust-10"></div>
			<div style="width:70%; height:200px;">
				<div class="col-md-4 full-height">
					<div class="box-a-third">制造部件和耗材</div>
				</div>
				<div class="col-md-4 full-height">
					<div class="box-a-third">公共设施和公共部门服务</div>
				</div>
				<div class="col-md-4 full-height">
					<div class="box-a-third">发电、配电机械和附件</div>
				</div>
			</div>
			<div class="adjust-10"></div>
			<div class="adjust-10"></div>
			<div style="width:70%; height:200px;">
				<div class="col-md-4 full-height">
					<div class="box-a-third">未分类项目</div>
				</div>
				<div class="col-md-4 full-height">
					<div class="box-a-third"></div>
				</div>
				<div class="col-md-4 full-height">
					<div class="box-a-third"></div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
