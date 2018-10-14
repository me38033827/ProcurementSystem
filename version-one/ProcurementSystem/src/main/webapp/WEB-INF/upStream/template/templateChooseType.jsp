<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<link href="/ProcurementSystem/css/template/template.css"
	rel="stylesheet" />
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row ">
					<div class="col-md-12">
						<!-- title -->
						<br>
						<div class="border-bottom-grey ">
							<div class="right">
								<button class="btn-b" type="submit" form="createForm">创建</button>
								<button class="btn-w" type="button"
									onclick="window.history.go(-1)">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">为模板选择项目类型</div>
						</div>

						<div class="title-description">
							模板用于创建特定类型的项目。要创建新模板，请选择您最终要从此模板创建的项目的类型。<br>
						</div>
						<div class="standard-title-main">将要从此模板创建哪种类型的项目？</div>
						<form action="templateCreate" method="post" id="createForm"
							class="border-bottom-grey">
							<div class="radio">
								<label class="model"><input type="radio" name="type"
									id="spm_model2" value="SPM" checked>供应商绩效管理项目</label><br>
								<label class="model"><input type="radio" name="type"
									id="spm_model2" value="SQM">供应商资格管理项目</label><br>
								<label class="model"><input type="radio" name="type"
									id="spm_model2" value="SIM">供应商信息管理项目</label>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>

</body>
</html>
