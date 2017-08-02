<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>审批流程编辑界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">新的审批流程－编辑模式</a>
			<div class="right inline-b">
				<button class="btn-w">保存并激活</button>
				<button class="btn-w">保存</button>
				<button class="btn-w">删除</button>
				<button class="btn-w"
					onclick="window.location.href='approval-searching.html'">退出</button>
			</div>
		</div>

		<div id="order-detail-main">
			<div align="right">
				<a class="black">编辑模式</a>
			</div>

			<div id="order-detail-line4">
				<button class="order-detail-not-clicked">摘要</button>
				<button class="order-detail-clicked">审批规则</button>
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
				<div id="approval-manu1">
					<a class="black inline-b">类型：</a>
					<div class="radio inline-b">
						<label><input type="radio" name="empty"
							id="optionsRadios1" value="option1">添加审批人和组</label> &nbsp;&nbsp;
						<label><input type="radio" name="empty"
							id="optionsRadios2" value="option2" checked>使用审批人查找表</label>
					</div>
				</div>
				<div>
					<a class="black">操作：</a>
					<div class="btn-group">
						<button data-toggle="dropdown"
							class="btn btn-default dropdown-toggle"
							id="delivery-search-item2">
							添加组 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">选项1</a></li>
							<li><a href="#">选项2</a></li>
							<li><a href="#">选项3</a></li>
						</ul>
					</div>
				</div>
				<div id="approval-explanation">
					<a class="black">说明： 添加指定的组</a>
				</div>
			</div>
			<div id="order-detail-content">
				<a></a>
			</div>

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
