﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>商品详情界面</title>
		
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
		<link href="assets/css/detail.css" rel="stylesheet" />
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
		
			<!-- 导航栏 第三行 -->
			<div id="thirdline-out">
				<div class="col-md-2 inline-b left" > 
					<select class="col-md-12" id="my-select"style="background-color:transparent">
						<option id="my-option">按类别采购</option>
						<option id="my-option">按＊＊采购</option>
						<option id="my-option">按＊＊采购</option>
					</select>
				</div>
				<div class="col-md-2 inline-b left" id="search-service"> 
					<select class="col-md-12" id="my-select">
						<option id="my-option">服务</option>
						<option id="my-option">服务</option>
						<option id="my-option">服务</option>
					</select>
				</div>
				
				<!-- 第三行搜索框 -->
				<input type="text" class="inline-b border-g left col-md-4" value="按部件号、供应商名称或关键字搜索" onfocus="if(this.value=='按部件号、供应商名称或关键字搜索') this.value=''" 
					onblur="if(this.value=='')this.value='按部件号、供应商名称或关键字搜索' ">
				<button class="btn btn-default inline-b border-g left" id="search-btn">
					<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				</button>
				
				
				<!-- 第三行右侧图标 -->
				<div class="thirdline-icons">
					<button id="shopping-cart-btn"onclick="window.location.href='procurement-shopping-cart.html'">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true" id="shopping-cart"></span>
					</button>
				</div>	
				
				<!-- 第三行右侧标记 -->
			</div>
			
			
			
			<!-- 商品 -->
			<div class="main-subjects">

				 <div class="item-detail-out">
					 <!-- 商品标题 -->
				 	<a class="item-detail-title">
				 		&nbsp;<<&nbsp;&nbsp;返回&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目录主页&nbsp;／&nbsp;采购组织：CN05&nbsp;／&nbsp;服务&nbsp;／&nbsp;其他服务
				 		&nbsp;&nbsp;/&nbsp;&nbsp;工业生产和制造业服务&nbsp;&nbsp;/&nbsp;&nbsp;制造业相关业务&nbsp;&nbsp;/&nbsp;&nbsp;其他制造业相关业务
				 	</a>
				 	
				 	<!-- 商品详情显示 -->
			 		<!-- 右侧内容 -->
				 	<div class="col-md-12 inline-b">
				 		<div class="col-md-12 inline-b">
				 			<a class = "item-content-title">产品1</a><br>		 		
				 		
							<div class = "col-md-6 inline-b" style="border-right:1px solid #428bca;">
						 		<table id="item-detail-whole-tab">
						 			<tr>
								 		<td class="item-tab1-col1"><a class = "item-content-grey">供应商：</a></td>
							 			<td><a class = "item-content-blue">&nbsp;&nbsp;供应商1</a></td>
							 		</tr>
						 			<tr>
						 				<td class="item-tab1-col1"><a class = "item-content-grey">供应商部件号：</a></td>
						 				<td><a class = "item-content-black">&nbsp;&nbsp;123</a></td>
						 			</tr>
						 			<tr>
						 				<td class="item-tab1-col1"><a class = "item-content-grey">剩余时间：</a></td>
						 				<td><a class = "item-content-black">&nbsp;&nbsp;0天</a></td>
						 			</tr>
						 			<tr>
								 		<td class="item-tab1-col1"><a class = "item-content-grey">合同：</a></td>
						 				<td><a class = "item-content-black">&nbsp;&nbsp;c123</a></td>
						 			</tr>
						 		</table>
					 		</div>
					 		
					 		<div class = "col-md-5 inline-b right">
					 			<a class = "item-price-green">656.66 CNY</a>
					 			<a class = "item-price-grey">&nbsp;／件</a><br>
					 			<a class = "item-price-black">数量：
					 				<input class="item-quantity" value = "1"/> 
					 				<button class="item-add">添加到购物车</button></a><br>
					 			<a class = "item-price-blue">添加到收藏夹</a>
					 		</div>
				 		</div>
				 		
				 		<div class="item-detail-description">
				 			<div class="item-detail-description-title">产品说明</div>
				 			<div class="item-detail-description-description">本款产品……</div>
				 		</div>
				 		
				 		<div class="item-detail-description">
				 			<div class="item-detail-description-title">产品规格</div>
				 			<div class = "item-detail-whole2">
						 		<table id="item-detail-whole-tab2">
						 			<tr>
								 		<td class="item-tab2-col1"><a class = "item-content-grey">价格：</a></td>
							 			<td class="item-tab2-col2"><a class = "item-content-black">&nbsp;&nbsp;656.66CNY</a></td>
							 		</tr>
						 			<tr>
						 				<td class="item-tab2-col1"><a class = "item-content-grey">供应商：</a></td>
						 				<td class="item-tab2-col2"><a class = "item-content-blue">&nbsp;&nbsp;供应商1</a></td>
						 			</tr>
						 			<tr>
						 				<td class="item-tab2-col1"><a class = "item-content-grey">供应商部件号：</a></td>
						 				<td class="item-tab2-col2"><a class = "item-content-black">&nbsp;&nbsp;123</a></td>
						 			</tr>
						 			<tr>
								 		<td class="item-tab2-col1"><a class = "item-content-grey">剩余时间：</a></td>
						 				<td class="item-tab2-col2"><a class = "item-content-black">&nbsp;&nbsp;0天</a></td>
						 			</tr>
						 		</table>
					 		</div>
				 		</div>
			 		</div>
				 		
				 		
				 		
				 		
				 	</div>
				 <div>
				</div>
			</div>
		
		</div>


	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	  <!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	</body>
</html>