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
							<div class="btn-group right">
								<button class="btn-w" data-toggle="dropdown">
									添加条件&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu manu-btn-o">
									<li><a class="manu-btn">编辑</a></li>
									<li><a class="manu-btn">停用</a></li>
								</ul>
							</div>
							<div class="standard-subtitle" >
								条件
								<div class="right"></div>
							</div>

							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="width: 30%;">名称</td>
										<td style="width: 20%;">说明</td>
										<td style="width: 20%;">表达式</td>
										<td style="width: 30%;">范围</td>
									</tr>
									<tr class="bottom-border">
										<td class="no-item" colspan="4">无项目</td>
									</tr>
								</table>
							</div>
						</div>
						<br><br>
						<div>
							<div class="btn-group right">
								<button class="btn-w" data-toggle="dropdown">
									添加问题&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu manu-btn-o">
									<li><a class="manu-btn">编辑</a></li>
									<li><a class="manu-btn">停用</a></li>
								</ul>
							</div>
							<div class="standard-subtitle" >
								问题
								<div class="right"></div>
							</div>
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="width: 30%;">文本</td>
										<td style="width: 70%;">可见性</td>
									</tr>
									<tr class="bottom-border">
										<td class="no-item" colspan="2">无项目</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../../other/footer.jsp"%>
	<script>
		$("#condition").attr("class", "tag-clicked");
		
	</script>
</body>
</html>
