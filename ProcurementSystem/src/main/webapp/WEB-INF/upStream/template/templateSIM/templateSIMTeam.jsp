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


						<div class="standard-subtitle">
							团队成员
							<div class="right"></div>
						</div>

						<div class="adjust-10"></div>

						<div>
							<table class="table table-hover">
								<tr class="standard-row1">
									<td style="width: 40%;">组&#8595;</td>
									<td style="width: 30%;">成员</td>
									<td style="width: 30%;">条件</td>
								</tr>
								<tr class="bottom-border">
									<td><a href="">项目所有者</a></td>
									<td><a href="">zhangliu</a></td>
									<td style="width: 30%;">条件</td>
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
		$("#team").attr("class","tag-clicked");
		
	</script>
</body>
</html>
