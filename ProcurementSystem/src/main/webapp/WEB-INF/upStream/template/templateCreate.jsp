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
				<div class="row border-bottom-grey">
					<div class="col-md-12">
						<!-- title -->
						<br>
						<div class="border-bottom-grey ">
							<div class="right">
								<button class="btn-b" type="submit" form="createForm">确定</button>
								<button class="btn-w" type="button"
									onclick="window.location.href='templateDoc'">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">新建项目模板</div>
						</div>

						<div class="title-description">
							输入该模板的“名称”和“说明”。如果该模板尚未翻译成用户使用的界面语言 (在首选项中设置)
							，则会使用“基本语言”显示该模板。例如，假设您建立了一个基本语言为英语的模板，并提供了法语和日语翻译。</div>
						<br>
						<div class="adjust-left-80">
							<form action="templateCreateSave" method="post" id="createForm">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊名称：</td>
										<td class="col-standard2"><input
											class="form-control input" name="name" style="width: 400px;"><span
											class="error-message">${Error_name}</span></td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2"><textarea class="" id=""
												name="description" rows="5" cols="80"
												style="border: 1px solid #428bca; border-radius: 0;"></textarea></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">基本语言：</td>
										<td class="col-standard2">中文</td>
									</tr>
								</table>
								<input type="hidden" name="owner"  value="${username }">
							</form>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>

</body>
</html>
