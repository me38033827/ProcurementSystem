<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>模版创建界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->
		<div id="searching-title-out">
			<a class="inline-b black" id="searching-title">为模版选择项目类型</a>
			<div class="right">
				<button class="btn-b"
					onclick="window.location.href='template-creation-detail.html'">确定</button>
				<button class="btn-w">取消</button>
			</div>
		</div>
		<div id="order-detail-main">
			<div id="order-detail-line2">
				<a class="black">模版用于创建特定类型的项目。要创建新模版，请选择您最终要从此模版创建的项目的类型。</a>
			</div>
			<div class="invoice-detail-title">
				<a class="grey f-13">将要从此模版创建哪种类型的项目？</a>
			</div>
			<div class="radio" id="template-type">
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type1" value="option1" checked>信息项目</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type2" value="option2">合同请求（采购）</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type3" value="option3">合同工作区（采购）</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type4" value="option4">合同工作区（内部）</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type5" value="option5">合同请求（销售）</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type6" value="option6">合同工作区（销售）</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type7" value="option7">采购工作区请求</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type8" value="option8">采购工作区</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type9" value="option9">供应商绩效管理项目</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type10" value="option10">供应商资格管理项目</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type11" value="option11">寻源项目</label>
				<label class="template-radios"><input type="radio"
					name="template-type" id="template-type12" value="option12">寻源请求</label>
			</div>

			<div class="invoice-detail-title"></div>
			<div class="right">
				<button class="btn-b"
					onclick="window.location.href='template-creation-detail.jsp'">确定</button>
				<button class="btn-w">取消</button>
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
