<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>

<title>创建供应商界面</title>

</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
					<!-- 主要内容 -->
					<div class="standard-title">
						<div class="standard-title-main">创建供应商资格管理项目</div> 
						<div class="standard-title-r">
							<button form="supplierCreation" class="btn-b">确定</button>
							<button class="btn-w" onclick="window.location.href='supplierSearch?action=back'">取消</button>
						</div>
					</div>
					<div class="title-description">
						要创建一个供应商资格管理项目，请指定下述字段。用于构建您的供应商资格管理项目的模板将显示在该页底部，可用模板可能会因您输入的项目属性而异。
					</div>
					<div class="adjust-10"></div>
					
					<form id="supplierCreation" action="sqmCreation?action=submit" method="post">
						<div class="row">
							<div class="col-md-5">
								<table class="fulltab" style="margin-left:80px;">
									<tr class="row-standard">
										<td class="col-standard1">＊名称：</td>
										<td class="col-standard2"><input placeholder="无标题供应商资格管理项目" class="form-control input" name="title" style="width:230px;" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1" valign="top">说明：</td>
										<td class="col-standard2"><textarea
												class="form-control" id="pr-textarea" name="description" style="border:1px solid #428bca; border-radius:0;"></textarea></td>
									</tr>
									
									<tr class="row-standard">
										<td class="col-standard1">商品：</td>
										<td class="col-standard2"><input class="form-control input" name="commodity"/>
										</td>
									</tr>
								</table>
							</div>
							<div class="col-md-5">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊供应商：</td>
										<td class="col-standard2"><input class="form-control input" name="supplierId"/>
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">上次资格日期：</td>
										<td class="col-standard2"><input
											class="form-control input" name="lastValid"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">资格失效日期：</td>
										<td class="col-standard2"><input
											class="form-control input" name="validTo"/></td>
									</tr>
								</table>
							</div>
						</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
