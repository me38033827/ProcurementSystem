<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>寻源项目详情界面</title>
		
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
					<a class ="left return"  href="sourcing-searching.html">返回</a>
				
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
			
				<div class="right" id="contract-detail-top">
					<table>
						<tr>
							<td class="text-right">标识符：</td>
							<td class="blue">WS13344</td>
						</tr>
						<tr>
							<td class="text-right">任务：</td>
							<td>未完成的任务：0</td>
						</tr>
						<tr>
							<td class="text-right">当前阶段：</td>
							<td>审核条件，分析类别……</td>
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
					
					
					<div id="searching-title-out-3">
						<div class="inline-b">
							<a class="black" id="searching-title">WS13344</a>
							<a class="grey" id="supplier-detail-title">寻源项目</a>
						</div>
					</div>
				
					<div id="order-detail-line4">
						<button class="order-detail-clicked">概述</button>
						<button class="order-detail-not-clicked">文档</button>
						<button class="order-detail-not-clicked">任务</button>
						<button class="order-detail-not-clicked">团队</button>
						<button class="order-detail-not-clicked">信息板</button>
						<button class="order-detail-not-clicked">历史记录</button>
						
					</div>
					
					
					
					<div class="inline-b filters full">
						<div class="half inline-b">
							<div>
								<div class="invoice-detail-title">
									<a class="black">概述</a>
									<a class="right f-12">操作</a>
								</div>
								<table class="tab-height" id="supplier-crea-tab1">
									<tr>
										<td class="supplier-crea-tab-col1">标识符：
										</td>
										<td class="supplier-crea-tab-col2">WS13344
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">项目状态：
										</td>
										<td class="supplier-crea-tab-col2">已激活
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">版本：
										</td>
										<td class="supplier-crea-tab-col2">v1
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">版本备注：
										</td>
										<td class="supplier-crea-tab-col2">
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">项目色码：
										</td>
										<td class="supplier-crea-tab-col2">灰
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">所有者：
										</td>
										<td class="supplier-crea-tab-col2">用户1
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">项目花销：
										</td>
										<td class="supplier-crea-tab-col2">1469.00CNY
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">节省目标百分比：
										</td>
										<td class="supplier-crea-tab-col2">
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">合同月数：
										</td>
										<td class="supplier-crea-tab-col2">
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">合同生效日期：
										</td>
										<td class="supplier-crea-tab-col2">
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">流程状态：
										</td>
										<td class="supplier-crea-tab-col2">无选择
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">测试项目：
										</td>
										<td class="supplier-crea-tab-col2">是
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">基本语言：
										</td>
										<td class="supplier-crea-tab-col2">中文
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">地区：
										</td>
										<td class="supplier-crea-tab-col2">PRC PRC
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">部门：
										</td>
										<td class="supplier-crea-tab-col2">
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">资源提供者：
										</td>
										<td class="supplier-crea-tab-col2">无选择
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">项目原因：
										</td>
										<td class="supplier-crea-tab-col2">无选择
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">执行策略：
										</td>
										<td class="supplier-crea-tab-col2">无选择
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">访问控制：
										</td>
										<td class="supplier-crea-tab-col2">团队成员专用
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">寻源审批方式：
										</td>
										<td class="supplier-crea-tab-col2">竞价
										</td>
									</tr>
									<tr>
										<td class="supplier-crea-tab-col1">说明：
										</td>
										<td class="supplier-crea-tab-col2">
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div class="half inline-b right">
							<div class="inline-b tab-height" id="supplier-crea-tab2">
								<div class="inline-b filters full">
									<div class="invoice-detail-title full">
									<a class="black">流程</a>
									<a class="right f-12">所有任务</a>
								</div>
								<table class="fulltab">
									<tr>
										<td></td>
										<td class="blue">审核条件，分析类别</td>
									</tr>
									<tr>
										<td></td>
										<td class="blue">寻源和议价</td>
									</tr>
									<tr>
										<td></td>
										<td class="blue">项目结束</td>
									</tr>
								</table>
							</div>
							
							<div class="inline-b tab-height" id="supplier-crea-tab2">
								<div class="inline-b filters full">
									<div class="invoice-detail-title full">
										<a class="black">快速链接</a>
										<a class="right f-12">所有文档</a>
									</div>
									<p class="grey">“快速链接”是通向此项目中的重要文档的途径。要向此区域中添加快速链接，请导航到您要链接到的文档，并从其菜单中选择添加到快速链接。</p>
								</div>
							</div>
							
							<div class="inline-b tab-height" id="supplier-crea-tab2">
								<div class="inline-b filters full">
									<div class="invoice-detail-title full">
										<a class="black">声明</a>
										<a class="right f-12">详细信息</a>
										<a class="right f-12" style="margin-right:10px;">新建</a>
									</div>
									<a>欢迎来到本项目！</a> 
									<a class="right black f-13">2017年7月17日 ＊＊＊</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		<div class="foot">
			<div class="black f-12 foot-con">Copyright &copy; 2017.Demo. All rights reserved.</div>
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
