﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>导入新目录界面</title>
		
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
		<link href="assets/css/catalog.css" rel="stylesheet" />
	</head>
	<!-- 页面整体宽度：1320px -->
	<body>
		<div class="container" id="whole-container">
			
			<!-- 标题及导航栏第一行 -->
			<div class="container" id="firstline-out" >
				<div class="navbar navbar-inverse set-radius-zero" id="firstline">
					<a id="page-name" class="left">LOGO</a>
					<a class ="left return"  href="procurement-commodity-catalog.html">返回</a>
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
			
			<!-- 导入新目录标题 -->
			<div id="catalog-creation-title1">
				<a id="catalog-creation-title-font">目录－导入新目录</a>
			</div>
			<!-- 导入新目录具体内容 -->
			<div id="catalog-creation">
				<p>请输入必须的信息，然后选择相应的设置，以导入新目录或者创建新的空目录</p>
				<table class="catalog-table">
					<tr>
						<td class="col1">选择：</td>
						<td class="col2">
							<select id="my-select">
								<option>创建新的目录订阅</option>
								<option>选项1</option>
								<option>选项2</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td class="col1">*供应商：</td>
						<td class="col2">（选择一个值）选择</td>
					</tr>
					
					<tr>
						<td class="col1">*目录订阅名称：</td>
						<td class="col2"><input id="creation-title" /></td>
					</tr>
					
					<tr>
						<td class="col1">创建空目录：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="empty" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="empty" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">跳过审批：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="jump" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="jump" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">在送往审批前停止：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="stopbefore" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="stopbefore" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">自动激活：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="activiate" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">允许多供应商CIF：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="multiple" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="multiple" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">隐藏PunchOut商品价格：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="hide" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="hide" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">层级：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="status" id="optionsRadios1" value="option1">白金</label>
							  	<label><input type="radio" name="status" id="optionsRadios2" value="option2">黄金</label>
							  	<label><input type="radio" name="status" id="optionsRadios3" value="option3">白银</label>
							  	<label><input type="radio" name="status" id="optionsRadios4" value="option4" checked>无</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">宽松验证：</td>
						<td class="col2"><button type="submit" class="btn btn-default" id="catalog-creation-config">配置</button></td>
					</tr>
					
					<tr>
						<td class="col1">目录文件：</td>
						<td class="col2"><button type="submit" class="btn btn-default" id="catalog-creation-select">选择文件</button></td>
					</tr>
				</table>
				<button type="submit" class="btn btn-default" id="catalog-creation-cancel">保存</button>
			</div>
		</div>
		
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	  <!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	</body>
</html>