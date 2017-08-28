<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>搜索供应商和客户</title>

<%@include file="../../other/header1.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">

				<div class="standard-title">
					<a class="standard-title-main">搜索供应商和客户</a>
				</div>
				
				<div class="adjust-10"></div>
				
				<div id="supplier-searching-box">
					<b>短短两天内即可找到新供应商！</b>
					<a href="">寻找新供应商</a>或<a href="">了解更多</a>
				</div>
				
				<div class="adjust-10"></div>
				
				<div class="searching-filter">
					<div class="filter-title">
						<a class="filter-title-main">搜索筛选器</a>
						<a class="right f-12">选项<span class="caret"></span></a>
					</div>
					<div class="row searching-content">
						<div class="col-md-6">
							<table>
								<tr class="row-standard">
									<td class="col-standard1" style="width:350px;padding-left:30px;"><input type="text" class="col-md-5 form-control input" style="width:300px;"
											value="使用名称、标识符或任何其他词语搜索"
											onfocus="if(this.value=='使用名称、标识符或任何其他词语搜索') this.value=''"
											onblur="if(this.value=='')this.value='使用名称、标识符或任何其他词语搜索' ">
									</td>
									<td class="col-standard2">
										<a href=""><span class="glyphicon glyphicon-plus-sign blue" style="font-size:20px;margin-top:3px;margin-left:40px;" aria-hidden="true"></span></a>
									</td>
								</tr>
							</table>
						</div>
					</div>
					<div class="searching-ending">
						<div align="right">
							<button class="btn-w">重置</button>
							<button class="btn-b" onclick="window.location.href='supplierSearchingR.jsp'">搜索</button>
						</div>
					</div>
				</div>
	
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				
				<div class="standard-subtitle" style="border:0; margin-bottom:0;">搜索结果
					<div class="right">
						<button class="icon-btn">
							<span class="glyphicon glyphicon-th icon" aria-hidden="true"></span>
						</button>
					</div>
				</div>
				
				<div>
					<table class="table table-hover">
						<tr class="standard-row1">
							<td style="padding:5px;">
								<input type="checkbox" id="chk-searching-s1" class="chk" /><label for="chk-searching-s1"></label>
							</td>
							<td style="width:20%;">组织名称</td>
							<td style="width:20%;">系统标识符</td>
							<td style="width:15%;">审批状态</td>
							<td style="width:15%;">供应商</td>
							<td style="width:15%;">客户</td>
							<td style="width:10%;"></td>
						</tr>
						<tr>
							<td colspan="7" class="no-item f-13 grey">请在上面输入搜索条件，然后单击<b>搜索</b></td>
						</tr>
						<tr class="standard-row3">
							<td colspan="7">
								<div class="btn-group" >
									<button class="btn-w" data-toggle="dropdown">
										新建&nbsp;<span class="caret"></span>
									</button>
									<ul class="dropdown-menu manu-btn-o" >
										<li><a class="manu-btn" >供应商</a></li>
										<li><a class="manu-btn" >客户</a></li>
									</ul>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../../other/footer.jsp"%>
	
</body>
</html>
