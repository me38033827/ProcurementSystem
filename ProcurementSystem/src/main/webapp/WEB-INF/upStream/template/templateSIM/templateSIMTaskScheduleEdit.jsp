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
								<button class="btn-b" type="submit" form="saveForm">确定</button>
								<button class="btn-w" type="button"
									onclick="window.location.href='templateSIMTask'">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">编辑待办事项</div>
						</div>

						<div class="title-description">
							通过更改标题、所有者和说明或者更改其截止日期或它与下一里程碑的关系来编辑此任务的详细信息。</div>
						<br>
						<div class="adjust-left-80">
							<form id="saveForm" action="templateTaskScheduleEditSave"
								method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊标题：</td>
										<td class="col-standard2"><input
											class="form-control input" name="title" style="width: 400px;"
											value="${schedule.title }"><span
											class="error-message">${Error_title }</span></td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2"><textarea class="" id=""
												name="description" rows="5" cols="80"
												style="border: 1px solid #428bca; border-radius: 0;">${schedule.description }</textarea></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">所有者：</td>
										<td class="col-standard2">（无）选择</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">观察员：</td>
										<td class="col-standard2">（无）选择</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top"
											style="padding-top: 10px">截止日期：</td>
										<td class="col-standard2"><div class="radio">
												<label class="" style="padding-left: 0px"><input
													class="form-control input" name="ddl"
													value="${schedule.ddl }"
													style="width: 40px; display: inline">&nbsp;父阶段开始之后的天数</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top"
											style="padding-top: 5px">是里程碑：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio"
													name="isMilestone" id="isMilestone1" value="是">是</label>&nbsp;&nbsp;<label
													class=""><input type="radio" name="isMilestone"
													id="isMilestone2" value="否">否</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">必须：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio" name="isMust"
													id="isMust1" value="是">是</label>&nbsp;&nbsp;<label class=""><input
													type="radio" name="isMust" id="isMust2" value="否">否</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">字段设置：</td>
										<td class="col-standard2"><select class="selector"
											name="setField">
												<option value="未选择字段">未选择字段</option>
												<option value="流程状态">流程状态</option>
										</select></td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1">前置任务：</td>
										<td class="col-standard2"><a href="">选择</a></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">排名：</td>
										<td class="col-standard2"><input
											class="form-control input" name="rank" style="width: 200px;"
											value="${schedule.rank }"></td>
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
						<div class="adjust-left-80">
							<form id="saveForm" action="templateSIMTaskPhaseSave"
								method="post">
								<table class="fulltab">
									<tr>
										<td class="col-standard1">备注通知：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio" name="is_duped"
													id="spm_model1" value="spm_standard">是</label>&nbsp;&nbsp;<label
													class=""><input type="radio" name="is_duped"
													id="spm_model2" value="spm_demo" checked>否</label>
											</div></td>
									</tr>
									<tr>
										<td class="col-standard1">提醒：</td>
										<td class="col-standard2"><select id="createMode">
												<option>无</option>
												<option>绿</option>
												<option>黄</option>
												<option>红</option>
										</select></td>
									</tr>
								</table>
							</form>
							<br>
						</div>
					</div>
				</div>

				<div class="row border-bottom-grey">
					<div class="col-md-12">
						<div class="standard-subtitle">通知</div>
						<div class="adjust-left-80">
							<table class="fulltab">
								<tr>
									<td class="col-standard1">通知配置：</td>
									<td class="col-standard2"><select id="createMode">
											<option>默认</option>
									</select></td>
								</tr>
							</table>
							<div>
								<input type="checkbox" id=1 class="chk" checked readonly /><label
									for=1></label>&nbsp;&nbsp;&nbsp;截止日期前 30 天向任务所有者, 截止日期前 30
								天向任务所有者, 任务参与者（任务所有者、原始所有者、活动审批人和观察员）发送未决通知<br> <span>之后每隔
									7 天发送提醒</span>
							</div>
							<div>
								<input type="checkbox" id=2 class="chk" checked /><label for=2></label>&nbsp;&nbsp;&nbsp;截止日期后
								2 天向任务所有者, 任务参与者（任务所有者、原始所有者、活动审批人和观察员）发送过期通知<br> <span>之后每隔
									2 天发送提醒</span>
							</div>
							<div>
								<input type="checkbox" id=3 class="chk" checked readonly /><label
									for=3></label>&nbsp;&nbsp;&nbsp;截止日期前 30 天向任务所有者,
								向任务参与者（任务所有者、原始所有者、活动审批人和观察员）发送任务完成通知
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
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
