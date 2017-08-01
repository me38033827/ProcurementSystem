﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="description" content="A demo for Ariba" />
		<meta name="author" content="Zhixuan Sheng" />
		<title>请购单创建界面</title>
		
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
		<link href="assets/css/settlement.css" rel="stylesheet" />
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
					    	<li><a class="secondline-right" href="#">寻源项目</a></li>
					    	<li><a class="secondline-right" href="#">供应商</a></li>
					    	<li><a class="secondline-right" href="#">合同</a></li>
					    	<li><a class="secondline-right" href="#">商品目录</a></li>
					    	<li><a class="secondline-right" href="#">请购单</a></li>
					    	<li><a class="secondline-right" href="invoice-creation.html">发票</a></li>
					    </ul>
					</div>
					
					<!-- 第二行靠右 -->
					<div class="btn-group secondline" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" id="secondline-right-title" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					    	管理&nbsp;<span class="caret"></span>
					    </button>
					    <ul class="dropdown-menu" id="secondline-dropright">
					    	<li><a class="secondline-right" href="#">在线寻源</a></li>
					    	<li><a class="secondline-right" href="#">供应商管理</a></li>
					    	<li><a class="secondline-right" href="#">合同管理</a></li>
					    	<li><a class="secondline-right" href="procurement-commodity-catalog.html">商品目录</a></li>
					    	<li><a class="secondline-right" href="order-searching.html">订单协同</a></li>
					    	<li><a class="secondline-right" href="receipt-searching.html">收\发货协同</a></li>
					    	<li><a class="secondline-right" href="delivery-searching.html">物流管理</a></li>
					    	<li><a class="secondline-right" href="invoice-searching.html">发票管理</a></li>
					    	<li><a class="secondline-right" href="payment-searching.html">支付管理</a></li>
					    </ul>
					</div>	
				</div>
			</div>
			
			<!-- 主要内容 -->
			<div id="pr-creation-main">
				<div id="pr-line1">
					<a class="left inline-b black">PR1234：</a>
					<span class="glyphicon glyphicon-print blue" aria-hidden="true" id="pr-line1-print"></span>
					<a class="inline-b" id="pr-line1-print-font">打印</a>
					<button class="btn-w">继续购物</button>
					<button class="btn-w">更新税款</button>
					<button class="btn-w">删除</button>
					<button class="btn-w">保存</button>
					<a class="right inline-b grey" id="pr-line1-submit">提交</a>
				</div>
				<div id="pr-line2">
					<a id="pr-line2-font">摘要</a>
				</div>
				<div class="inline-b" id="pr-line3-left-out">
					<table>
						<tr>
							<td class="pr-left-col1">＊标题：
							</td>
							<td class="pr-left-col2"><input class="form-control input-pr inline-b"/>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">采购单位：
							</td>
							<td class="pr-left-col2"><a class="blue">CN25</a>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">委托人：
							</td>
							<td class="pr-left-col2">
								<div class="btn-group">
									<button data-toggle="dropdown" class="btn btn-default dropdown-toggle" id="pr-select">
										委托人1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">选项1</a></li>
										<li><a href="#">选项2</a></li>
										<li><a href="#">选项3</a></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">延迟采购直至：
							</td>
							<td class="pr-left-col2"><input class="form-control input-pr inline-b"/>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">公司代码：
							</td>
							<td class="pr-left-col2">
								<div class="btn-group">
									<button data-toggle="dropdown" class="btn btn-default dropdown-toggle" id="pr-select">
										CN25&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">选项1</a></li>
										<li><a href="#">选项2</a></li>
										<li><a href="#">选项3</a></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">相关项目：
							</td>
							<td class="pr-left-col2">
								<a class="blue inline-b">创建项目</a>&nbsp;&nbsp;&nbsp;&nbsp;
								<a class="blue inline-b">添加到项目</a>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">＊国家：
							</td>
							<td class="pr-left-col2">
								<div class="btn-group">
									<button data-toggle="dropdown" class="btn btn-default dropdown-toggle" id="pr-select">
										中国&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">选项1</a></li>
										<li><a href="#">选项2</a></li>
										<li><a href="#">选项3</a></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">＊区域：
							</td>
							<td class="pr-left-col2">
								<div class="btn-group">
									<button data-toggle="dropdown" class="btn btn-default dropdown-toggle" id="pr-select">
										北京&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">选项1</a></li>
										<li><a href="#">选项2</a></li>
										<li><a href="#">选项3</a></li>
									</ul>
								</div>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">原系统名称：
							</td>
							<td class="pr-left-col2"><input class="form-control input-pr inline-b"/>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">我的标签：
							</td>
							<td class="pr-left-col2"><div class="blue">应用标签...<span class="caret"></span></div>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">＊交付地址：
							</td>
							<td class="pr-left-col2"><input class="form-control input-pr inline-b"/>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">到货日期：
							</td>
							<td class="pr-left-col2"><input class="form-control input-pr inline-b"/>
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1" id="pr-textarea-font">备注：
							</td>
							<td class="pr-left-col2"><textarea class="form-control" id="pr-textarea"></textarea>
							<label>
								<input type="checkbox" class = "checkboxes" value="" />
							</label>
							&nbsp;&nbsp;对供应商可见
							</td>
						</tr>
						<tr>
							<td class="pr-left-col1">附件：
							</td>
							<td class="pr-left-col2">
								<span class="glyphicon glyphicon-paperclip inline-b blue" aria-hidden="true"></span>
								&nbsp;<a class="blue inline-b">添加附件</a>
							</td>
						</tr>
					</table>				

				</div>
				<div class="inline-b" id="pr-line3-right-out">
					<div id="settlement-line2-right">
						<table id="shopping-cart-abstract">
							<tr id="abstract-line1">
								<td class="settlement-tab2-col1">购物车摘要</td>
								<td class="settlement-tab2-col2"></td>
							</tr>
							
							<tr id="abstract-line2">
								<td class="settlement-tab2-col1">产品1</td>
								<td class="settlement-tab2-col2">¥656.66</td>
							</tr>
							<tr id="abstract-line3">
								<td class="settlement-tab2-col1">折扣</td>
								<td class="settlement-tab2-col2">¥0.00</td>
							</tr>
							<tr id="abstract-line4">
								<td class="settlement-tab2-col1">总计（1个项目）</td>
								<td class="settlement-tab2-col2">¥656.66</td>
							</tr>
						</table>
										
						<div id="settlement-line2-right">
							<table id="shopping-cart-abstract">
								<tr id="abstract-line1">
									<td class="settlement-tab2-col1">预算</td>
									<td class="settlement-tab2-col2">预算详情</td>
								</tr>
								
								<tr id="abstract-line2">
									<td class="settlement-tab2-col1">AGDKF13</td>
									<td class="settlement-tab2-col2"><a>¥656.66</a></td>
								</tr>
							</table>
						</div>	
					</div>
				</div>

				<div id="pr-title-out">
					<a id="pr-title-font">
						&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-down" aria-hidden="true" id="pr-span"></span>
				 		&nbsp;&nbsp;审批流程
					</a>
				</div>
				<div>
					<a class="grey inline-b" id="pr-approve-content">显示审批流程</a>
				</div>
				
				
				<div id="pr-title-out">
					<a id="pr-title-font">
						&nbsp;&nbsp;<span class="glyphicon glyphicon-chevron-down" aria-hidden="true" id="pr-span"></span>
				 		&nbsp;&nbsp;行项目
					</a>
				</div>
				<div id="pr-tab3-out">
					<table>
                        	<thead>	
                        		<tr>
                        			<td colspan="10"><a id="settlement-line2-left-left">总共1个项目</a></td>
                        			<td colspan="2"><a id="settlement-line2-left-right">显示详细信息</a></td>
                        		</tr>
                        	</thead>
                        	<tr>
	                        	<td>
	                        		<label>
								    	<input type="checkbox">
								    </label>
	                        	</td>
	                       		<td>编号</td>
	                     		<td>类型</td>
	                     		<td>说明</td>
	                        	<td>数量</td>
	                        	<td>单位</td>
	                        	<td>价格</td>
	                        	<td>折扣</td>
	                        	<td>净额</td>
	                        	<td>费用</td>
	                        	<td>税款</td>
	                        	<td>金额</td>
	                        </tr>
                            <tr>
                            	<td>
	                        		<label>
								    	<input type="checkbox">
								    </label>
							    </td>
                            	<td>1</td>
                            	<td>类型1</td>
                            	<td>说明1</td>
                            	<td><input id="pr-amount" value="1"/></td>
                            	<td>件</td>
                            	<td>¥656.66</td>
                            	<td>¥0.00</td>
                            	<td>¥656.66</td>
                            	<td>¥0.00</td>
                            	<td>¥0.00</td>
                            	<td>¥656.66</td>
                            	
                            </tr>
						</table>
				</div>
				
				<div>
				<div id="pr-tab3-supple">
					<button class="btn-w">操作
						&nbsp;&nbsp;&nbsp;
						<span class="caret"></span>
					</button>
					&nbsp;&nbsp;|&nbsp;&nbsp;
					<button class="btn-w">更新操作</button>
				</div>
				
				<div id="pr-line4">
					<a class="inline-b" id="pr-adjust"></a>
					<button class="btn-w">继续购物</button>
					<button class="btn-w">更新税款</button>
					<button class="btn-w">删除</button>
					<button class="btn-w">保存</button>
					<a class="right inline-b grey" id="pr-line1-submit">提交</a>
				</div>
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