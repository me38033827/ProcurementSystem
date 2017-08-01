<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="A demo for Ariba" />
<meta name="author" content="Zhixuan Sheng" />

<!-- 导入CSS -->
<!-- BOOTSTRAP CORE STYLE  -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" />
<!-- FONT AWESOME STYLE  -->
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLE  -->
<link href="css/style.css" type="text/css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- MY CSS -->
<link href="css/mycss.css" type="text/css" rel="stylesheet" />
<link href="css/catalog.css" type="text/css" rel="stylesheet" />
<link href="css/order.css" rel="stylesheet" />
<link href="css/settlement.css" rel="stylesheet" />



<!-- 导入JS -->
<!-- CORE JQUERY  -->
<script src="js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS  -->
<script src="js/bootstrap.js"></script>
<!-- CUSTOM SCRIPTS  -->
<script src="js/custom.js"></script>
<!-- MyJS -->
<script src="js/myJS.js"></script>



<!-- 导航 -->
<div class="container" id="whole-container">
	<!-- 标题及导航栏第一行 -->
	<div class="container" id="firstline-out">
		<div class="navbar navbar-inverse set-radius-zero" id="firstline">
			<a id="page-name" class="left">LOGO</a>

			<!-- 首行靠右导航栏 -->
			<div class="right" id="right-div">
				<button id="firstline-icon">
					<span class="glyphicon glyphicon-search" aria-hidden="true"
						id="firstline-search"></span>
				</button>
				<button id="firstline-icon">
					<span class="glyphicon glyphicon-print" aria-hidden="true"
						id="firstline-print"></span>
				</button>
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
				<button type="button" class="btn btn-default dropdown-toggle"
					id="secondline-right-title" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					创建&nbsp;<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" id="secondline-dropright">
					<li><a class="secondline-right" href="sourcing-creation.html">寻源项目</a></li>
					<li><a class="secondline-right" href="supplier-creation.html">供应商</a></li>
					<li><a class="secondline-right"
						href="contract-workspace-creation.html">合同</a></li>
					<li><a class="secondline-right"
						href="createCommodityCatalogue">商品目录</a></li>
					<li><a class="secondline-right" href="createPrOrder">请购单</a></li>
					<li><a class="secondline-right" href="createInvoice">发票</a></li>
					<li><a class="secondline-right" href="template-creation.html">模版</a></li>
					<li><a class="secondline-right" href="approval-creation.html">审批</a></li>
				</ul>
			</div>

			<!-- 第二行靠右 -->
			<div class="btn-group secondline" role="group">
				<button type="button" class="btn btn-default dropdown-toggle"
					id="secondline-right-title" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					管理&nbsp;<span class="caret"></span>
				</button>
				<ul class="dropdown-menu" id="secondline-dropright">
					<li><a class="secondline-right" href="sourcing-searching.html">在线寻源</a></li>
					<li><a class="secondline-right" href="supplier-searching.html">供应商管理</a></li>
					<li><a class="secondline-right" href="contract-searching.html">合同管理</a></li>
					<li><a class="secondline-right"
						href="procurement-commodity-catalog.html">商品目录</a></li>
					<li><a class="secondline-right" href="order-searching.html">订单协同</a></li>
					<li><a class="secondline-right" href="receipt-searching.html">收\发货协同</a></li>
					<li><a class="secondline-right" href="delivery-searching.html">物流管理</a></li>
					<li><a class="secondline-right" href="invoice-searching.html">发票管理</a></li>
					<li><a class="secondline-right" href="payment-searching.html">支付管理</a></li>
					<li><a class="secondline-right" href="user-searching.html">用户管理</a></li>
					<li><a class="secondline-right"
						href="template-detail-doc.html">模版管理</a></li>
					<li><a class="secondline-right" href="approval-searching.html">审批管理</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
