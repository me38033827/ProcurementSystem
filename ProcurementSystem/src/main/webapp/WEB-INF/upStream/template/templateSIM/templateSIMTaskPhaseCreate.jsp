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
								<button class="btn-b" type="submit" form="saveForm">确定</button>
								<button class="btn-w" type="button"
									onclick="window.history.go(-1)">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">创建阶段</div>
						</div>

						<div class="title-description">
							请为此新阶段输入标题和说明。预订内容控制此阶段与共享信息之间的关联性。您可以选择多个信息区域关键字进行预订，或者如果您想所有内容都可用的话，也可以预订所有关键字。排名控制阶段在“任务”选项卡上按时间顺序显示的位置。可以使用拖放操作在“任务”选项卡上随时更改顺序。重复发生日程表控制此阶段是否重复。如果重复发生日程表设置为“是”，则可以在下面设置重复发生的具体细节。请单击确定创建新阶段。
						</div>
						<br>
						<div class="adjust-left-80">
							<form id="saveForm" action="templateSIMTaskPhaseSave"
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
										<td class="col-standard1">预定内容：</td>
										<td class="col-standard2">（无）选择</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">排名：</td>
										<td class="col-standard2"><input
											class="form-control input" name="rank" style="width: 200px;"
											value="0"></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">重复发生日程表：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio" name="is_duped"
													id="spm_model1" value="spm_standard">是</label> <label
													class=""><input type="radio" name="is_duped"
													id="spm_model2" value="spm_demo" checked>否</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">前置任务：</td>
										<td class="col-standard2"><a href="#">选择</a></td>
									</tr>
								</table>
								<input type="hidden" name="owner" value="${username }" />
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

</body>
</html>
