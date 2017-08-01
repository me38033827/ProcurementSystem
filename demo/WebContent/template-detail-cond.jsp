<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>模版详情－条件界面</title>
		
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
			
			<!-- 主要内容 -->
			
			<div class="right" id="contract-detail-top">
				<table>
					<tr  id="template-exit-out">
						<td id="template-exit-left">
							<table>
								<tr>
									<td class="text-right">状态：</td>
									<td class="blue">草稿</td>
								</tr>
								<tr>
									<td class="text-right">版本：</td>
									<td>原始</td>
								</tr>
							</table>
						</td>
						<td id="template-exit">
							<button class="btn-w">退出</button>
						</td>
					</tr>
				</table>
				
			</div>
			
			<div class="left" id="template-detail-label">
				<div id="template-detail-label-title"><a class="black">高级选项</a></div>
				<div id="template-detail-label-content">
					<a class="f-13">创建我的测试项目</a>
					<a class="f-13">默认条件</a>
					<a class="black f-13">测试条件</a>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">修订</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
					<div>
						<label>
							<input type="checkbox" class = "checkboxes" value="" />
						</label>
						<a class="inline-b black">＊＊＊＊＊＊＊＊＊＊＊＊</a>
					</div>
				</div>
			</div>
		
			
			<div id="order-detail-main-1">
				<div id="searching-title-out-2">
					<div class="inline-b">
						<a class="black" id="searching-title">模版1</a>
						<a class="grey" id="supplier-detail-title">合同工作区（采购）</a>
					</div>
				</div>
			
				<div id="order-detail-line4">
					<button class="order-detail-not-clicked" onclick="window.location.href='template-detail.html'">概述</button>
					<button class="order-detail-not-clicked" onclick="window.location.href='template-detail-doc.html'">文档</button>
					<button class="order-detail-not-clicked"onclick="window.location.href='template-detail-task.html'">任务</button>
					<button class="order-detail-not-clicked">团队</button>
					<button class="order-detail-clicked">条件</button>
					<button class="order-detail-not-clicked">高级选项</button>
					<button class="order-detail-not-clicked">历史记录</button>
				</div>
				
				<div id="contract-detail-d">
					<a class="black f-16">条件</a>
					<button class="btn-w right">添加条件</button>
				</div>
				
				<div>
					<div>
						<table class="fulltab" id="contract-detail-tab">
							<tr class="searching-tab-row1">
								<td class="temp-cond-col1">名称</td>
								<td class="temp-cond-col2">说明</td>
								<td class="temp-cond-col3">表达式</td>
								<td class="temp-cond-col4">范围</td>
								<td class="temp-cond-col5"></td>
							</tr>
						</table>
					</div>
					<div id="contract-detail-tab">
						<table class="fulltab">
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
							<tr class="searching-tab-row2">
								<td class="temp-cond-col1">修正</td>
								<td class="temp-cond-col2"></td>
								<td class="temp-cond-col3">(((修正类型)等于(Renewal))OR((修正类型)等于(Amendment)))</td>
								<td class="temp-cond-col4">项目</td>
								<td class="temp-cond-col5">操作</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="adjust1"></div>
				<div id="contract-detail-d">
					<a class="black f-16">问题</a>
					<button class="btn-w right">添加问题</button>
				</div>
				<div>
					<table class="fulltab" id="contract-detail-tab">
						<tr class="searching-tab-row1">
							<td>文本</td>
							<td>可见性条件</td>
							<td></td>
						</tr>
						<tr class="searching-tab-row2">
							<td>你将使用哪个模版</td>
							<td>（无）</td>
							<td>操作</td>
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
