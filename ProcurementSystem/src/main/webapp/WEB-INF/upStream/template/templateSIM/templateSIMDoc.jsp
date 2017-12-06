<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
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
								<button class="btn-m" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu manu-btn-o">
									<li><a class="manu-btn">编辑</a></li>
									<li><a class="manu-btn">停用</a></li>
								</ul>
							</div>
							<div class="">
								<c:if test="${template.type =='SIM' }">
									<div>信息项目</div>
								</c:if>
								<c:if test="${template.type =='SPM' }">
									<div>供应商绩效管理项目</div>
								</c:if>
								<c:if test="${template.type =='SQM' }">
									<div>供应商资格管理项目</div>
								</c:if>
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
		$("#doc").attr("class", "tag-clicked")
	</script>
</body>
</html>
