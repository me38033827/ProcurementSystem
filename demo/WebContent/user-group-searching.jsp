<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>组管理界面</title>
		
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
			<div class="con">
				<div id="searching-title-out">
					<a class="inline-b black" id="searching-title">组管理</a>
				</div>
				<div class="user-main">
					 <!-- 搜索显示区域 -->
					 <div class="user-left">
					 	<a class="f-16 black"><span class="caret"></span>&nbsp;&nbsp;用户</a>
					 	<a class="f-14 black" href="user-searching.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户管理</a>
					 	<a class="f-14 black" href="user-creation.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建用户</a>
					 	<a class="f-16 black"><span class="caret"></span>&nbsp;&nbsp;组</a>
					 	<a class="f-14" href="user-group-searching.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组管理</a>
					 	<a class="f-14 black" href="user-group-creation.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建组</a>
					 </div>
					 <div class="user-right">
					 	<a class="black f-14">请更改搜索条件或名称，然后进行搜索</a>
					 	<div id="filters">
					 		<div id="order-filter-line1">
					 			<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
					 			<div class="right blue" id="order-filter-line1-option">添加／删除搜索筛选器</div>
					 		</div>
					 		<div>
						 		<div align="left"  class="inline-b col-md-6" style="padding-left:10%;">
						 			<table>
						 				<tr>
						 					<td class="order-filter-left-col1">组名称：
						 					</td>
						 					<td class="order-filter-left-col2"><input class="form-control input"/>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">说明：
						 					</td>
						 					<td class="order-filter-left-col2"><input class="form-control input"/>
						 					</td>
						 				</tr>
						 				<tr>
						 					<td class="order-filter-left-col1">已激活：
						 					</td>
						 					<td class="order-filter-left-col2">
						 						<div class="radio">
													<label><input type="radio" name="activiate" id="optionsRadios1" value="option1">是</label>
												  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2">否</label>
												  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2" checked>是或否</label>
												</div>
						 					</td>
						 				</tr>
						 			</table>
						 		</div>
						 	</div>
					 		<div id="order-filter-line3">
					 			<div class="right">
					 				<button class="btn-b" onclick="window.location.href='user-group-searching1.html'">搜索</button>
					 				<button class="btn-w">全部列出</button>
					 			</div>
					 		</div>
					 	</div>
					 		
				 		<div class="adjust1"></div>
				 		<div class="adjust1"></div>
						
						<div id="order-result-out">
							<div>
								<table class="fulltab">
									<tr class="searching-tab-row1">
										<td class="group-search-col1">组名称</td>
										<td class="group-search-col2">定义者</td>
										<td class="group-search-col3">说明</td>
										<td class="group-search-col4">用户可以请求责任</td>
										<td class="group-search-col5"></td>
									</tr>
								</table>
							</div>
							<div id="user-searching-tab-out">
								<table class="fulltab">
									<tr class="order-t-col2">
										<td colspan="5" style="text-align:center;">无项目</td>
									</tr>
								</table>
							</div>
							<div>
								<table class="fulltab">
									<tr class="searching-tab-row3">
										<td colspan="8">
											<button class="btn-w" onclick="window.location.href='user-group-creation.html'">创建组</button>
										</td>
									</tr>
								</table>
							</div>
				 		</div>
					 </div>
				</div>
			</div>
		</div>
		<div class="foot">
			<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All rights reserved.</div>
		</div>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	  <!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
	</body>
</html>
