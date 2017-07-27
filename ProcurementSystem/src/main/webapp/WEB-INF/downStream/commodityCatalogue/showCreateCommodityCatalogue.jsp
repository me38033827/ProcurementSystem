<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>导入新目录界面</title>
		<%@ include file="../../other/header.jsp" %>
	</head>
	
			<!-- 导入新目录标题 -->
			<div id="catalog-creation-title1">
				<a id="catalog-creation-title-font">目录－导入新目录</a>
			</div>
			<!-- 导入新目录具体内容 -->
			<div id="catalog-creation">
				<p>请输入必须的信息，然后选择相应的设置，以导入新目录或者创建新的空目录</p>
				<table class="catalog-table">
					<tr>
						<td class="col1">选择：</td>
						<td class="col2">
							<select id="my-select">
								<option>创建新的目录订阅</option>
								<option>选项1</option>
								<option>选项2</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td class="col1">*供应商：</td>
						<td class="col2">（选择一个值）选择</td>
					</tr>
					
					<tr>
						<td class="col1">*目录订阅名称：</td>
						<td class="col2"><input id="creation-title" /></td>
					</tr>
					
					<tr>
						<td class="col1">创建空目录：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="empty" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="empty" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">跳过审批：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="jump" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="jump" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">在送往审批前停止：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="stopbefore" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="stopbefore" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">自动激活：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="activiate" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="activiate" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">允许多供应商CIF：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="multiple" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="multiple" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">隐藏PunchOut商品价格：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="hide" id="optionsRadios1" value="option1">是</label>
							  	<label><input type="radio" name="hide" id="optionsRadios2" value="option2" checked>否</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">层级：</td>
						<td class="col2">
							<div class="radio">
								<label><input type="radio" name="status" id="optionsRadios1" value="option1">白金</label>
							  	<label><input type="radio" name="status" id="optionsRadios2" value="option2">黄金</label>
							  	<label><input type="radio" name="status" id="optionsRadios3" value="option3">白银</label>
							  	<label><input type="radio" name="status" id="optionsRadios4" value="option4" checked>无</label>
							</div>
						</td>
					</tr>
					
					<tr>
						<td class="col1">宽松验证：</td>
						<td class="col2"><button type="submit" class="btn btn-default" id="catalog-creation-config">配置</button></td>
					</tr>
					
					<tr>
						<td class="col1">目录文件：</td>
						<td class="col2"><button type="submit" class="btn btn-default" id="catalog-creation-select">选择文件</button></td>
					</tr>
				</table>
				<button type="submit" class="btn btn-default" id="catalog-creation-cancel">保存</button>
			</div>
		</div>
		
	
	</body>
</html>
