<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>合同工作区创建界面</title>
		
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
				<a class="inline-b black" id="searching-title">建立合同工作区（采购）</a>
				<div class="right">
						<button class="btn-b" onclick="window.location.href='contract-creation.html'">创建</button>
						<button class="btn-w">取消</button>
					</div>
			</div>
			<div id="order-detail-main">
				<div id="order-detail-line2">
					<a class="black">要创建一个采购合同工作区，请指定下述字段。用于构建您的采购合同工作区的模版将显示在该页底部，可用模版可能会因您输入的项目属性而异。</a>
				</div>
				
				<div class="inline-b" id="invoice-detail2-tab1">
					<table>
						<tr>
							<td class="contract-tab-col1">名称：
							</td>
							<td class="contract-tab-col2">
								<input class="form-control input"/>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">说明：
							</td>
							<td class="contract-tab-col2"><input class="form-control input"/>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">相关标识符：
							</td>
							<td class="contract-tab-col2"><input class="form-control input"/>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">从合同复制：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">＊测试项目：
							</td>
							<td class="contract-tab-col2">
								<div class="radio">
									<label><input type="radio" name="multiple" id="optionsRadios1" value="option1" checked>是</label>
								  	<label><input type="radio" name="multiple" id="optionsRadios2" value="option2">否</label>
								</div>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">基本语言：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>中文(中国)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">层级类型：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>独立合约</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">＊供应商：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">受影响的相关者：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">提议的合同金额：
							</td>
							<td class="contract-tab-col2">
								<input class="form-control input"/>CNY
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">＊合同金额：
							</td>
							<td class="contract-tab-col2">
								<input class="form-control input"/>CNY
							</td>
						</tr>						
						<tr>
							<td class="contract-tab-col1">＊商品：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">＊地区：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>	
						<tr>
							<td class="contract-tab-col1">＊部门：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">前一相关项目：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">预算系统：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>其他</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
					</table>
				</div>
				<div class="inline-b" id="invoice-detail2-tab2">
					<table>
						<tr>
							<td class="contract-tab-col1">＊签约日期：
							</td>
							<td class="contract-tab-col2"><input class="form-control input"/>
							</td>
						</tr>
						
						<tr>
							<td class="contract-tab-col1">＊期限类型：
							</td>
							<td class="contract-tab-col2">
								<select id="my-select">
									<option>固定</option>
									<option>选项1</option>
									<option>选项2</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">＊系统有效日期：
							</td>
							<td class="contract-tab-col2"><input class="form-control input"/>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">失效日期：
							</td>
							<td class="contract-tab-col2"><input type="date" value="2015-09-24"/>
							</td>
						</tr>
					</table>
				</div>
				
				
				
				<div class="invoice-detail-title">
					<a class="black">选择模版</a>
				</div>
				<a class="black">请选择您要使用的模版，并回答与之相关的所有问题，以便创建您的项目。以上区段的字段设置值将对可用模版产生影响。</a>
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
