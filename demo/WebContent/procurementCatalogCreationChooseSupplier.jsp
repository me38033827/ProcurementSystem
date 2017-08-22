<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<div class="row">
					<div class="col-md-12">
						<div class="standard-title-r">
							<button class="btn-w">取消</button>
						</div>
						<div class="standard-title">
							<div class="standard-title-main">选择供应商</div>
						</div>
						<div class="margin-bottom">请选择供应商</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div style="background: #f5f5f5;">
							<table width="99%"
								style="border-collapse: separate; border-spacing: 0px 10px;">
								<tr>
									<th class="right">搜索筛选器:</th>
									<th></th>
									<th></th>
									<th class="right"><a>添加/删除搜索筛选器</a></th>
								</tr>
								<tr>
									<td></td>
									<td>普通供应商名称：</td>
									<td><input class="form-control input"></td>
								</tr>
								<tr>
									<td></td>
									<td>已激活：</td>
									<td><label class="radio-inline"><input
											type="radio" name="activateState" checked>是</label><label
										class="radio-inline"><input type="radio"
											name="activateState">否</label><label class="radio-inline"><input
											type="radio" name="activateState">是或否</label></td>
								</tr>
								<tr>
									<td></td>
									<td>系统标识符：</td>
									<td><input class="form-control input"></td>
									<td class="right">
										<button class="btn-b">搜索</button>
										<button class="btn-w">全部列出</button>
									</td>
								</tr>
							</table>
							<div class="margin-bottom"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="fulltab margin-bottom">
							<table class="table table-hover">
								<tr class="standard-row1">
									<th width="70%">普通供应商名称</th>
									<th></th>
								</tr>
							</table>
							<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
								<table class="table table-hover">
									<tr>
										<td width="70%">111</td>
										<td><button class="btn-w right">选择</button></td>
									</tr>
									<tr>
										<td width="70%">111</td>
										<td><button class="btn-w right">选择</button></td>
									</tr><tr>
										<td width="70%">111</td>
										<td><button class="btn-w right">选择</button></td>
									</tr><tr>
										<td width="70%">111</td>
										<td><button class="btn-w right">选择</button></td>
									</tr><tr>
										<td width="70%">111</td>
										<td><button class="btn-w right">选择</button></td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="row"><div class="right"><button class="btn-w">取消</button></div></div>
			</div>
		</div>
	</div>
	<%@ include file="other/footer.jsp"%>

</body>
</html>
