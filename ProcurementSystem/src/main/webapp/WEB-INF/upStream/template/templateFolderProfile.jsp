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
								<button class="btn-b" type="button"
									onclick="window.location.href='templateDoc'">完成</button>
							</div>
							<div class="small-window-title margin-bottom ">${folder.name}</div>
						</div>

						<div class="title-description">
							下面列出了此文件夹的详细信息，包括与之关联的任务。您可以通过单击操作来编辑概述、复制或移动文档以及发布它以供其他团队成员使用。也可以通过单击任务区域中的操作
							> 新建任务来启动复审、审批或待办事项。在大纲视图选项卡上，您可以更改和修改合同文档的内容。</div>
						<br>
						<div class="tag-line">
							<button id="summary" class="tag-not-clicked"
								onclick="window.location.href=''">概述</button>
							<button id="doc" class="tag-not-clicked"
								onclick="window.location.href=''">文档</button>
							<button id="history" class="tag-not-clicked"
								onclick="window.location.href=''">历史记录</button>
						</div>
						<br>
						<div class="standard-subtitle">属性</div>
						<div class="adjust-left-80">
							<form action="templateFolderEditSave" id="form" method="post">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">名称：</td>
										<td class="col-standard2">${folder.name }</td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1">说明：</td>
										<td class="col-standard2">${folder.description }</td>
									</tr>

									<tr class="row-standard">
										<td class="col-standard1">所有者：</td>
										<td class="col-standard2">${folder.owner }</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">访问控制：</td>
										<td class="col-standard2">${folder.accessControl }</td>
									</tr>
								</table>
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
	<script>
		function folderProfile(id) {
			window.location.href = "templateFolderProfile?id=" + id;
		}
		$("#summary").attr("class", "tag-clicked");
	</script>
</body>
</html>
