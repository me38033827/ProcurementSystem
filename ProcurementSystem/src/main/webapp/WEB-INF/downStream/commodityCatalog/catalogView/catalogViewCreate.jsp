<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../../../other/header1.jsp"%>
<%@include file="../../../other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
<script src="/ProcurementSystem/js/selectCommodity.js"></script>
</head>
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="row border-bottom-grey">
					<div class="col-md-12">
						<!-- title -->
						<br>
						<div class="border-bottom-grey ">
							<div class="right">
								<button class="btn-b" type="submit" form="formsubmit">添加约束</button>
								<button class="btn-w" type="button"
									onclick="window.history.go(-1)">取消</button>
							</div>
							<div class="small-window-title margin-bottom ">添加目录约束</div>
						</div>

						<div class="title-description">选择筛选器类型以根据用户组和成本中心显示或隐藏目录视图</div>
						<br>
						<div id="catalog-creation">
							<form action="saveCatalogView" method="post" id="formsubmit">
								<table class="catalog-table">
									<tbody>
										<tr>
											<td class="col1">组：</td>
											<td class="col2"><select id="group" name="group"
												style="width: 200px">
													<option value="0001">0001</option>
													<option value="0002">0002</option>
											</select></td>

										</tr>
										<tr>
											<td class="col1">成本中心：</td>
											<td class="col2"><select id="" name=""
												style="width: 200px" onclick="changePage();">
													<option value="">无值</option>
											</select></td>

										</tr>
										<tr>
											<td class="col1">筛选器类型：</td>
											<td class="col2" colspan="2"><div class="radio">
													<label><input type="radio" name="type" id="level1"
														onclick="change(1)" checked value="开始时不查看任何内容，然后向有资格的用户显示更多目录项目">开始时不查看任何内容，然后向有资格的用户显示更多目录项目</label>
													<br> <label><input type="radio" name="type"
														id="level1" onclick="change(2)" value="开始时不查看任何内容，然后向没有资格的用户显示更多目录项目">开始时不查看任何内容，然后向没有资格的用户显示更多目录项目</label><br>
													<label><input onclick="change(3)" type="radio"
														name="type" id="level2" value="开始时查看所有内容，然后向有资格的用户隐藏某些目录项目">
														开始时查看所有内容，然后向有资格的用户隐藏某些目录项目 </label> <br> <label><input
														onclick="change(4)" type="radio" name="type" id="level3"
														value="开始时查看所有内容，然后向没有资格的用户隐藏某些目录项目">开始时查看所有内容，然后向没有资格的用户隐藏某些目录项目</label>
												</div></td>
										</tr>
									</tbody>
								</table>
								<br>
								<div>
									<div>
										<strong id="content">仅向具有 null 组和 null 成本中心 的用户显示下列目录</strong>
									</div>
									<table class="catalog-table">
										<tbody>

											<tr>
												<td class="col1">供应商：</td>
												<td class="col2"><select id=""
													name="supplier.uniqueName" style="width:">
														<option value="">无值</option>
														<c:forEach items="${suppliers }" var="supplier">
															<option value="${supplier.uniqueName }">${supplier.name}</option>
														</c:forEach>
												</select></td>
											</tr>
											<tr>
												<td class="col1">目录：</td>
												<td class="col2"><select id="createMode"
													name="catalog" style="width:">
														<option value="">无值</option>
														<c:forEach items="${catalogs }" var="catalog">
															<option value="${catalog.name }">${catalog.name }</option>
														</c:forEach>
												</select></td>
											</tr>
											<tr>
												<td class="col1">目录包：</td>
												<td class="col2"><select id=""
													name="" style="width:">
														<option value="">无值</option>
												</select></td>
											</tr>
											<tr>
												<td class="col1" valign="top">商品代码：</td>
												<td class="col2">
												［&nbsp;<input type="button"
													style="width: 50px; border: none;"
													onclick="onSelectSingleCommodity();" value="选择" />&nbsp;］
												<table id="commodities">
														<tr>
															<td id="name"></td>
															<td id="code1"></td>
														</tr>
														<tr>
															<td><input type="hidden" name="code" id="code"></td>
														</tr>
													</table> </td>
											</tr>
										</tbody>
									</table>
								</div>
							</form>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
		<!-- 选择商品 -->
		<%@include file="../../../other/selectSingleCommodity.jsp"%>
		<div class="theme-popover-mask"></div>
		<br> <br>
		<!-- CONTENT-WRAPPER SECTION END-->
	</div>
	<script>
		function change(num) {
			var content = "";
			var group = $("#group").val();
			switch (num) {
			case 1:
				content = "仅向具有" + group + " 组和 null 成本中心 的用户显示下列目录";
				break;
			case 2:
				content = "对于不具有" + group + " 组和 null 成本中心 的用户显示下列目录";
				break;
			case 3:
				content = "对于具有" + group + " 组和 null 成本中心 的用户隐藏下列目录    ";
				break;
			case 4:
				content = "对于不具有" + group + " 组和 null 成本中心 的用户隐藏下列目录";
				break;
			}
			$("#content").html(content);
		}
		function setCommodity(name, code) {
			$("#name").html(name);
			$("#code1").html(code);
			$("#code").val(code);
			//浮框效果
			$('.theme-popover-mask').fadeOut(100);
			$('.theme-popover').slideUp(200);
		}
	</script>
</body>
</html>