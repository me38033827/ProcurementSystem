<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>创建供应商界面</title>
<%@ include file="../../other/header1.jsp"%>
<%@ include file="../../other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
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
						href="procurement-catalog-creation.html">商品目录</a></li>
					<li><a class="secondline-right" href="pr-creation.html">请购单</a></li>
					<li><a class="secondline-right" href="invoice-creation.html">发票</a></li>
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

	<!-- 主要内容 -->
	<div id="searching-title-out">
		<a class="inline-b black" id="searching-title">创建新的供应商</a>
	</div>
	<div id="order-detail-main">
		<div id="order-detail-line4">
			<button class="order-detail-clicked">概要</button>
		</div>

		<div class="invoice-detail-title">
			<a class="black">组织概要</a>
		</div>

		<div class="inline-b filters">
			<div class="half inline-b">
				<table class="tab-height" id="supplier-crea-tab1">
					<tr>
						<td class="supplier-crea-tab-col1">＊组织名称：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">简短描述：</td>
						<td class="supplier-crea-tab-col2"><textarea
								class="form-control" id="pr-textarea"></textarea></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">供应商：</td>
						<td class="supplier-crea-tab-col2">是</td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">客户：</td>
						<td class="supplier-crea-tab-col2">
							<div class="radio">
								<label><input type="radio" name="empty"
									id="optionsRadios1" value="option1">是</label> <label><input
									type="radio" name="empty" id="optionsRadios2" value="option2"
									checked>否</label>
							</div>
						</td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">审批状态：</td>
						<td class="supplier-crea-tab-col2"><select id="my-select">
								<option>已批准</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">其他名称1：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">其他名称2：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">法定全称：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">股票交易代码：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">全球位置码：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">税款标识符：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">州税款标识符：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">地区税款标识符：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">VAT标识符：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="supplier-crea-tab-col1">免缴预扣税：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">供应的商品：</td>
						<td class="supplier-crea-tab-col2">（选择一个值）［&nbsp;<a
							class="blue inline-b">选择</a>&nbsp;］
						</td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">批准的商品：</td>
						<td class="supplier-crea-tab-col2">（选择一个值）［&nbsp;<a
							class="blue inline-b">选择</a>&nbsp;］
						</td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">商品(UNSPSC)：</td>
						<td class="supplier-crea-tab-col2">（选择一个值）［&nbsp;<a
							class="blue inline-b">选择</a>&nbsp;］
						</td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">公司所在州／省：</td>
						<td class="supplier-crea-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">供应商集成状态：</td>
						<td class="supplier-crea-tab-col2"></td>
					</tr>
					<tr>
						<td class="supplier-crea-tab-col1">供应商系统名称：</td>
						<td class="supplier-crea-tab-col2"></td>
					</tr>
				</table>
			</div>
			<div class="half inline-b right">
				<div class="inline-b tab-height" id="supplier-crea-tab2">
					<table>
						<tr>
							<td class="supplier-crea-tab-col1">其他地址：</td>
							<td class="supplier-crea-tab-col2">（选择一个值）［&nbsp;<a
								class="blue inline-b">选择</a>&nbsp;］
							</td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">＊总机：</td>
							<td class="supplier-crea-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">主要传真：</td>
							<td class="supplier-crea-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">主要电子邮件地址：</td>
							<td class="supplier-crea-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">公司URL：</td>
							<td class="supplier-crea-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">标识符：</td>
							<td class="supplier-crea-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">首选语言：</td>
							<td class="supplier-crea-tab-col2"><select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">组织类型：</td>
							<td class="supplier-crea-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">父级：</td>
							<td class="supplier-crea-tab-col2"><select id="my-select">
									<option>(无值)</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>
					</table>
				</div>
			</div>
		</div>



		<div class="invoice-detail-title">
			<a class="black">概要问卷</a>
		</div>
		<div>
			<table class="fulltab">
				<tr class="searching-tab-row1">
					<td>名称</td>
				</tr>
			</table>
		</div>
		<div id="approval-tab">
			<table class="fulltab" id="supplier-tab-bot">
				<tr class="searching-tab-row2">
					<td>1 公司信息</td>
					<td></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.1 公司名称</td>
					<td><input class="form-control input" /></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.2 请简要介绍一下贵公司</td>
					<td><textarea class="form-control" id="pr-textarea"></textarea></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.3 您有多少长期员工</td>
					<td><input class="form-control input" /></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.3 您有多少长期员工</td>
					<td><input class="form-control input" /></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.3 您有多少长期员工</td>
					<td><input class="form-control input" /></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.3 您有多少长期员工</td>
					<td><input class="form-control input" /></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.3 您有多少长期员工</td>
					<td><input class="form-control input" /></td>
				</tr>
				<tr class="searching-tab-row2">
					<td>1.3 您有多少长期员工</td>
					<td><input class="form-control input" /></td>
				</tr>
			</table>
		</div>
		<div>
			<table class="fulltab">
				<tr class="searching-tab-row3">
					<td colspan="2">
						<div align="right">
							<button class="btn-b">确定</button>
							<button class="btn-w"
								onclick="window.location.href='supplier-searching.html'">取消</button>
						</div>
					</td>
				</tr>
			</table>
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
