<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<link href="/ProcurementSystem/css/template/template.css"
	rel="stylesheet" />
<style type="text/css">
textArea {
	padding-left: 10px;
}
</style>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row">
					<div class="col-md-12 border-bottom-grey">
						<!-- title -->
						<br>
						<div class="border-bottom-grey ">
							<div class="right">
								<button class="btn-b" type="submit" form="form">保存</button>
								<button class="btn-w" type="button"
									onclick="window.location.href='templateDoc'">取消</button>
							</div>

							<div class="small-window-title margin-bottom ">${folder.name}</div>
						</div>

						<div class="title-description">
							请根据需要编辑此文件夹。您可以通过选中顶部的框来将这些更改标注为新版本。编辑完此文件夹后，请单击保存提交更改。</div>
						<br>
						<div class="adjust-left-80">
							<table>
								<tr>
									<td class="col-standard1">是否另存为新版本？:</td>
									<td><div class="radio">
											&nbsp;<label class=""><input type="radio"
												name="version" id="spm_model1" value="">是，另存为 v1 </label> <label
												class=""><input type="radio" id="spm_model2"
												value="" name="version" checked>否，保存并继续编辑原始版本 </label>
										</div></td>
								<tr>
									<td class="col-standard1">版本备注：</td>
									<td><div>
											<textarea class="" id="" rows="3" cols="80"
												style="border: 1px solid #428bca; border-radius: 0;"></textarea>
										</div></td>
								</tr>
							</table>
							<br>
							<form action="templateFolderEditSave" id="form" method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊名称：</td>
										<td class="col-standard2"><input
											class="form-control input" name="name"
											value="${folder.name }" style="width: 400px;"></td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2"><textarea name="description"
												rows="5" cols="80"
												style="border: 1px solid #428bca; border-radius: 0;">${folder.description }</textarea></td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1">所有者：</td>
										<td class="col-standard2"><input
											class="form-control input" name="" readonly>${folder.owner }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">访问控制：</td>
										<td class="col-standard2"><input
											class="form-control input" name="" readonly>${folder.accessControl }</td>
									</tr>
								</table>
								<input type="hidden" value="${folder.id}" name="id">
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
