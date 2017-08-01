﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>合同详情-文档界面</title>
		
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
	</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			
			<!-- 标题及导航栏第一行 -->
			<div class="container" id="firstline-out" >
				<div class="navbar navbar-inverse set-radius-zero" id="firstline">
					<a id="page-name" class="left">LOGO</a>
					<a class ="left return"  href="contract-searching.html">返回</a>
					
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
			
			<div class="right" id="contract-detail-top">
				<table>
					<tr>
						<td class="text-right">标识符：</td>
						<td class="blue">C100569</td>
					</tr>
					<tr>
						<td class="text-right">任务：</td>
						<td>未完成的任务：0</td>
					</tr>
				</table>
			</div>
			
			<div class="left" id="contract-detail-label">
				<a class="black">相关信息</a>
				<a class="black f-13">展开项目</a>
				<a class="f-13">所有信息区域</a>
				<a class="f-13">搜索信息</a>
			</div>
		
			
			<div id="order-detail-main-1">
				
				
				<div id="searching-title-out-2">
					<div class="inline-b">
						<a class="black" id="searching-title">C100569</a>
						<a class="grey" id="supplier-detail-title">合同工作区（采购）</a>
					</div>
				</div>
			
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='contract-detail.html'">概述</button>
					<button class="order-detail-clicked">文档</button>
					<button class="order-detail-not-clicked">任务</button>
					<button class="order-detail-not-clicked">团队</button>
					<button class="order-detail-not-clicked">信息板</button>
					<button class="order-detail-not-clicked">历史记录</button>
					
				</div>
				<div id="contract-detail-d">
					<a>2017071712</a>
					<div class="right">
						<a class="f-12">显示详细信息  </a>
						<select id="my-select" class="blue">
							<option>操作</option>
							<option>选项1</option>
							<option>选项2</option>
						</select>
					</div>
				</div>
				<div>
					<table class="fulltab" id="contract-detail-tab">
						<tr class="searching-tab-row1">
							<td>名称</td>
							<td>所有者</td>
							<td>状态</td>
						</tr>
						<tr class="searching-tab-row2">
							<td>MSM</td>
							<td>＊＊＊</td>
							<td>草稿</td>
						</tr>
						<tr class="searching-tab-row2">
							<td>未命名合同条款</td>
							<td>＊＊＊</td>
							<td>未编辑</td>
						</tr>
						<tr class="searching-tab-row2">
							<td>NSTA模版</td>
							<td>项目所有者</td>
							<td>未创建</td>
						</tr>
						<tr class="searching-tab-row2">
							<td>新的节约跟踪表格</td>
							<td>项目所有者</td>
							<td>未创建</td>
						</tr>
						<tr class="searching-tab-row2">
							<td>复查和审批的合同文档</td>
							<td>项目所有者</td>
							<td>未创建</td>
						</tr>
						<tr class="searching-tab-row2">
							<td>签名的合同文档</td>
							<td>项目所有者</td>
							<td>未创建</td>
						</tr>
					</table>
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