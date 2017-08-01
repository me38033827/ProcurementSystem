﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>审批流程管理界面</title>
		
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
		<link href="assets/css/approval.css" rel="stylesheet" />
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
				<a class="inline-b black" id="searching-title">搜索</a>
				<a class="black inline-b">类型：</a>
				<div class="btn-group">
					<button data-toggle="dropdown" class="btn btn-default dropdown-toggle inline-b" id="order-filter-select1">
						审批流&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">审批流</a></li>
						<li><a href="order-searching.html">订购单</a></li>
						<li><a href="receipt-searching.html">收货记录</a></li>
						<li><a href="delivery-searching.html">物流跟踪</a></li>
						<li><a href="invoice-searching.html">发票</a></li>
						<li><a href="payment-searching.html">支付</a></li>
					</ul>
				</div>
			</div>
			
			<!-- 主要内容 -->
			<div class="main-subjects">
				<div id="filter">
				 	<a id="order-filter-right-title">审批流</a>
				 	<a id="order-filter-right-title2">查看所有</a>
				 	<a id="order-filter-right-sub">
				 		<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
				 		&nbsp;&nbsp;我的标签
				 	</a>
				 	<a id="order-filter-right-subcontent">无项目</a>
				 	<a id="order-filter-right-sub">
				 		<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
				 		&nbsp;&nbsp;我保存的搜索设置
				 	</a>
				 	<a id="order-filter-right-subcontent">无项目</a>
				 	<a id="order-filter-right-sub">
				 		<span class="glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
				 		&nbsp;&nbsp;公共的保存搜索
				 	</a>
				 	<a id="order-filter-right-subcontent">无项目</a>
				</div>
				
				 <!-- 搜索显示区域 -->
				 <div class="results-out" >
				 	<a class="black f-10 inline-b">根据您的组成员资格管理您拥有的待批件类型的审批流程。审批流程将一组审批规则结合在一起。审批规则确定了哪些用户或组必须审批每个文档，以及适用于规则的任何条件。要打开一个审批流程以查看、修改或激活。
				 	</a>
				 	<div id="approval-filter">
				 		<div id="order-filter-line1">
				 			<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
				 			<div class="right blue" id="order-filter-line1-option">搜索选项</div>
				 		</div>
				 		<div id="approval-filter-line2">
					 		<div class="left" id="order-filter-left">
					 			<table>
					 				<tr>
					 					<td class="order-filter-left-col1">标题：
					 					</td>
					 					<td class="order-filter-left-col2"><input class="form-control input"/>
					 					</td>
					 				</tr>
					 			</table>
					 		</div>
					 		<div class="right" id="order-filter-right">
					 			<table>
					 				<tr>	
					 					<td class="order-filter-right-col1">待批件类型：</td>
					 					<td class="order-filter-right-col2">
					 						<select id="my-select">
												<option>所有类型</option>
												<option>选项1</option>
												<option>选项2</option>
											</select>
					 					</td>
					 				</tr>
					 				<tr>
					 					<td class="order-filter-right-col1">已激活：
					 					</td>
					 					<td>
					 						<div class="radio">
												<label><input type="radio" name="hide" id="optionsRadios1" value="option1">是</label>
											  	<label><input type="radio" name="hide" id="optionsRadios2" value="option2">否</label>
											  	<label><input type="radio" name="hide" id="optionsRadios3" value="option3" checked>是或否</label>
											</div>
					 					</td>
					 				</tr>
					 			</table>
					 		</div>
					 	</div>
				 		<div id="order-filter-line3">
				 			<div class="right">
				 				<button class="btn-b">搜索</button>
				 				<button class="btn-w">重置</button>
				 			</div>
				 		</div>
				 	</div>
			 		<div>
			 			<div id="order-total">
				 			<div class="left" id="order-total-title">
				 				<a class="black">搜索结果</a>
				 			</div>
				 			<div class="left" id="order-total-quantity">
				 				<a class="black">找到129个项目</a>
				 			</div>
						</div>
					</div>
					
					<div id="order-result-out">
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row1">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">待批件类型</td>
									<td class="approval-t-col3">类型</td>
									<td class="approval-t-col4">标题</td>
									<td class="approval-t-col5">状态</td>
									<td class="approval-t-col6">版本</td>
									<td class="approval-t-col7">编辑人</td>
									<td class="approval-t-col8">上次修改时间</td>
								</tr>
							</table>
						</div>
						<div id="approval-tab">
							<table class="fulltab">
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4"><a href="approval-detail.html">审批项目1</a></td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								<tr class="searching-tab-row2">
									<td class="approval-t-col1">
										<label>
											<input type="checkbox" class = "checkboxes" value="" />
										</label>
									</td>
									<td class="approval-t-col2">预付款</td>
									<td class="approval-t-col3">类型1</td>
									<td class="approval-t-col4">＊＊＊＊＊＊＊＊＊</td>
									<td class="approval-t-col5">已签入</td>
									<td class="approval-t-col6">3</td>
									<td class="approval-t-col7">＊＊＊</td>
									<td class="approval-t-col8">2017年7月10日 16:53</td>
								</tr>
								
							</table>
						</div>
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row3">
									<td colspan="8">
										<button class="btn-w">复制</button>
										<button class="btn-w">删除</button>
										<button class="btn-w" onclick="window.location.href='approval-creation.html'">新建</button>
									</td>
								</tr>
							</table>
						</div>
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