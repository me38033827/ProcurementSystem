﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－团队</title>
<%@include file="../other/header1.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
			<!-- 主要内容 -->
				<!-- supplier detail title -->
				<div class="p2p-supplier-title">
					<div class="left">
						<a class="p2p-supplier-title-main">惠普（北京）</a> <br>
						<a class="p2p-supplier-subtitle">供应商工作区</a>
					</div>
					
					<div class="right" id="supplier-detail-top">
						<table>
							<tr>
								<td class="text-right">任务：</td>
								<td>未完成的任务：4</td>
							</tr>
							<tr>
								<td class="text-right">当前阶段：</td>
								<td>初始阶段</td>
							</tr>
							<tr>
								<td class="text-right">下一里程碑：</td>
								<td>GCM创建新的供应商</td>
							</tr>
						</table>
					</div>
				</div>
				
				
	
	
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailSummary.jsp'">概述</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetail.jsp'">概要</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailReport.jsp'">报告</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailDoc.jsp'">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTask.jsp'">任务</button>
					<button class="tag-clicked"
						onclick="window.location.href='supplierDetailTeam.jsp'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailInfo.jsp'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailNews.jsp'">事件消息</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailHistory.jsp'">历史记录</button>
				</div>
	
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				
				<div class="standard-subtitle">团队成员
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
							<td style="width:40%;">组&#8593;</td>
							<td style="width:60%;">成员</td>
						</tr>
					</table>
				</div>
				<div class="roll-tab bottom-border" style="max-height:280px;">
					<table class="table table-hover">
						<tr>
							<td style="width:40%;"><a href="">IT支持</a></td>
							<td style="width:60%;"><a href="">IT管理员</a></td>
						</tr>
						<tr>
							<td style="width:40%;"><a href="">供应商</a></td>
							<td style="width:60%;">（无值）</td>
						</tr>
						<tr>
							<td style="width:40%;"><a href="">全局观察员</a></td>
							<td style="width:60%;">（无值）</td>
						</tr>
						<tr>
							<td style="width:40%;"><a href="">项目所有者</a></td>
							<td style="width:60%;"><a href="">系统</a></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../other/footer.jsp"%>

</body>
</html>
