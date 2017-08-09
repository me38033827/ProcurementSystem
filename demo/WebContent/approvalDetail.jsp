<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>审批流程详情界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">高级审批进程</a>
			<div class="right">
				<button class="btn-w"
					onclick="window.location.href='approvalSearching.jsp'">退出</button>
			</div>
		</div>
		<div id="order-detail-main">
			<div id="order-detail-line4">
				<button class="order-detail-clicked">摘要</button>
				<button class="order-detail-not-clicked">审批规则</button>
				<button class="order-detail-not-clicked">筛选器规则</button>
				<button style="width: 120px;" class="order-detail-not-clicked">待批件编辑规则</button>
				<button class="order-detail-not-clicked">延期原因</button>
				<button class="order-detail-not-clicked">测试</button>
				<button class="order-detail-not-clicked">历史记录</button>
			</div>
			<div id="order-detail-line2">
				<a class="black f-10">查看该审批流程中审批规则的顺序、条件和操作。在图中选择一个规则可以在页面底部的审批规则编辑器中查看其条件和操作。要进行更改，必须进入编辑模式，这会创建审批的草稿版本。激活一个审批流程会停用当前为该待批件类型使用的流程。签入该版本会覆盖前一个版本。要了解更多信息，请参阅产品文档。
				</a>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">审批流程图</a>
			</div>
			<div id="approval-line1">
				<div class="inline-b border-g" id="approval-line1-1">已提交</div>
				<div class="inline-b" id="approval-line1-2"></div>
				<div class="inline-b border-g" id="approval-line1-0">
					<a class="black" id="approval-line00">小于2000元RMB</a> <a
						class="black">小于2000元USD</a>
				</div>
				<div class="inline-b" id="approval-line1-2"></div>
				<div class="inline-b border-g" id="approval-line1-3">已批准</div>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">审批规则编辑器</a>
			</div>
			<div id="approval-line2">
				<a class="inline-b black left">规则标题：</a> <input
					class="form-control input inline-b left" /> <a
					class="inline-b black left" id="rule-description">规则说明：</a>
				<textarea class="form-control left" id="rule-description-text"></textarea>
			</div>
			<div id="approval-line3">
				<a class="black">审批人可以选择特定于规则的升级期限</a> <label> <input
					type="checkbox">
				</label>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">条件</a>
			</div>
			<div id="approval-line4">
				<div class="inline-b border-g" id="approval-line4-1">所有为真</div>
				<div class="inline-b" id="approval-line4-2"></div>
				<div class="inline-b border-g" id="approval-line4-3">预付款.总预付金额.货币.人民币</div>
			</div>
			<div id="order-detail-line">
				<a class="order-detail-subtitle">操作</a>
			</div>
			<div id="approval-last">
				<a class="black">要包含在CSV中的列（导出列表题以创建模版）</a> <a class="right black">已包含1列</a>
				<div id="approval-tab1-out">
					<table id="approval-tab1">
						<tr id="approval-tab1-row1">
							<td>字段名称</td>
							<td>列表题名称</td>
							<td>操作</td>
						</tr>
						<tr id="approval-tab1-row2">
							<td id="approval-tab1-row2-col1">
								<table>
									<tr>
										<td class="text-right">审批人查找表：</td>
										<td>＊＊＊＊＊.csv</td>
									</tr>
									<tr>
										<td class="text-right">按组汇总行项目：</td>
										<td><label> <input type="checkbox">
										</label></td>
									</tr>
									<tr>
										<td class="text-right">上次修改时间：</td>
										<td>2017年7月10日上午11:43</td>
									</tr>
									<tr>
										<td class="text-right">总行数：</td>
										<td>1</td>
									</tr>
								</table>
							</td>
							<td id="approval-tab1-row2-col2"><a class="black">审批人类型字段：</a>
								<div>
									<label class="approval-person-type"> <input
										type="checkbox" id="approval-person-type" value="option1">
										组
									</label> <label class="approval-person-type"> <input
										type="checkbox" id="approval-person-type" value="option2">
										审批人列表
									</label> <label class="approval-person-type"> <input
										type="checkbox" id="approval-person-type" value="option3">
										审批人字段路径
									</label> <label class="approval-person-type"> <input
										type="checkbox" id="approval-person-type" value="option4">
										用户
									</label>
								</div></td>
							<td id="approval-tab1-row2-col3">
								<div class="btn-group">
									<button data-toggle="dropdown"
										class="btn btn-default dropdown-toggle"
										id="order-filter-select1">
										小于&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="#">选项1</a></li>
										<li><a href="#">选项2</a></li>
										<li><a href="#">选项3</a></li>
									</ul>
								</div>
							</td>
						</tr>
					</table>
				</div>

				<div id="order-tab-1">
					<table>
						<tr id="order-tab-1-row1">
							<td></td>
							<td>PO Amount</td>
							<td>审批人字段路径</td>
							<td>必需</td>
							<td>工具提示</td>
						</tr>
						<tr id="order-tab-1-row2">
							<td>1</td>
							<td>2000</td>
							<td>＊＊＊＊＊＊</td>
							<td>TRUE</td>
							<td>＊＊＊＊＊＊＊＊＊＊＊＊＊＊＊</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="order-detail-content">
				<a></a>
			</div>

		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
