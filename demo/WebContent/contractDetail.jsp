<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>合同详情界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->

		<div class="right" id="contract-detail-top">
			<table>
				<tr>
					<td class="text-right">标识符：</td>
					<td class="blue">C100569</td>
				</tr>
				<tr>
					<td class="text-right">任务：</td>
					<td>未完成的任务：0</td>
				</tr>
			</table>
		</div>

		<div class="left" id="contract-detail-label">
			<a class="black">相关信息</a> <a class="black f-13">展开项目</a> <a
				class="f-13">所有信息区域</a> <a class="f-13">搜索信息</a>
		</div>


		<div id="order-detail-main-1">


			<div id="searching-title-out-2">
				<div class="inline-b">
					<a class="black" id="searching-title">C100569</a> <a class="grey"
						id="supplier-detail-title">合同工作区（采购）</a>
				</div>
			</div>

			<div id="order-detail-line4">
				<button class="order-detail-clicked">概述</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='contract-detail-doc.jsp'">文档</button>
				<button class="order-detail-not-clicked">任务</button>
				<button class="order-detail-not-clicked">团队</button>
				<button class="order-detail-not-clicked">信息板</button>
				<button class="order-detail-not-clicked">历史记录</button>

			</div>



			<div class="inline-b filters full">
				<div class="half inline-b">
					<div>
						<div class="invoice-detail-title">
							<a class="black">概述</a> <a class="right f-12">操作</a>
						</div>
						<table class="tab-height" id="supplier-crea-tab1">
							<tr>
								<td class="supplier-crea-tab-col1">合同标识符：</td>
								<td class="supplier-crea-tab-col2">C100569</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">合同状态：</td>
								<td class="supplier-crea-tab-col2">已发布</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">版本：</td>
								<td class="supplier-crea-tab-col2">v3</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">版本备注：</td>
								<td class="supplier-crea-tab-col2"></td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">所有者：</td>
								<td class="supplier-crea-tab-col2">＊＊＊</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">测试项目：</td>
								<td class="supplier-crea-tab-col2">否</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">基本语言：</td>
								<td class="supplier-crea-tab-col2">中文</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">地区：</td>
								<td class="supplier-crea-tab-col2">PRC PRC</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">部门：</td>
								<td class="supplier-crea-tab-col2">中国 中国</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">访问控制：</td>
								<td class="supplier-crea-tab-col2">采购合同用户专用</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">说明：</td>
								<td class="supplier-crea-tab-col2"></td>
							</tr>
						</table>
					</div>

					<div>
						<div class="invoice-detail-title">
							<a class="black">合同属性</a> <a class="right f-12">操作</a>
						</div>
						<table class="tab-height" id="supplier-crea-tab1">
							<tr>
								<td class="supplier-crea-tab-col1">相关标识符：</td>
								<td class="supplier-crea-tab-col2"></td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">上次发布日期：</td>
								<td class="supplier-crea-tab-col2">2017年7月17日（您目前正在查看）</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">层级类型：</td>
								<td class="supplier-crea-tab-col2">独立合约</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">修正类型：</td>
								<td class="supplier-crea-tab-col2">修正</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">修正原因备注：</td>
								<td class="supplier-crea-tab-col2">＊＊＊＊＊＊＊＊</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">提议的合同金额：</td>
								<td class="supplier-crea-tab-col2"></td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">合同金额：</td>
								<td class="supplier-crea-tab-col2">1 CNY</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">供应商：</td>
								<td class="supplier-crea-tab-col2">中建三局</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">受影响的相关者：</td>
								<td class="supplier-crea-tab-col2">中建三局</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">签约日期：</td>
								<td class="supplier-crea-tab-col2">2017年7月10日</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">流程状态：</td>
								<td class="supplier-crea-tab-col2">正在创建</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">预算系统：</td>
								<td class="supplier-crea-tab-col2">其他</td>
							</tr>
						</table>
					</div>

					<div>
						<div class="invoice-detail-title">
							<a class="black">合同条款属性</a> <a class="right f-12">操作</a>
						</div>
						<table class="tab-height" id="supplier-crea-tab1">
							<tr>
								<td class="supplier-crea-tab-col1">期限类型：</td>
								<td class="supplier-crea-tab-col2">永久有效</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">系统有效日期：</td>
								<td class="supplier-crea-tab-col2">2017年7月27日</td>
							</tr>
							<tr>
								<td class="supplier-crea-tab-col1">失效日期：</td>
								<td class="supplier-crea-tab-col2"></td>
							</tr>
						</table>
					</div>
				</div>
				<div class="half inline-b right">
					<div class="inline-b tab-height" id="supplier-crea-tab2">
						<div class="inline-b filters full">
							<div class="invoice-detail-title full">
								<a class="black">流程</a> <a class="right f-12">所有任务</a>
							</div>
							<table class="fulltab">
								<tr>
									<td>初始授权</td>
									<td class="blue">2017年4月1日</td>
								</tr>
								<tr>
									<td>沟通和回顾</td>
									<td class="blue">2017年4月1日</td>
								</tr>
								<tr>
									<td>批准和确定</td>
									<td class="blue">2017年4月1日</td>
								</tr>
								<tr>
									<td>确定和发布</td>
									<td class="blue">2017年4月1日</td>
								</tr>
								<tr>
									<td>修正过程</td>
									<td class="blue">2017年4月1日</td>
								</tr>
							</table>
						</div>

						<div class="inline-b tab-height" id="supplier-crea-tab2">
							<div class="inline-b filters full">
								<div class="invoice-detail-title full">
									<a class="black">快速链接</a> <a class="right f-12">所有文档</a>
								</div>
								<p class="grey">“快速链接”是通向此项目中的重要文档的途径。要向此区域中添加快速链接，请导航到您要链接到的文档，并从其菜单中选择添加到快速链接。</p>
							</div>
						</div>

						<div class="inline-b tab-height" id="supplier-crea-tab2">
							<div class="inline-b filters full">
								<div class="invoice-detail-title full">
									<a class="black">声明</a> <a class="right f-12">详细信息</a> <a
										class="right f-12" style="margin-right: 10px;">新建</a>
								</div>
								<a>欢迎来到本项目！</a> <a class="right black f-13">2017年7月17日 ＊＊＊</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp" %>
	
</body>
</html>
