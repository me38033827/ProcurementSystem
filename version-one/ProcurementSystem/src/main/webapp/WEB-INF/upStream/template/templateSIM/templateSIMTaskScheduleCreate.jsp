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
									onclick="window.history.go(-1)">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">新建待办事项</div>
						</div>

						<div class="title-description">
							请为此新阶段输入标题和说明。预订内容控制此阶段与共享信息之间的关联性。您可以选择多个信息区域关键字进行预订，或者如果您想所有内容都可用的话，也可以预订所有关键字。排名控制阶段在“任务”选项卡上按时间顺序显示的位置。可以使用拖放操作在“任务”选项卡上随时更改顺序。重复发生日程表控制此阶段是否重复。如果重复发生日程表设置为“是”，则可以在下面设置重复发生的具体细节。请单击确定创建新阶段。
						</div>
						<br>
						<div class="adjust-left-80">
							<form id="saveForm" action="templateSIMTaskScheduleSave"
								method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊标题：</td>
										<td class="col-standard2"><input
											class="form-control input" name="title" style="width: 400px;"><span
											class="error-message">${Error_title }</span></td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2"><textarea class="" id=""
												name="description" rows="5" cols="80"
												style="border: 1px solid #428bca; border-radius: 0;"></textarea></td>
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
													style="width: 40px; display: inline">&nbsp;父阶段开始之后的天数</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top"
											style="padding-top: 5px">是里程碑：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio"
													name="isMilestone" id="spm_model1" value="是">是</label>&nbsp;&nbsp;<label
													class=""><input type="radio" name="isMilestone"
													id="spm_model2" value="否" checked>否</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">必须：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio" name="isMust"
													id="spm_model1" value="是">是</label>&nbsp;&nbsp;<label
													class=""><input type="radio" name="isMust"
													id="spm_model2" value="否" checked>否</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">字段设置：</td>
										<td class="col-standard2"><select id="createMode"
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
											value="0"></td>
									</tr>
								</table>
								<input type="hidden" name="owner" value="${username }" />
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
</body>
</html>
