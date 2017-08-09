<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户管理界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">



		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">用户管理</a>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div class="user-left">
					<a class="f-16 black"><span class="caret"></span>&nbsp;&nbsp;用户</a>
					<a class="f-14" href="userSearching.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户管理</a>
					<a class="f-14 black" href="userCreation.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建用户</a>
					<a class="f-16 black"><span class="caret"></span>&nbsp;&nbsp;组</a>
					<a class="f-14 black" href="userGroupSearching.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组管理</a>
					<a class="f-14 black" href="userGroupCreation.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建组</a>
				</div>
				<div class="user-right">
					<a class="black f-14">搜索现有用户或创建新用户。搜索字段不区分大小写，您可以输入全部或部分名称。</a>
					<div id="filters">
						<div id="order-filter-line1">
							<div class="left black" id="order-filter-line1-title">搜索筛选器</div>
							<div class="right blue" id="order-filter-line1-option">添加／删除搜索筛选器</div>
						</div>
						<div>
							<div align="left" class="inline-b col-md-6"
								style="padding-left: 10%;">
								<table>
									<tr>
										<td class="order-filter-left-col1">类型：</td>
										<td class="order-filter-left-col2"><select id="my-select">
												<option>企业用户</option>
												<option>第三方企业用户</option>
										</select></td>
									</tr>
									<tr>
										<td class="order-filter-left-col1">用户标识符：</td>
										<td class="order-filter-left-col2"><input
											class="form-control input" /></td>
									</tr>
									<tr>
										<td class="order-filter-left-col1">名称：</td>
										<td class="order-filter-left-col2"><input
											class="form-control input" /></td>
									</tr>
									<tr>
										<td class="order-filter-left-col1">已锁定：</td>
										<td class="order-filter-left-col2">
											<div class="radio">
												<label><input type="radio" name="activiate"
													id="optionsRadios1" value="option1">是</label> <label><input
													type="radio" name="activiate" id="optionsRadios2"
													value="option2">否</label> <label><input
													type="radio" name="activiate" id="optionsRadios2"
													value="option2" checked>是或否</label>
											</div>
										</td>
									</tr>
									<tr>
										<td class="order-filter-left-col1">已激活：</td>
										<td class="order-filter-left-col2">
											<div class="radio">
												<label><input type="radio" name="activiate"
													id="optionsRadios1" value="option1">是</label> <label><input
													type="radio" name="activiate" id="optionsRadios2"
													value="option2">否</label> <label><input
													type="radio" name="activiate" id="optionsRadios2"
													value="option2" checked>是或否</label>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>
						<div id="order-filter-line3">
							<div class="right">
								<button class="btn-b"
									onclick="window.location.href='userSearchingR.jsp'">搜索</button>
								<button class="btn-w">全部列出</button>
							</div>
						</div>
					</div>

					<div class="adjust1"></div>
					<div class="adjust1"></div>

					<div id="order-result-out">
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row1">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2">用户标识符</td>
									<td class="user-search-col3">名称</td>
									<td class="user-search-col4">类型</td>
									<td class="user-search-col5">已有密码</td>
									<td class="user-search-col6">上次登录</td>
									<td class="user-search-col7">受托人</td>
									<td class="user-search-col8"></td>
								</tr>
							</table>
						</div>
						<div id="user-searching-tab-out">
							<table class="fulltab">
								<tr class="order-t-col2">
									<td colspan="8" style="text-align: center;">无项目</td>
								</tr>
							</table>
						</div>
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row3">
									<td colspan="8">
										<button class="btn-w">生成密码</button>
										<button class="btn-w"
											onclick="window.location.href='userCreation.jsp'">创建用户</button>
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>

	<!-- CORE JQUERY  -->
	<script src="assets/js/jquery-1.10.2.js"></script>
	<!-- BOOTSTRAP SCRIPTS  -->
	<script src="assets/js/bootstrap.js"></script>
	<!-- CUSTOM SCRIPTS  -->
	<script src="assets/js/custom.js"></script>
</body>
</html>
