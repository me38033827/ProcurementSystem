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
				<%@include file="supplierSQMNav.jsp"%>

				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmSummary'">概述</button>
					<button class="tag-clicked" onclick="window.location.href='sqmDoc'">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='sqmNews'">事件消息</button>
				</div>

				<div class="adjust-10"></div>

				<div class="standard-subtitle">
					供应商资格管理项目
					<div class="right">
						<a href="" class="f-14">显示详细信息</a>&nbsp;&nbsp;&nbsp;
						<div class="btn-group">
							<button class="btn-m" data-toggle="dropdown">
								操作&nbsp;<span class="caret"></span>
							</button>
							<ul class="dropdown-menu manu-btn-o">
								<li><a class="manu-btn">编辑</a></li>
								<li><a class="manu-btn">停用</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div>
					<table class="fulltab">
						<tr class="standard-row1">
							<td style="width: 60%;">名称</td>
							<td style="width: 20%;">所有者</td>
							<td style="width: 20%;">状态</td>
						</tr>
						<tr style="border-bottom: 1px solid #ddd;">
							<td>
								<button class="trans-btn" onclick="folder();">
									&nbsp;&nbsp;第一份问卷调查 <span class="caret" aria-hidden="true"
										id="triangle-right"></span>
								</button>
							</td>
							<td><a href="">所有者</a></td>
							<td></td>
						</tr>

					</table>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		function back() {
			location.href = "../search/supplierSearchDistribute?page=2006";
		}
	</script>
</body>
</html>
