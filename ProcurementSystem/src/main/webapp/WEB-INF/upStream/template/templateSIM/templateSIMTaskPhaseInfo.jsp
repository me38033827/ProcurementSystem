<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../../other/header1return.jsp"%>
<link href="/ProcurementSystem/css/template/template.css"
	rel="stylesheet" />
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row border-bottom-grey">
					<div class="col-md-12">
						<!-- title -->
						<br>
						<div class="border-bottom-grey ">
							<div class="right">
								<button class="btn-b" type="button"
									onclick="window.history.go(-1)">完成</button>
							</div>

							<div class="small-window-title margin-bottom ">查看阶段</div>
						</div>

						<div class="title-description">
							下面显示了此阶段的属性。单击操作以编辑或删除此阶段，或者重新激活以前完成的阶段。</div>
						<br>
						<div class="standard-subtitle">阶段</div>
						<div class="adjust-left-80">
							<form id="saveForm" action="templateTaskPhaseEditSave"
								method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">标题：</td>
										<td class="col-standard2">${taskPhase.title }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">说明：</td>
										<td class="col-standard2">${taskPhase.description }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">预定内容：</td>
										<td class="col-standard2">（无）选择</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">排名：</td>
										<td class="col-standard2">${taskPhase.rank }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">重复发生日程表：</td>
										<td class="col-standard2">${taskPhase.isDuped}</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">前置任务：</td>
										<td class="col-standard2"><a href="#"></a></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">条件：</td>
										<td class="col-standard2"><a href="#">无</a></td>
									</tr>
								</table>
								<input name="id" value="${taskPhase.id }" type="hidden">
							</form>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../../other/footer.jsp"%>
	<script>
		
	</script>
</body>
</html>
