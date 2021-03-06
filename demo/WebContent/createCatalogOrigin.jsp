﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<meta name="description" content="A demo for Ariba" />
<meta name="author" content="Zhixuan Sheng" />
<title>商品目录界面</title>

<!-- BOOTSTRAP CORE STYLE  -->
<link href="assets/css/bootstrap.css" rel="stylesheet" />
<!-- FONT AWESOME STYLE  -->
<link href="assets/css/font-awesome.css" rel="stylesheet" />
<!-- CUSTOM STYLE  -->
<link href="assets/css/style.css" rel="stylesheet" />
<!-- GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css' />
<!-- MY CSS -->
<link href="assets/css/mycss.css" rel="stylesheet" />

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div id="catalog-creation">
		<p>请输入必须的信息，然后选择相应的设置，以导入新目录或者创建新的空目录</p>
		<table class="catalog-table">
			<tr>
				<td class="col1">选择：</td>
				<td class="col2">
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button"
							id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="true">
							创建新的目录订阅 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
							<li><a href="#">选择1</a></li>
							<li><a href="#">选择2</a></li>
							<li><a href="#">选择3</a></li>
						</ul>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">*供应商：</td>
				<td class="col2">（选择一个值）</td>
			</tr>

			<tr>
				<td class="col1">*目录订阅名称：</td>
				<td class="col2"><input /></td>
			</tr>

			<tr>
				<td class="col1">创建空目录：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="empty"
							id="optionsRadios1" value="option1" checked>是</label> <label><input
							type="radio" name="empty" id="optionsRadios2" value="option2">否</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">跳过审批：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="jump" id="optionsRadios1"
							value="option1" checked>是</label> <label><input
							type="radio" name="jump" id="optionsRadios2" value="option2">否</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">在送往审批前停止：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="stopbefore"
							id="optionsRadios1" value="option1" checked>是</label> <label><input
							type="radio" name="stopbefore" id="optionsRadios2"
							value="option2">否</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">自动激活：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="activiate"
							id="optionsRadios1" value="option1" checked>是</label> <label><input
							type="radio" name="activiate" id="optionsRadios2" value="option2">否</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">允许多供应商CIF：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="multiple"
							id="optionsRadios1" value="option1" checked>是</label> <label><input
							type="radio" name="multiple" id="optionsRadios2" value="option2">否</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">隐藏PunchOut商品价格：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="hide" id="optionsRadios1"
							value="option1" checked>是</label> <label><input
							type="radio" name="hide" id="optionsRadios2" value="option2">否</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">层级：</td>
				<td class="col2">
					<div class="radio">
						<label><input type="radio" name="status"
							id="optionsRadios1" value="option1" checked>白金</label> <label><input
							type="radio" name="status" id="optionsRadios2" value="option2">黄金</label>
						<label><input type="radio" name="status"
							id="optionsRadios3" value="option3">白银</label> <label><input
							type="radio" name="status" id="optionsRadios4" value="option4">无</label>
					</div>
				</td>
			</tr>

			<tr>
				<td class="col1">宽松验证：</td>
				<td class="col2"><button type="submit" class="btn btn-default">配置</button></td>
			</tr>

			<tr>
				<td class="col1">目录文件：</td>
				<td class="col2"><button type="submit" class="btn btn-default">选择文件</button></td>
			</tr>
		</table>
		<button type="submit" class="btn btn-default">取消</button>
	</div>
	<%@ include file="other/footer.jsp"%>
	
</body>
</html>
