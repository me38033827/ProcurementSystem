﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">s
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>相关字段选择－发票界面</title>
		
		<!-- BOOTSTRAP CORE STYLE  -->
		<link href="assets/css/bootstrap.css" rel="stylesheet" />
		<!-- FONT AWESOME STYLE  -->
		<link href="assets/css/font-awesome.css" rel="stylesheet" />
		<!-- CUSTOM STYLE  -->
		<link href="assets/css/style.css" rel="stylesheet" />
		<!-- GOOGLE FONT -->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
		<!-- MY CSS -->
		<link href="assets/css/mycss.css" rel="stylesheet" />
		<link href="assets/css/order.css" rel="stylesheet" />
		<link href="assets/css/relevant.css" rel="stylesheet" />
	</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			
			<!-- 标题及导航栏第一行 -->
			<div class="container" id="firstline-out" >
				<div class="navbar navbar-inverse set-radius-zero" id="firstline">
					<a id="page-name" class="left">LOGO</a>
				
					<!-- 首行靠右导航栏 -->
					<div class="right" id="right-div">
						<button id="firstline-icon"><span class="glyphicon glyphicon-search" aria-hidden="true" id="firstline-search"></span></button>
						<button id="firstline-icon"><span class="glyphicon glyphicon-print" aria-hidden="true" id="firstline-print"></span></button>
						<button id="firstline-help">帮助</button>
						<button id="firstline-user">用户：ariba</button>
					</div>
				</div>
			</div>
			
			<!-- 导航栏：第二行-->
			<div class="container" id="secondline-out">
				<div class="dropdown" id="secondline-dropdown">
					<!-- 第二行靠左 -->
					<button class="secondline-left">首页</button>
					<button class="secondline-left">采购</button>
					<button class="secondline-left">发票</button>
					<button class="secondline-left">目录</button>
					<div class="btn-group secondline" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" id="secondline-right-title" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    	创建&nbsp;<span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu" id="secondline-dropright">
					    	<li><a class="secondline-right" href="sourcing-creation.html">寻源项目</a></li>
					    	<li><a class="secondline-right" href="supplier-creation.html">供应商</a></li>
					    	<li><a class="secondline-right" href="contract-workspace-creation.html">合同</a></li>
					    	<li><a class="secondline-right" href="procurement-catalog-creation.html">商品目录</a></li>
					    	<li><a class="secondline-right" href="pr-creation.html">请购单</a></li>
					    	<li><a class="secondline-right" href="invoice-creation.html">发票</a></li>
					    	<li><a class="secondline-right" href="template-creation.html">模版</a></li>
					    	<li><a class="secondline-right" href="approval-creation.html">审批</a></li>
					    </ul>
					</div>
					
					<!-- 第二行靠右 -->
					<div class="btn-group secondline" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" id="secondline-right-title" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    	管理&nbsp;<span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu" id="secondline-dropright">
					    	<li><a class="secondline-right" href="sourcing-searching.html">在线寻源</a></li>
					    	<li><a class="secondline-right" href="supplier-searching.html">供应商管理</a></li>
					    	<li><a class="secondline-right" href="contract-searching.html">合同管理</a></li>
					    	<li><a class="secondline-right" href="procurement-commodity-catalog.html">商品目录</a></li>
					    	<li><a class="secondline-right" href="order-searching.html">订单协同</a></li>
					    	<li><a class="secondline-right" href="receipt-searching.html">收\发货协同</a></li>
					    	<li><a class="secondline-right" href="delivery-searching.html">物流管理</a></li>
					    	<li><a class="secondline-right" href="invoice-searching.html">发票管理</a></li>
					    	<li><a class="secondline-right" href="payment-searching.html">支付管理</a></li>
					    	<li><a class="secondline-right" href="user-searching.html">用户管理</a></li>
					    	<li><a class="secondline-right" href="template-detail-doc.html">模版管理</a></li>
					    	<li><a class="secondline-right" href="approval-searching.html">审批管理</a></li>
					    </ul>
					</div>	
				</div>
			</div>
			
			<!-- 主要内容 -->
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">选择字段</a>
			</div>
			<div id="order-detail-main">
				<div class="relevant-pr-content">
					<a class="black">要浏览的类型：发票</a>
					<a class="black">选择的字段：（未选择字段）</a>
					<a class="black">字段数据类型：</a>
					<a class="black">字段说明</a>
				</div>
				<div class="relevant-title">
					<a class="black">可用字段：</a>
				</div>
				<div class="relevant-tab">
					<table>
						<tr class="relevant-tab-row1">
							<td>内部字段名称</td>
							<td>字段标签</td>
							<td>说明</td>
							<td>操作</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">审批状态</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3 blue">代表带披肩当前审批状态的整数值。该字段主要供Ariba内部使用……（更多）</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">上次修改时间</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3 blue">上次修改待批件的日期。每当发生了一个操作并且该操作在历史记录选项卡……（更多）</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">重新提交时间</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3 blue">提交待批件的日期（如果有）。注意：当审批人拒绝待批件，并且用户想要……（更多）</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">版本号</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3">待批件的版本号</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">初始唯一名称</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3">唯一名称字段第一次设置成的值</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1">
								<span class="glyphicon glyphicon-chevron-right" aria-hidden="true" id="relevant-span"></span>
								&nbsp;修改用户
							</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3">当前正在更改待批件的用户</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">标题信息更改状态</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3">行项目集合标题信息的更改状态</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">是否被PunchIn创建</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3">此待批件是否通过PunchIn创建</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
						<tr class="relevant-tab-row2">
							<td class="relevant-tab-col1 indent">来源系统参考标识符</td>
							<td class="relevant-tab-col2">（无标签）</td>
							<td class="relevant-tab-col3">该文档的来源系统参考标识符</td>
							<td class="relevant-tab-col4 blue">选择</td>
						</tr>
					</table>
				</div>
				<div class="relevant-finish">
					<button class="btn-b right">完成</button>
				</div>
			</div>
		</div>
		 <!-- CONTENT-WRAPPER SECTION END-->


	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	  <!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	</body>
</html>