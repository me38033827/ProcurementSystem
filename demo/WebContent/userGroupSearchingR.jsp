<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>组管理</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">
		<!-- 主要内容 -->
		<div class="con">
			<div id="searching-title-out">
				<a class="inline-b black" id="searching-title">组管理</a>
			</div>
			<div class="user-main">
				<!-- 搜索显示区域 -->
				<div class="user-left">
					<a class="f-16 black"><span class="caret"></span>&nbsp;&nbsp;用户</a>
					<a class="f-14 black" href="userSearching.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户管理</a>
					<a class="f-14 black" href="userCreation.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建用户</a>
					<a class="f-16 black"><span class="caret"></span>&nbsp;&nbsp;组</a>
					<a class="f-14" href="userGroupSearching.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;组管理</a>
					<a class="f-14 black" href="userGroupCreation.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建组</a>
				</div>
				<div class="user-right">
					<a class="black f-14">请更改搜索条件或名称，然后进行搜索</a>
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
										<td class="order-filter-left-col1">组名称：</td>
										<td class="order-filter-left-col2"><input
											class="form-control input" /></td>
									</tr>
									<tr>
										<td class="order-filter-left-col1">说明：</td>
										<td class="order-filter-left-col2"><input
											class="form-control input" /></td>
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
							<div class="right" style="height:30px;">
								<button class="btn-b">搜索</button>
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
									<td class="group-search-col1">组名称</td>
									<td class="group-search-col2">定义者</td>
									<td class="group-search-col3">说明</td>
									<td class="group-search-col4">用户可以请求责任</td>
									<td class="group-search-col5"></td>
								</tr>
							</table>
						</div>
						<div id="user-group-searching-tab-out">
							<table class="fulltab">
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">财务</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">可将该组的成员添加到请购单、发票核算文档、合同请求、出差授权和开支报告的审批流程中。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">采购代理</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="userGroupDetail.jsp">采购用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">电子表单模版管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票编辑员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以编辑发票和发票核算文档。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票录入用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">费用用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">付款主管</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：在用户界面中使用强制发送命令手动将付款请求文档的状态从...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">供应商</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">（无）</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">购物车管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以查询、查看和复制任何购物车。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">合同审批人</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以审批合同请求。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">集成管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以使用“集成管理器”来：配置集成事件，配置外部系统连接...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">客户管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">“客户管理员”组是系统中功能最强大的组。该组的成员可以执行大多数用户界面和网站管理任务。他们还可以在...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<!-- copy -->
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">采购代理</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="userGroupDetail.jsp">采购用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">电子表单模版管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票编辑员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以编辑发票和发票核算文档。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票录入用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">费用用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">付款主管</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：在用户界面中使用强制发送命令手动将付款请求文档的状态从...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">供应商</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">（无）</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">购物车管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以查询、查看和复制任何购物车。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">合同审批人</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以审批合同请求。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">集成管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以使用“集成管理器”来：配置集成事件，配置外部系统连接...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">客户管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">“客户管理员”组是系统中功能最强大的组。该组的成员可以执行大多数用户界面和网站管理任务。他们还可以在...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">采购代理</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="userGroupDetail.jsp">采购用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">电子表单模版管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票编辑员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以编辑发票和发票核算文档。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票录入用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">费用用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">付款主管</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：在用户界面中使用强制发送命令手动将付款请求文档的状态从...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">供应商</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">（无）</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">购物车管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以查询、查看和复制任何购物车。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">合同审批人</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以审批合同请求。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">集成管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以使用“集成管理器”来：配置集成事件，配置外部系统连接...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">客户管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">“客户管理员”组是系统中功能最强大的组。该组的成员可以执行大多数用户界面和网站管理任务。他们还可以在...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">采购代理</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="userGroupDetail.jsp">采购用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">电子表单模版管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票编辑员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以编辑发票和发票核算文档。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票录入用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">费用用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">付款主管</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：在用户界面中使用强制发送命令手动将付款请求文档的状态从...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">供应商</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">（无）</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">购物车管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以查询、查看和复制任何购物车。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">合同审批人</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以审批合同请求。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">集成管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以使用“集成管理器”来：配置集成事件，配置外部系统连接...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">客户管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">“客户管理员”组是系统中功能最强大的组。该组的成员可以执行大多数用户界面和网站管理任务。他们还可以在...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">采购代理</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="userGroupDetail.jsp">采购用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">电子表单模版管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票编辑员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以编辑发票和发票核算文档。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票录入用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">费用用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">付款主管</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：在用户界面中使用强制发送命令手动将付款请求文档的状态从...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">供应商</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">（无）</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">购物车管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以查询、查看和复制任何购物车。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">合同审批人</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以审批合同请求。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">集成管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以使用“集成管理器”来：配置集成事件，配置外部系统连接...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">客户管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">“客户管理员”组是系统中功能最强大的组。该组的成员可以执行大多数用户界面和网站管理任务。他们还可以在...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">采购代理</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">对收据、请购单、订购单、发票核算文档、合同请求、付款请求文档和里程碑...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="userGroupDetail.jsp">采购用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建请购单；查询采购流程中自己和下属的待批文档...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">电子表单模版管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以创建新的电子表单模版，以及查看或编辑所有现有的电子表单模版</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票编辑员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以编辑发票和发票核算文档。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">发票录入用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：创建发票，查询自己和下属的发票...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">费用用户</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以向相应购物卡的未分配费用项目分配相应的费用，以及查看这些费用。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">付款主管</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以：在用户界面中使用强制发送命令手动将付款请求文档的状态从...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">供应商</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">（无）</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">购物车管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以查询、查看和复制任何购物车。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">合同审批人</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以审批合同请求。</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">集成管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">该组的成员可以使用“集成管理器”来：配置集成事件，配置外部系统连接...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								<tr class="searching-tab1-row2">
									<td class="group-search-col1"><a class="blue" href="">客户管理员</a></td>
									<td class="group-search-col2"><a class="blue" href="">系统</a></td>
									<td class="group-search-col3">“客户管理员”组是系统中功能最强大的组。该组的成员可以执行大多数用户界面和网站管理任务。他们还可以在...</td>
									<td class="group-search-col4">否</td>
									<td class="group-search-col5">
										<div class="btn-group" >
											<button class="btn-m" data-toggle="dropdown">
												操作&nbsp;<span class="caret"></span>
											</button>
											<ul class="dropdown-menu manu-btn-o" >
												<li><a class="manu-btn" >编辑</a></li>
												<li><a class="manu-btn" >停用</a></li>
											</ul>
										</div>
									</td>
								</tr>
								
							</table>
						</div>
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row3">
									<td colspan="8">
										<button class="btn-w" onclick="window.location.href='userGroupCreation.jsp'">创建组</button>
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


</body>
</html>
