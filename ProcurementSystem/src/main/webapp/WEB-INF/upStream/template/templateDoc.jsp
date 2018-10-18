<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<script src="../../js/my-bootstrap-treeview.js"></script>
<style type="text/css">
</style>
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
					<div id="treeview1"></div>
				</div>
			</div>
		</div>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<%@ include file="../../other/footer.jsp"%>
	<script>
		$("#doc").attr("class", "tag-clicked");
		$(function() {
			//console.log( ${json});
		    var $tree = $('#treeview1').treeview({
		   	 data: ${json}
		    });
		});
		
		function createFolder(id){
			window.location.href="templateCreateFolder?parentId="+id;
		}
		function createTemplate(id){
			window.location.href="templateChooseType?parentId="+id;
		}
		function openTemplate(id){
			window.location.href="templateSIMTask?id="+id;
		}
		
		function deleteTemplate(id){
			window.location.href="templateDelete?id="+id;
		}
		function folderEdit(id){
			window.location.href="templateFolderEdit?id="+id;
		}
		function folderDelete(id){
			window.location.href="templateFolderDelete?id="+id;
		}
		function folderProfile(id){
			window.location.href="templateFolderProfile?id="+id;
		}
	</script>
</body>
</html>


<%-- <div class="border-bottom-grey " id="sourcing-tab"
						style="position: relative;">
						<table class=" table table-hover table-td-adjust5">
							<c:forEach var="templateTreeNode" items="${templateTreeNodes}">
								<tr>
									<td width="2%"><a
										href="javascript:getChildren(${templateTreeNode.id});"
										href="javascript:open(${templateTreeNode.id })"
										style="display: block;"><i
											id="${templateTreeNode.id }-icon-caret"
											class="fa fa-caret-right icon-caret"></i></a></td>
									<td>
										<div class="btn-group">
											<button class="btn-ma" data-toggle="dropdown"
												style="background-color: transparent; width: 100%">
												<i class="fa fa-folder-o icon-folder">&nbsp;&nbsp;</i>
												${templateTreeNode.templateFolder.name}<span class="caret"></span>
											</button>
											<ul class="dropdown-menu" style="z-index: 9999">
												<li><a class="manu-deactive">创建</a></li>
												<li><a class="manu-active"
													href="templateCreateFolder?parentId=${templateTreeNode.id }">&nbsp;&nbsp;文件夹</a></li>
												<li><a class="manu-active" href="">&nbsp;&nbsp;模板</a></li>
											</ul>
										</div>
									</td>
									<td style="width: 30%;">所有者</td>
									<td style="width: 30%;">状态</td>
								</tr>
								<tr class="hideTr" id="${templateTreeNode.id}">
									<td width="2%" style="padding-left: 50px;"><a
										href="javascript:getChildren(${templateTreeNode.id});"
										href="javascript:"
										style="display: block;"><i
											class="fa fa-caret-right icon-caret"></i></a></td>
									<td>
										
									</td>
									<td style="width: 30%;">所有者</td>
									<td style="width: 30%;">状态</td>
								</tr>
							</c:forEach>
						</table>
					</div> --%>
