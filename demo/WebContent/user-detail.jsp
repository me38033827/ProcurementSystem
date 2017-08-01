<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>用户详情界面</title>
		
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
					<a class="inline-b black" id="searching-title">查看“用户1”的详细信息</a>
					<button class="btn-w right" onclick="window.location.href='user-searching1.html'">完成</button>
				</div>
				<div class="user-main">
					 <!-- 搜索显示区域 -->
					 <div id="order-detail-line4">
						<button class="order-detail-clicked">常规</button>
						<button class="order-detail-not-clicked">组</button>
						<button class="order-detail-not-clicked">所有组</button>
					 </div>
					
					 <div id="order-detail-line2">
						<a class="black">指定用户信息并将该用户分配到组。用 * 标记的字段是必填字段。输入此个人数据并单击“保存”按钮后，您确认您授权根据 Ariba 隐私声明、贵公司与 Ariba 之间的服务协议和适用法律，在欧盟或其他辖区以外传送此个人数据。</a>
					 </div>
					 
					 <div class="inline-b" id="user-detail-tab">
						<table>
							<tr>
								<td id="order-detail-tab-col1">定义者：
								</td>
								<td id="order-detail-tab-col2">管理者
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">类型：
								</td>
								<td id="order-detail-tab-col2">第三方企业用户
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">用户标识符：
								</td>
								<td id="order-detail-tab-col2">用户1
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">名称：
								</td>
								<td id="order-detail-tab-col2">用户1
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">组织：
								</td>
								<td id="order-detail-tab-col2">测试组
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务电子邮件地址：
								</td>
								<td id="order-detail-tab-col2">no-reply@deloitte.com.cn
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">允许外部电子邮件域：
								</td>
								<td id="order-detail-tab-col2">
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务电话号码：
								</td>
								<td id="order-detail-tab-col2">
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">业务传真号码：
								</td>
								<td id="order-detail-tab-col2">
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">区域：
								</td>
								<td id="order-detail-tab-col2">中文－中国大陆
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">默认货币：
								</td>
								<td id="order-detail-tab-col2">人民币
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">时区：
								</td>
								<td id="order-detail-tab-col2">中国
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">上级主管：
								</td>
								<td id="order-detail-tab-col2">用户3
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">备用电子邮件地址：
								</td>
								<td id="order-detail-tab-col2">
								</td>
							</tr>
							
							<tr>
								<td id="order-detail-tab-col1">创建日期：
								</td>
								<td id="order-detail-tab-col2">2017年7月12日 18:00
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">上次修改日期：
								</td>
								<td id="order-detail-tab-col2">2017年7月20日 09:32
								</td>
							</tr>
							<tr>
								<td id="order-detail-tab-col1">停用日期：
								</td>
								<td id="order-detail-tab-col2">
								</td>
							</tr>
							
						</table>
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
