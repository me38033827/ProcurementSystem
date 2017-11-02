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
									onclick="window.location.href='templateSIMTask'">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">编辑阶段</div>
						</div>

						<div class="title-description">
							请通过更改下面的字段来编辑此阶段。要将此阶段与其他共享信息相关联，请在预订内容中选择新关键字。要更改按时间顺序排列在此新阶段之前的阶段或任务，请在跟随中选择一个新阶段或任务。
						</div>
						<br>
						<div class="adjust-left-80">
							<form id="saveForm" action="templateTaskPhaseEditSave"
								method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊标题：</td>
										<td class="col-standard2"><input
											class="form-control input" name="title" style="width: 400px;"
											value="${taskPhase.title }"><span
											class="error-message">${Error_title }</span></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2"><textarea name="description"
												rows="5" cols="80"
												style="border: 1px solid #428bca; border-radius: 0;">${taskPhase.description }</textarea></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">预定内容：</td>
										<td class="col-standard2">（无）选择</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">排名：</td>
										<td class="col-standard2"><input
											class="form-control input" name="rank" style="width: 200px;"
											value="${taskPhase.rank }"></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">重复发生日程表：</td>
										<td class="col-standard2"><div class="radio">
												<label class=""><input type="radio" name="isDuped"
													id="isDuped1" value="是">是</label> <label class=""><input
													type="radio" name="isDuped" id="isDuped2" value="否"
													checked>否</label>
											</div></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">前置任务：</td>
										<td class="col-standard2"><a href="#">选择</a></td>
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
		if("${taskPhase.isDuped}" == "是"){
			$("#isDuped1").attr("checked","true");
		}else{
			$("#isDuped2").attr("checked","true");
		}
	</script>
</body>
</html>
