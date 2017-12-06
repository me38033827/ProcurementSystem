<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<script src="../../js/my-bootstrap-treeview.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<%@include file="templateNav.jsp"%>

				<div class="adjust-10"></div>

				<div class="row">
					<div class="col-md-6">
						<div class="standard-subtitle">
							概述
							<div class="btn-group right">
								<button class="btn-ma" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="width: 200px;">
									<li><a class="manu-active" href="">&nbsp;&nbsp;编辑概述</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;查看详细信息</a></li>
									<li><a class="manu-deactive">显示</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;显示视图</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;添加到受监视的项目中</a></li>
								</ul>
							</div>
						</div>
						<table class="tab-height" id="supplier-crea-tab1"
							style="margin-left: 80px;">
							<tr>
								<td class="col-standard1">标识符：</td>
								<td class="col-standard2">SYS0003</td>
							</tr>
							<tr>
								<td class="col-standard1">项目状态：</td>
								<td class="col-standard2">已激活</td>
							</tr>
							<tr>
								<td class="col-standard1">版本：</td>
								<td class="col-standard2">原始</td>
							</tr>
							<tr>
								<td class="col-standard1">项目色码：</td>
								<td class="col-standard2">Gray</td>
							</tr>
							<tr>
								<td class="col-standard1">开始日期：</td>
								<td class="col-standard2">2000年9月22日</td>
							</tr>
							<tr>
								<td class="col-standard1">截止日期：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">所有者：</td>
								<td class="col-standard2"><a href="">system</a></td>
							</tr>
							<tr>
								<td class="col-standard1">测试项目：</td>
								<td class="col-standard2">否</td>
							</tr>
							<tr>
								<td class="col-standard1">流程状态：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">基本语言：</td>
								<td class="col-standard2">英语</td>
							</tr>
							<tr>
								<td class="col-standard1">访问控制：</td>
								<td class="col-standard2"><a>团队成员专用</a></td>
							</tr>
							<tr>
								<td class="col-standard1">说明：</td>
								<td class="col-standard2">按项目类型整理的流程模板</td>
							</tr>
						</table>
					</div>
					<div class="col-md-6">
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">
									文档
									<div class="btn-group right">
										<div class="btn-group">
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" style="width: 200px;">
												<li><a class="manu-deactive">创建</a></li>
												<li><a class="manu-active"
													href="templateCreateFolder?parentId=1000001">&nbsp;&nbsp;文件夹</a></li>
												<li><a class="manu-active"
													href="templateChooseType?parentId=1000001">&nbsp;&nbsp;模板</a></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="">
									<div class="standard-row1">
										<div class="template-tree-title1">名称</div>
										<div class="template-tree-title2">所有者</div>
										<div class="template-tree-title3">状态</div>
										<div style="clear: both"></div>
									</div>
									<div id="treeview1" style="height: 300px; overflow: scroll"></div>
								</div>
							</div>
						</div>

						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../other/footer.jsp"%>
	<script>
		$("#summary").attr("class","tag-clicked");
		$(function() {
			console.log( ${json});
		    var $tree = $('#treeview1').treeview({
		   	 data: ${json}
		    });
		});
	</script>
</body>
</html>
