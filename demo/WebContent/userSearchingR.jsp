<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
<title>用户管理</title>
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
												<option>第三方企业用户</option>
												<option>企业用户</option>
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
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="userDetail.jsp">Liyi</a></td>
									<td class="user-search-col3">Liyi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Xiaoyue</a></td>
									<td class="user-search-col3">Xiaoyue</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Zhangqiong</a></td>
									<td class="user-search-col3">Zhangqiong</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Chenchao</a></td>
									<td class="user-search-col3">Chenchao</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Guoran</a></td>
									<td class="user-search-col3">Guoran</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Chengjia</a></td>
									<td class="user-search-col3">Chengjia</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Jingbing</a></td>
									<td class="user-search-col3">Jingbing</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Hanlu</a></td>
									<td class="user-search-col3">Hanlu</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Youran</a></td>
									<td class="user-search-col3">Youran</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月7日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Jingran</a></td>
									<td class="user-search-col3">Jingran</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月4日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Weifan</a></td>
									<td class="user-search-col3">Weifan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月4日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Chunyuan</a></td>
									<td class="user-search-col3">Chuyuan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月4日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Libing</a></td>
									<td class="user-search-col3">Libing</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月3日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Mumeng</a></td>
									<td class="user-search-col3">Mumeng</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月3日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Xiaoyueru</a></td>
									<td class="user-search-col3">Xiaoyueru</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月1日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Zhangyun</a></td>
									<td class="user-search-col3">Zhangyun</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月1日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Chenchaoran</a></td>
									<td class="user-search-col3">Chenchaoran</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年8月1日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Guojiawei</a></td>
									<td class="user-search-col3">Guojiawei</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月29日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Chengjiaqi</a></td>
									<td class="user-search-col3">Chengjiaqi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月29日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Miaojingbing</a></td>
									<td class="user-search-col3">Miaojingbing</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月28日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Hanluyun</a></td>
									<td class="user-search-col3">Hanluyun</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月27日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Youhaoran</a></td>
									<td class="user-search-col3">Youhaoran</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月27日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Guyun</a></td>
									<td class="user-search-col3">Guyun</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月26日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Weirufan</a></td>
									<td class="user-search-col3">Weirufan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月26日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Zhouchuyuan</a></td>
									<td class="user-search-col3">Zhouchuyuan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月26日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href="">Lifeifei</a></td>
									<td class="user-search-col3">Lifeifei</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月25日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Linzhi</a></td>
									<td class="user-search-col3">Linzhi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月25日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Gulina</a></td>
									<td class="user-search-col3">Gulina</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月24日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Feifan</a></td>
									<td class="user-search-col3">Feifan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月24日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Jingbo</a></td>
									<td class="user-search-col3">Jingbo</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月24日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Meiyu</a></td>
									<td class="user-search-col3">Meiyu</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月23日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Keyu</a></td>
									<td class="user-search-col3">Keyu</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月20日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Keke</a></td>
									<td class="user-search-col3">Keke</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月20日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Liuhaoran</a></td>
									<td class="user-search-col3">Liuhaoran</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月20日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Jingzhi</a></td>
									<td class="user-search-col3">Jingzhi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月19日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Tuozhaoyang</a></td>
									<td class="user-search-col3">Tuozhaoyang</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月19日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Meiyinan</a></td>
									<td class="user-search-col3">Meiyinan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月17日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Jingtian</a></td>
									<td class="user-search-col3">Jingtian</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月16日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Liulu</a></td>
									<td class="user-search-col3">Liulu</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月15日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Guli</a></td>
									<td class="user-search-col3">Guli</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月15日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Chenguanxi</a></td>
									<td class="user-search-col3">Chenguanxi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月14日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Xiaojianzhen</a></td>
									<td class="user-search-col3">Xiaojianzhen</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月14日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Zhouguodong</a></td>
									<td class="user-search-col3">Zhouguodong</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月14日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Fanxiayang</a></td>
									<td class="user-search-col3">Fanxiayang</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月13日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Zhaoxinnuo</a></td>
									<td class="user-search-col3">Zhaoxinnuo</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月13日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Wangjiapeng</a></td>
									<td class="user-search-col3">Wangjiapeng</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月12日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Gaoyuan</a></td>
									<td class="user-search-col3">Gaoyuan</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月3日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Weizhenling</a></td>
									<td class="user-search-col3">Weizhenling</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月2日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Fudongqin</a></td>
									<td class="user-search-col3">Fudongqin</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年7月1日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Xuxiaojie</a></td>
									<td class="user-search-col3">Xuxiaojie</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月28日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Ganxuming</a></td>
									<td class="user-search-col3">Ganxuming</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月22日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Liangzhaoming</a></td>
									<td class="user-search-col3">Liangzhaoming</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月20日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Huangxinlei</a></td>
									<td class="user-search-col3">Huangxinlei</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月12日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Niumeng</a></td>
									<td class="user-search-col3">Niumeng</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月5日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Zhangyaojie</a></td>
									<td class="user-search-col3">Zhangyaojie</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月3日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Mumengdi</a></td>
									<td class="user-search-col3">Mumengdi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年6月1日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Fangyi</a></td>
									<td class="user-search-col3">Fangyi</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年5月29日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Yangge</a></td>
									<td class="user-search-col3">Yangge</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年5月29日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Liuzijia</a></td>
									<td class="user-search-col3">Liuzijia</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年5月28日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Weichun</a></td>
									<td class="user-search-col3">Weichun</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年5月25日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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
								<tr class="order-t-col2">
									<td class="user-search-col1"><label> <input
											type="checkbox" class="checkboxes" value="" />
									</label></td>
									<td class="user-search-col2"><a href=userDetail.jsp>Lizhuo</a></td>
									<td class="user-search-col3">Lizhuo</td>
									<td class="user-search-col4">第三方企业用户</td>
									<td class="user-search-col5">是</td>
									<td class="user-search-col6">2017年5月13日</td>
									<td class="user-search-col7"></td>
									<td class="user-search-col8">
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

	
</body>
</html>
