﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>

</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="border-bottom-grey margin-bottom">
						<div class="right">
							<button class="btn-w"
								onclick="window.location.href='procurementCommodityCatalogList.jsp'">目录
								主页</button>
						</div>
						<div class="small-window-title margin-bottom ">目录 - 查看内容 -
							catalog for test，版本 1, 完整</div>

					</div>
					<div class="margin-bottom">
						<span class="caution-div container-text border-blue"> <a  href="procurementCommodityCatalogContent.jsp">步骤1.清理数据</a>
						</span>&nbsp;&nbsp; > &nbsp;&nbsp;<span> <a href="procurementCommodityCatalogCompare.jsp">步骤2.分析数据</a>
						</span>&nbsp;&nbsp; >&nbsp;&nbsp; <span> <a href="procurementCommodityCatalogActivate.jsp">步骤3.生效</a>
						</span>
					</div>

					<div class="margin-bottom">
						<div>
							<strong>工具：</strong> <a><img
								src="/demo/assets/img/icon-correct.png" class="img-icon"
								title="纠错工具" /></a> <a><img
								src="/demo/assets/img/icon-edit.png"
								class="img-icon icon-choose" title="内容编辑工具" /></a> <a><img
								src="/demo/assets/img/icon-download.png" class="img-icon"
								title="导入" /></a> <a><img
								src="/demo/assets/img/icon-upload.png" class="img-icon"
								title="导出" /></a> <a><img src="/demo/assets/img/icon-sync.png"
								class="img-icon" title="同步" /></a>

						</div>
					</div>
					<div class="margin-bottom">
						<div>请复查目录行项目，根据需要更改哪些字段将显示在屏幕上。根据订阅状态的不同，您可能可以编辑、删除项目或者添加新的项目。</div>
					</div>

					<div class="margin-bottom">
						<div class="left">该版本中的项目数量: 5。&nbsp;&nbsp;</div>
						<div>
							<button class="btn-w" style="width: 120px;">隐藏/显示字段</button>
							<button class="btn-w">刷新图像</button>
							<a href="">在搜索用户界面中预览项目</a>
						</div>
					</div>
					<table border="1" class="fulltab text-center">
						<tr>
							<th width="10%" class="text-center"><input type="checkbox"
								id="commo-t0" class="chk" /><label for="commo-t0"></label>
							<th width="5%" class="text-center">行</th>
							<th width="10%" class="text-center">金额</th>
							<th width="20%" class="text-center">供应商名称</th>
							<th width="20%" class="text-center">供应商部件识别符</th>
							<th width="15%" class="text-center">供应商部件辅助识别符</th>
							<th width="20%" class="text-center">描述</th>
						</tr>
						<tr>
							<td><input type="checkbox" id="commo-t0" class="chk" /><label
								for="commo-t0"></label>&nbsp;<a
								href="procurementCommodityCatalogEdit.jsp">编辑！！！</a></td>
							<td>13</td>
							<td>200</td>
							<td>0615SupplierA</td>
							<td>Catalog for test_8101</td>
							<td></td>
							<td >Description for 8101</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="commo-t1" class="chk" /><label
								for="commo-t1"></label>&nbsp;编辑！！！</td>
							<td>13</td>
							<td>200</td>
							<td>0615SupplierA</td>
							<td>Catalog for test_8101</td>
							<td></td>
							<td>Description for 8101</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="commo-t2" class="chk" /><label
								for="commo-t2"></label>&nbsp;编辑！！！</td>
							<td>13</td>
							<td>200</td>
							<td>0615SupplierA</td>
							<td>Catalog for test_8101</td>
							<td></td>
							<td>Description for 8101</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="commo-t3" class="chk" /><label
								for="commo-t3"></label>&nbsp;编辑！！！</td>
							<td>13</td>
							<td>200</td>
							<td>0615SupplierA</td>
							<td>Catalog for test_8101</td>
							<td></td>
							<td>Description for 8101</td>
						</tr>
						<tr>
							<td><input type="checkbox" id="commo-t4" class="chk" /><label
								for="commo-t4"></label>&nbsp;编辑！！！</td>
							<td>13</td>
							<td>200</td>
							<td>0615SupplierA</td>
							<td>Catalog for test_8101</td>
							<td></td>
							<td>Description for 8101</td>
						</tr>
					</table>
					<div class="margin-bottom border-bottom-grey">

						<div class="table-bottom-btn" style="background-color: white;">
							<a class="arrow-turn">↳</a>
							<button class="btn-w">删除</button>
							<button class="btn-w">添加新目录</button>
							<br> <br>
						</div>
					</div>
					<div class="right">
						<button class="btn-w">目录 主页</button>
						<br> <br>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>