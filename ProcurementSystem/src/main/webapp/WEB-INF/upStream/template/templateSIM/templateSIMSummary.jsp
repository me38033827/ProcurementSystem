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
						
						<%@ include file="templateSIMNav.jsp"%>

						<div class="adjust-10"></div>
						<div class="col-md-6" style="padding-left: 0px;">
							<div class="standard-subtitle">
								属性
								<div class="right"></div>
							</div>
							<table class="table table-no-border">
								<tr class="">
									<td align="right" style="width: 20%;">名称：</td>
									<td style="width: 80%;">信息项目模板</td>
								</tr>
								<tr align="right">
									<td>说明：</td>
									<td></td>
								</tr>
								<tr class="">
									<td align="right">版本：</td>
									<td>v1 (编辑)</td>
								</tr>
								<tr class="">
									<td align="right">标识符：</td>
									<td>WS889082746</td>
								</tr>
								<tr class="">
									<td align="right">所有者：</td>
									<td>Gan Qin</td>
								</tr>
								<tr class="">
									<td align="right">基本语言：</td>
									<td>英文</td>
								</tr>
								<tr class="">
									<td align="right">排名：</td>
									<td>130</td>
								</tr>
								<tr class="">
									<td align="right">访问控制：</td>
									<td>(无值)</td>
								</tr>
								<tr class="">
									<td align="right">条件：</td>
									<td>(无值)</td>
								</tr>

							</table>
						</div>
						<div class="col-md-6" style="padding-right: 0px;">
							<div class="standard-subtitle">
								编辑模板的推荐步骤
								<div class="right"></div>
							</div>
							<div>
								<p>1.在团队选项卡中添加项目组。</p>
								<p>2.在任务选项卡中添加阶段和里程碑。</p>
								<p>3.在文档选项卡中添加文件夹和文档。</p>
								<p>4.在创建文档时向文档中添加文档任务，如复审。</p>
								<p>5.从任务选项卡中添加“待办”任务。</p>
								<p>6.在条件选项卡上添加条件和问题。</p>
								<p>7.指定文档和任务的条件。</p>
								<p>8.单击退出以保存更改并退出。</p>
								<p>9.当您准备好使用模板来创建项目时，请从概述选项卡下面的操作菜单中发布该模板。</p>
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
		$("#summary").attr("class", "tag-clicked")
	</script>
</body>
</html>
