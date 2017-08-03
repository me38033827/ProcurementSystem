<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>合同工作区创建界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">建立合同工作区（采购）</a>
			<div class="right">
				<button class="btn-b"
					onclick="window.location.href='contract-creation.jsp'">创建</button>
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
						<td class="contract-tab-col1">名称：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">说明：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">相关标识符：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">从合同复制：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">＊测试项目：</td>
						<td class="contract-tab-col2">
							<div class="radio">
								<label><input type="radio" name="multiple"
									id="optionsRadios1" value="option1" checked>是</label> <label><input
									type="radio" name="multiple" id="optionsRadios2"
									value="option2">否</label>
							</div>
						</td>
					</tr>

					<tr>
						<td class="contract-tab-col1">基本语言：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>中文(中国)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">层级类型：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>独立合约</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">＊供应商：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">受影响的相关者：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">提议的合同金额：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" />CNY</td>
					</tr>

					<tr>
						<td class="contract-tab-col1">＊合同金额：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" />CNY</td>
					</tr>
					<tr>
						<td class="contract-tab-col1">＊商品：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">＊地区：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">＊部门：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">前一相关项目：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>(无值)</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">预算系统：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>其他</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
				</table>
			</div>
			<div class="inline-b" id="invoice-detail2-tab2">
				<table>
					<tr>
						<td class="contract-tab-col1">＊签约日期：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" /></td>
					</tr>

					<tr>
						<td class="contract-tab-col1">＊期限类型：</td>
						<td class="contract-tab-col2"><select id="my-select">
								<option>固定</option>
								<option>选项1</option>
								<option>选项2</option>
						</select></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">＊系统有效日期：</td>
						<td class="contract-tab-col2"><input
							class="form-control input" /></td>
					</tr>
					<tr>
						<td class="contract-tab-col1">失效日期：</td>
						<td class="contract-tab-col2"><input type="date"
							value="2015-09-24" /></td>
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

	<%@ include file="other/footer.jsp"%>
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
