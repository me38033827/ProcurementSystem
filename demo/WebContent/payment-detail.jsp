<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>支付单据详情界面</title>
		
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
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">PAY123123</a>
				<a class="right inline-b black f-18">状态：已拒绝</a>
			</div>
			<div id="order-detail-main">
				<div id="order-detail-line2">
					<a class="black">这是您所选请求的详细信息。根据其状态，您可以对该请求进行编辑、更改、复制、取消或提交进行审批。您还可以打印改请求的详细信息。请复查请求并采取所需的操作。</a>
				</div>
				<div id="order-detail-line3">
					<button class="btn-w">打印</button>
				</div>
				<div id="order-detail-line4">
					<button class="order-detail-clicked">摘要</button>
					<button class="order-detail-not-clicked">历史记录</button>
				</div>
				
				<div class="invoice-detail-title">
					<a class="black">常规</a>
				</div>
				
				<div class="inline-b" id="invoice-detail-tab1">
					<table>
						<tr>
							<td id="order-detail-tab-col1">标识符：
							</td>
							<td id="order-detail-tab-col2">PAY123123
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">供应商：
							</td>
							<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">收货人地点：
							</td>
							<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">银行地址：
							</td>
							<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">银行账户：
							</td>
							<td id="order-detail-tab-col2">13461425745413
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">税号：
							</td>
							<td id="order-detail-tab-col2">1354646
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">Swift code：
							</td>
							<td id="order-detail-tab-col2">
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">支付方式：
							</td>
							<td id="order-detail-tab-col2">支付方式1
							</td>
						</tr>
					</table>
				</div>
				<div class="inline-b" id="invoice-detail-tab2">
					<table>
						<tr>
							<td id="order-detail-tab-col1">应付款：
							</td>
							<td id="order-detail-tab-col2">200.00CNY
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">交易：
							</td>
							<td id="order-detail-tab-col2">
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">付款条件：
							</td>
							<td id="order-detail-tab-col2">02304
							</td>
						</tr>
					</table>
				</div>
				
				<div class="invoice-detail-title">
					<a class="black">交易详细信息</a>
				</div>
				
				<div class="inline-b" id="invoice-detail-tab3">
					<table>
						<tr>
							<td id="order-detail-tab-col1">到期日：
							</td>
							<td id="order-detail-tab-col2">2017年7月8日
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">付款日期：
							</td>
							<td id="order-detail-tab-col2">2017年7月7日
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">批准的金额：
							</td>
							<td id="order-detail-tab-col2">200.00CNY
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">折扣金额：
							</td>
							<td id="order-detail-tab-col2">00.00CNY
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">调整金额：
							</td>
							<td id="order-detail-tab-col2">00.00CNY
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">应付金额：
							</td>
							<td id="order-detail-tab-col2">200.00CNY
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">银行地址：
							</td>
							<td id="order-detail-tab-col2">＊＊＊＊＊＊＊＊＊＊＊
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">银行账户：
							</td>
							<td id="order-detail-tab-col2">13461425745413
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">税号：
							</td>
							<td id="order-detail-tab-col2">1354646
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">Swift code：
							</td>
							<td id="order-detail-tab-col2">
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">支付方式：
							</td>
							<td id="order-detail-tab-col2">支付方式1
							</td>
						</tr>
					</table>
				</div>
				<div class="inline-b" id="invoice-detail-tab4">
					<table>
						<tr>
							<td id="order-detail-tab-col1">付款方式：
							</td>
							<td id="order-detail-tab-col2">付款方式1
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">付款途径：
							</td>
							<td id="order-detail-tab-col2">外部系统
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">付款结算方式：
							</td>
							<td id="order-detail-tab-col2">外部系统
							</td>
						</tr>
						
						<tr>
							<td id="order-detail-tab-col1">源发银行：
							</td>
							<td id="order-detail-tab-col2">＊＊＊银行
							</td>
						</tr>
						<tr>
							<td id="order-detail-tab-col1">收款银行：
							</td>
							<td id="order-detail-tab-col2">＊＊＊银行
							</td>
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
