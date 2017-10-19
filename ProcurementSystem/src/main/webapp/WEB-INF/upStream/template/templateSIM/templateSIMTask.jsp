<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情－信息板</title>
<%@include file="../../../other/header1return.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row">
					<%@include file="templateSIMLeft.jsp"%>
					<div class="col-md-10">

						<%@include file="templateSIMNav.jsp"%>
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>

						<div>
							<div>
								显示： <select class="createMode2" name="name">
									<option>任何状态</option>
								</select> <select class="createMode2" name="name">
									<option>必须/可选</option>
								</select> <select class="createMode2" name="name">
									<option>任何所有者</option>
								</select>
							</div>
							<div class="adjust-10"></div>
							<div class="btn-group right">
								<button class="btn-m" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu manu-btn-o">
									<li><a class="manu-deactive">创建</a></li>
									<li><a class="manu-active"
									href="templateSIMTaskPhaseCreate?parentId=1000001">&nbsp;&nbsp;阶段</a></li>
								</ul>
							</div>

							<div class="">
								信息项目模板
								<div class="right"></div>
							</div>
						</div>
						<div class="adjust-10"></div>

						<div>
							<table class="table table-hover">
								<tr class="standard-row1">
									<td style="width: 50%;">名称&#8595;</td>
									<td style="width: 25%;">所有者</td>
									<td style="width: 25%;">条件</td>
								</tr>
								<tr class="bottom-border">
									<td style="width: 50%;">名称&#8595;</td>
									<td style="width: 25%;">所有者</td>
									<td style="width: 25%;">条件</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../../other/footer.jsp"%>
	<script>
		$("#task").attr("class", "tag-clicked")
		function back() {
			location.href = "supplierSearch?action=back";
		}
	</script>
</body>
</html>
