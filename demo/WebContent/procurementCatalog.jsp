<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>目录列表界面</title>

<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 目录列表 -->
		<div id="catalog-content-1">
			<div id="catalog-creation-title">
				<a id="catalog-creation-title-font">目录</a>
			</div>
			<div id="catalog-line-1">
				<a id="catalog-line-1-font">请复查目录列表，并采取相应的操作；例如，导入新目录、处理现有目录或比较目录版本。</a>
			</div>
			<div id="catalog-line-2">
				<div id="catalog-line-2-icons">
					<button class="btn-w"
						onclick="window.location.href='procurementCatalogCreation.jsp'">导入新目录</button>
					<button class="btn-b" id="import-icon">导入供应商徽标</button>
				</div>
			</div>

			<div id="catalog-line-3">
				<div id="catalog-line-3-1">
					<a class="f-14 inline-b black bold">搜索筛选器</a>
				</div>
				<div id="catalog-line-3-2">
					<a class="f-14 inline-b black" id="catalog-line-3-2－scope">搜索范围</a>
					<div class="btn-group">
						<button data-toggle="dropdown"
							class="btn btn-default dropdown-toggle"
							id="catalog-line-3-2－scope-select">
							全部&nbsp;&nbsp;&nbsp;&nbsp; <span class="caret"></span>
						</button>
						<ul class="dropdown-menu">
							<li><a href="#">搜索范围1</a></li>
							<li><a href="#">搜索范围2</a></li>
							<li><a href="#">搜索范围3</a></li>
						</ul>
					</div>
					<a class="f-14 inline-b black" id="catalog-line-3-2-content">搜索内容</a>
					<input id="catalog-line-3-2-content-input" class="form-control" />
					<div class="right">
						<button class="btn-w">搜索</button>
						<button class="btn-b">全部列出</button>
					</div>
				</div>
			</div>

			<div id="catalog-line-3-4">
				<div class="right">
					<button class="icon-btn">
						<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
					</button>
					<a class="grey inline-b">|</a>
					<button class="icon-btn">
						<span class="glyphicon glyphicon-chevron-down icon"
							aria-hidden="true"></span>
					</button>
				</div>
			</div>

			<div id="catalog-line-3-4">
				<table id="catalog-line-3-4-tab">
					<tr class="catalog-tab2-row1">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td>源供应商</td>
						<td>目录订阅名称</td>
						<td>版本</td>
						<td>加载模式</td>
						<td>内容摘要</td>
						<td>预览</td>
						<td>状态</td>
						<td>项目数量</td>
						<td>上次修改时间</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row2">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row4">
						<td class="catalog-tab2-col1"><label> <input
								type="checkbox" class="checkboxes" value="" />
						</label></td>
						<td class="catalog-tab2-col2">供应商1</td>
						<td class="catalog-tab2-col3">名称1</td>
						<td class="catalog-tab2-col4">版本2</td>
						<td class="catalog-tab2-col5">完整</td>
						<td class="catalog-tab2-col6"></td>
						<td class="catalog-tab2-col7"></td>
						<td class="catalog-tab2-col8">已验证</td>
						<td class="catalog-tab2-col9">1</td>
						<td class="catalog-tab2-col10">2017年7月4日 上午09:54</td>
					</tr>
					<tr class="catalog-tab2-row3">
						<td colspan="10">
							<button class="btn-w">比较版本</button>
							<button class="btn-w">发送进行审批</button>
							<button class="btn-w">激活</button>
							<button class="btn-w">停用</button>
							<button class="btn-w">删除版本</button>
							<button class="btn-w">删除订阅</button>
							<button class="btn-w">预览</button>
							<button class="btn-w">删除预览</button>
							<button class="btn-w">强行批准</button>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>
	<!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
