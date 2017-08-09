<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>合同录入界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">合同</a> <a
				class="inline-b black">CO:12312</a>
		</div>
		<div id="order-detail-main">
			<div class="contract-crea-left left blue">
				<button id="contract-crea-not-clicked"></button>
				<button id="contract-crea-clicked">1 定义</button>
				<button id="contract-crea-not-clicked">2 限制</button>
				<button id="contract-crea-not-clicked">3 定价条款</button>
				<button id="contract-crea-not-clicked">4 里程碑</button>
				<button id="contract-crea-not-clicked">5 访问控制</button>
				<button id="contract-crea-not-clicked">6 付款条件</button>
				<button id="contract-crea-not-clicked">7 附录</button>
				<button id="contract-crea-not-clicked">8 摘要</button>
			</div>

			<div id="contract-crea-right">
				<div id="order-detail-line2">
					<a class="black">请输入合同请求的常规要求或定义，并指定合同类型是位于供应商级别、商业级别、目录级别还是项目级别。如果合同请求是作为寻源时间的结果而创建的，那么某些值可能是默认指定的</a>
				</div>
				<div class="invoice-detail-title">
					<a class="black">定义</a>
				</div>
				<div class="inline-b" id="contract-crea-tab">
					<table>
						<tr>
							<td class="contract-tab-col1">实际地点：</td>
							<td class="contract-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="contract-tab-col1">相关合同标识符：</td>
							<td class="contract-tab-col2"><input
								class="form-control input" /></td>
						</tr>
						<tr>
							<td class="contract-tab-col1"></td>
							<td class="contract-tab-col2">相关的合同标识符是否应作为系统生成的合同标识符的一部分包括进来
							</td>
						</tr>

						<tr>
							<td class="contract-tab-col1">从合同复制：</td>
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
							<td class="contract-tab-col1">联系人：</td>
							<td class="contract-tab-col2"><select id="my-select">
									<option>＊＊＊</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>

						<tr>
							<td class="contract-tab-col1">＊采购单位：</td>
							<td class="contract-tab-col2">vs123</td>
						</tr>

						<tr>
							<td class="contract-tab-col1">合同类型：</td>
							<td class="contract-tab-col2"><select id="my-select">
									<option>项目级别</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>

						<tr>
							<td class="contract-tab-col1">一揽子订购单：</td>
							<td class="contract-tab-col2">
								<div class="radio">
									<label><input type="radio" name="multiple1"
										id="optionsRadios1" value="option1" checked>是</label> <label><input
										type="radio" name="multiple1" id="optionsRadios2"
										value="option2">否</label>
								</div>
							</td>
						</tr>

						<tr>
							<td class="contract-tab-col1">层级类型：</td>
							<td class="contract-tab-col2">独立合约</td>
						</tr>

						<tr>
							<td class="contract-tab-col1">生效日期：</td>
							<td class="contract-tab-col2">2017年3月13日（星期一）</td>
						</tr>

						<tr>
							<td class="contract-tab-col1">失效日期：</td>
							<td class="contract-tab-col2"></td>
						</tr>
						<tr>
							<td class="contract-tab-col1">常年有效：</td>
							<td class="contract-tab-col2">是</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">采购组织：</td>
							<td class="contract-tab-col2"><select id="my-select">
									<option>CN06</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>
						<tr>
							<td class="contract-tab-col1">公司代码：</td>
							<td class="contract-tab-col2"><select id="my-select">
									<option>JP01</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>
						<tr>
							<td class="contract-tab-col1">供应商：</td>
							<td class="contract-tab-col2">＊＊＊＊＊＊＊＊＊＊＊</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">供应商地点：</td>
							<td class="contract-tab-col2">＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">创建非目录项订阅：</td>
							<td class="contract-tab-col2">
								<div class="radio">
									<label><input type="radio" name="noncat"
										id="optionsRadios1" value="option1" checked>是</label> <label><input
										type="radio" name="noncat" id="optionsRadios2" value="option2">否</label>
								</div>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">要求发放：</td>
							<td class="contract-tab-col2">
								<div class="radio">
									<label><input type="radio" name="distri"
										id="optionsRadios1" value="option1" checked>是</label> <label><input
										type="radio" name="distri" id="optionsRadios2" value="option2">否</label>
								</div>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">货币：</td>
							<td class="contract-tab-col2"><select id="my-select">
									<option>人民币</option>
									<option>选项1</option>
									<option>选项2</option>
							</select></td>
						</tr>
						<tr>
							<td class="contract-tab-col1">标题属性：</td>
							<td class="contract-tab-col2">
								<table>
									<tr>
										<td>名称</td>
										<td>值</td>
									</tr>
									<tr>
										<td>时区</td>
										<td>新加坡</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td class="contract-tab-col1">合同源系统：</td>
							<td class="contract-tab-col2"><input
								class="form-control input" value="其他" /></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp" %>
	
</body>
</html>
