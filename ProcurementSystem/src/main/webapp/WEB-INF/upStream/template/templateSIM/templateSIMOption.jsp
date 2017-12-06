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
						<div class="title-description">项目模板存在高级选项。请查看区段以了解详细信息。</div>
						<div class="adjust-10"></div>
						<div>
							<div class="btn-group right">
								<button class="btn-w" data-toggle="dropdown">
									编辑&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu manu-btn-o">
									<li><a class="manu-btn">编辑</a></li>
									<li><a class="manu-btn">停用</a></li>
								</ul>
							</div>
							<div class="standard-subtitle">
								文档处理设置
								<div class="right"></div>
							</div>

							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="width: 30%;">名称</td>
										<td style="width: 70%;">特殊创建设置</td>
									</tr>
									<tr class="bottom-border">
										<td style="width: 30%;">所有表单模板类型的默认值</td>
										<td style="width: 70%;">无限制</td>
									</tr>
								</table>
							</div>
						</div>
						<br> <br>
						<div>

							<div class="standard-subtitle">
								升级模板设置
								<div class="right"></div>
							</div>
							<div class="radio">

								将所有项目升级到发布的模板版本: <label class="model"><input
									type="radio" name="SIM_model" id="SIM_model2" value="SIM_demo"
									checked>是</label><label class="model"><input
									type="radio" name="SIM_model" id="SIM_model2" value="SIM_demo"
									checked>否</label>
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
		$("#option").attr("class", "tag-clicked");
	
	</script>
</body>
</html>
