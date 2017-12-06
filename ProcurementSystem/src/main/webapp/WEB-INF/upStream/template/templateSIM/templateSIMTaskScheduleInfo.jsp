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
				<div class="row ">
					<div class="col-md-12">
						<!-- title -->
						<br>
						<div class="border-bottom-grey ">
							<div class="right">
								<button class="btn-b" type="button"
									onclick="window.history.go(-1)">完成</button>
							</div>

							<div class="small-window-title margin-bottom ">查看待办事项</div>
						</div>

						<div class="title-description">
							不同于所有其他任务类型，待办任务不必与特定文档相关联。要将此任务链接到一个文档，请单击操作 >
							关联文档并选择该文档。任务所有者是被分配到任务的人员，而不是分配该任务的人员。</div>
						<br>
						<div class="standard-subtitle">任务</div>
						<div class="adjust-left-80">
							<form id="saveForm" action="templateTaskScheduleEditSave"
								method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">标题：</td>
										<td class="col-standard2">${schedule.title }</td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2">${schedule.description }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">所有者：</td>
										<td class="col-standard2">${schedule.owner }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">观察员：</td>
										<td class="col-standard2">（无）选择</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top"
											style="padding-top: 10px">截止日期：</td>
										<td class="col-standard2"></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top"
											style="padding-top: 5px">是里程碑：</td>
										<td class="col-standard2">${schedule.isMilestone }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">必须：</td>
										<td class="col-standard2">${schedule.isMust }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">字段设置：</td>
										<td class="col-standard2">${schedule.setField }</td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1">前置任务：</td>
										<td class="col-standard2"></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">排名：</td>
										<td class="col-standard2">${schedule.rank }</td>
									</tr>
								</table>
								<input type="hidden" name="id" value="${schedule.id }">
							</form>
						</div>
						<br>
					</div>
				</div>
				<div class="row ">
					<div class="col-md-12">
						<div class="standard-subtitle">高级任务详细信息</div>
						<br>
						<div class="standard-subtitle">通知</div>
						<br>
					</div>



				</div>
			</div>

		</div>


	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../../other/footer.jsp"%>
	<script>
		if ("${schedule.isMilestone}" == "是") {
			$("#isMilestone1").attr("checked", "true");
		} else {
			$("#isMilestone2").attr("checked", "true");
		}
		if ("${schedule.isMust}" == "是") {
			$("#isMust1").attr("checked", "true");
		} else {
			$("#isMust2").attr("checked", "true");
		}
		var selector = $(".selector").find(
				"option[value='${schedule.setField}']");
		selector.attr("selected", true);
	</script>
</body>
</html>
