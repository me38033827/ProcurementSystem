<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>收货管理界面</title>
		
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
				<a class="inline-b black" id="searching-title">收货管理编辑</a>
			</div>
			
			<!-- 主要内容 -->
			<div id="order-detail-main">
				<div id="order-detail-line4">
					<button class="order-detail-clicked">摘要</button>
					<button class="order-detail-not-clicked">审批流程</button>
				</div>
				<div class="delivery-adjust"></div>
				<div class="delivery-adjust"></div>
				<div class="inline-b" id="delivery-receipt-tab1">
					<table>
						<tr>
							<td id="order-detail-tab-col1">订单标识符：
							</td>
							<td id="order-detail-tab-col2" class="blue"><a href="order-detail.html">10000081</a>
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">订单标题：
							</td>
							<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">原系统名称：
							</td>
							<td id="order-detail-tab-col2"><input class="form-control input"/>
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">我的标签：
							</td>
							<td id="order-detail-tab-col2"><div class="blue">应用标签...<span class="caret"></span></div>
							</td>
						</tr>
						
					</table>
				</div>
				<div class="inline-b" id="delivery-receipt-tab2">
					<table>
						<tr>
							<td id="order-detail-tab-col1">日期：
							</td>
							<td id="order-detail-tab-col2">2017年7月12日（星期三）
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">处理状态：
							</td>
							<td id="order-detail-tab-col2">正在接收
							</td>
						</tr>
					</table>
				</div>
				
				
				
				
			
				
				<div class="invoice-detail-title">
					<a class="black">行项目－按数量接收</a>
				</div>
				<div id="order-tab-1">
					<table>
						<tr id="order-tab-1-row1">
							<td>编号</td>
							<td>数量</td>
							<td>完整描述</td>
							<td>单位</td>
							<td>供应商部件号</td>
							<td>以前接收数量</td>
							<td>以前拒绝数量</td>
							<td>已接收</td>
							<td>已拒绝</td>
							<td>已收总计</td>
							<td>接收日期</td>
							<td>原系统采购订单行项目</td>
						</tr>
						<tr id="order-tab-1-row2">
							<td>1</td>
							<td>7</td>
							<td>＊＊＊＊＊＊</td>
							<td>件</td>
							<td>12341</td>
							<td>0</td>
							<td>0</td>
							<td><input class="form-control input" value="0"/></td>
							<td><input class="form-control input" value="0"/></td>
							<td>0</td>
							<td><input class="form-control input" value="2017年7月12日"/></td>
							<td></td>
						</tr>
					</table>
					<button class='btn-w' id="invoice-detail-info">更新合计</button>
					<div>
						<a class="inline-b black">关闭订单：</a>
						<div class="radio inine-b">
							<label><input type="radio" name="activiate" id="optionsRadios1" value="option1">是</label>
						  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2" checked>否</label>
						</div>
					</div>
				</div>
				
				<div class="invoice-detail-title">
					<a class="black">备注－适用于整个收货记录</a>
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
