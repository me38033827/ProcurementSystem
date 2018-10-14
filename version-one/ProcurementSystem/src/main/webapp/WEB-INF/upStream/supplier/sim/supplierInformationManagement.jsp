<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<title>供应商详情－概要</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="p2p-supplier-title">
					<div class="left">
						<a class="p2p-supplier-title-main">供应商信息区域</a><br>
						<a class="p2p-supplier-subtitle">信息项目</a>
					</div>
					<div class="right" style="margin-top:40px;">
						<div class="btn-group">
							<button class="btn-m" style="width:80px;" data-toggle="dropdown">
							    操作&nbsp;<span class="caret"></span>
							</button>
							<ul class="dropdown-menu manu-btn-o" >
							   	<li><a class="manu-deactive" href="">团队成员</a></li>
							    <li><a class="manu-btn" href="">编辑</a></li>
							</ul>
						</div>
					</div>
				</div>
				
				
				<div class="standard-subtitle"></div>
	
				<div class="adjust-10"></div>
				
				<div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="width:60%;">名称</td>
							<td style="width:20%;">所有者</td>
							<td style="width:20%;">状态</td>
						</tr>
						<tr class="standard-row2 bottom-border">
							<td align="left">
								<div class="btn-group" >
									<button class="btn-ma" data-toggle="dropdown"
						            		style="background-color: transparent;width:100%;">
						            		供应商概要问卷<span class="caret"></span>
						           	</button>
						           	<ul class="dropdown-menu" style="z-index: 9999">
						           		<li><a class="manu-deactive">操作</a></li>
						           		<li><a class="manu-active" href="simQuestionnaire">打开</a></li>
						           		<li><a class="manu-active">查看详细信息</a></li>
						           		<li><a class="manu-active">编辑属性</a></li>
						           		<li><a class="manu-deactive">移动</a></li>
						           		<li><a class="manu-active">发布</a></li>
						           	<!-- 	<li><a class="manu-active">添加到快速链接</a></li> -->
						           		<li><a class="manu-active">锁定</a></li>
						           		<li><a class="manu-active">另存为新版本</a></li>
						           		<li><a class="manu-deactive">新建任务</a></li>
						           		<li><a class="manu-active">待办任务</a></li>
						           		<li><a class="manu-active">复查</a></li>
						           		<li><a class="manu-active">审批</a></li>
						           		<li><a class="manu-active">议价</a></li>
						           		<li><a class="manu-active">通知</a></li>
						           	</ul>
					           	</div>
							</td>
							<td><a>Kelly Dai</a></td>
							<td>已发布</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>


	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../../other/supplierFooter.jsp"%>

	<script>
		function back(){
			location.href="../mainSupplier";
		}
	</script>
</body>
</html>
