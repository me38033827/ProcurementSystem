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
					
					<div class="right" id="supplier-detail-top" style="margin-top:15px; width:200px;">
						<table>
							<tr>
								<td class="text-right">任务：</td>
								<td><a>未完成的任务：2</a></td>
							</tr>
							<tr>
								<td></td>
								<td><a>显示基本试图</a></td>
							</tr>
						</table>
					</div>
				</div>
				
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href=''">概述</button>
					<button class="tag-clicked"
						onclick="window.location.href=''">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href=''">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href=''">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href=''">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href=''">历史记录</button>
				</div>
				
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				
				<div class="standard-subtitle">供应商信息区域
					<div class="right">
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
	
				<div class="adjust-10"></div>
				
				<div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="width:60%;">名称</td>
							<td style="width:20%;">所有者</td>
							<td style="width:20%;">状态</td>
						</tr>
						<tr class="standard-row2 bottom-border">
							<td><a href="supplierQuestionnaire">供应商概要问卷</a></td>
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
			location.href="supplierSearch?action=back";
		}
	</script>
</body>
</html>
