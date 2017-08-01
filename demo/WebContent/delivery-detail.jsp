<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>物流跟踪界面</title>
		
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
			
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">物流跟踪</a>
			</div>
			
			<!-- 主要内容 -->
			<div class="main-delivery">
				 <!-- 搜索显示区域 -->
				 <div id="delivery-out">
				 	<div class="delivery-adjust"></div>
				 	<div id="order-detail-line">
						<a class="order-detail-subtitle">物流信息</a>
					</div>
					<div class="delivery-adjust"></div>
					<div>
				 		<table class="delivery-tab1">
				 			<tr>
				 				<td>订单号：</td>
				 				<td class="blue">po151132</td>
				 			</tr>
				 			<tr>
				 				<td>供应商：</td>
				 				<td>＊＊＊＊＊＊＊＊＊</td>
				 			</tr>
				 			<tr>
				 				<td>创建时间：</td>
				 				<td>2017年7月14日 16:12</td>
				 			</tr>
				 			<tr>
				 				<td>物流编号：</td>
				 				<td>12412983219</td>
				 			</tr>
				 			<tr>
				 				<td>物流公司：</td>
				 				<td>顺丰快递</td>
				 			</tr>
				 			<tr>
				 				<td>运单号码：</td>
				 				<td>9184712612784274921</td>
				 			</tr>
				 		</table>
				 	</div>
				 	<div class="delivery-adjust"></div>
				 	<div class="delivery-adjust"></div>
				 	<div class="delivery-adjust"></div>
				 	<div class="delivery-adjust"></div>
				 	<div class="delivery-adjust"></div>
				 	<div id="order-detail-line">
						<a class="order-detail-subtitle">物流动态</a>
					</div>
					<div class="delivery-adjust"></div>
				 	<div>
			 			<table class="delivery-tab1">
			 				<tr>
			 					<td>2017-07-10 09:12:21</td>
			 					<td>浙江省台州市天台市公司 已收件</td>
			 				</tr>
			 				<tr>
			 					<td>2017-07-10 10:02:22</td>
			 					<td>浙江省台州市天台市公司 已发出，下一站 北京转运公司</td>
			 				</tr>
			 				<tr>
			 					<td>2017-07-10 11:09:41</td>
			 					<td>北京转运中心公司 已收入</td>
			 				</tr>
			 				<tr>
			 					<td class="blue">2017-07-10 09:12:21</td>
			 					<td class="blue">北京转运中心公司 已发出，下一站 北京市朝阳区望京分拣中心</td>
			 				</tr> 				
			 			</table>
				 	</div>
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
