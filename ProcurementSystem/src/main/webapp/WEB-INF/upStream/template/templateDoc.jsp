<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－文档</title>
<%@include file="../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<%@include file="templateNav.jsp"%>

				<div class="adjust-10"></div>

				<div class="standard-subtitle">
					模板
					<div class="right">
						<a href="" class="f-14">显示详细信息</a>&nbsp;&nbsp;&nbsp;
						<div class="btn-group">
							<button class="btn-m" data-toggle="dropdown">
								操作&nbsp;<span class="caret"></span>
							</button>
							<ul class="dropdown-menu" style="width: 200px;">
									<li><a class="manu-deactive">创建</a></li>
									<li><a class="manu-active" href="templateCreateFolder?parentId=1000001">&nbsp;&nbsp;文件夹</a></li>
									<li><a class="manu-active" href="templateChooseType">&nbsp;&nbsp;模板</a></li>
								</ul>
						</div>
					</div>
				</div>

				<div class="">
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="width: 60%;">名称</td>
							<td style="width: 20%;">所有者</td>
							<td style="width: 20%;">状态</td>
						</tr>
					</table>
					<div id="sourcing-tab" class="border-bottom-grey">
						<table class=" table table-hover">
							<tr class="">
								<td style="width: 60%;">名称</td>
								<td style="width: 20%;">所有者</td>
								<td style="width: 20%;">状态</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		$("#doc").attr("class", "tag-clicked");
	</script>
</body>
</html>
