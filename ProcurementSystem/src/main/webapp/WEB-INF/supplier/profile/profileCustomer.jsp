<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要－请求的客户</title>
<%@include file="../../other/supplierHeader1.jsp"%>
</head>
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<div class="standard-title">
					<a class="standard-title-main">公司概要</a>
					<div class="standard-title-r">
						<button class="btn-b">保存</button>
						<button class="btn-w">关闭</button>
					</div>
				</div>
				<div class="row">
					<!-- 左侧主要内容 -->
					<div class="col-md-10">
						
						<div class="tag-line">
							<button class="tag-not-clicked" onclick="window.location.href='profileBasic'">基本</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileBusiness'">商务</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileMarket'">营销</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileContact'">联系人</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileAuth'">认证</button>
							<button class="tag-clicked" onclick="window.location.href='profileCustomer'">请求的客户</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileDoc'">其他文档</button>
						</div>
						
						<div class="profile-left">
							<div class="title-description">＊表示必填字段
							</div>
							
							<div class="standard-subtitle">寻源客户列表
							</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td>客户</td>
										<td>客户请求的概要信息</td>
									</tr>
									<tr id="profile-row">
										<td href="">Lenovo</td>
										<td >完整</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
					
					
					<%@ include file="profileR.jsp"%>
					
				</div>
				<div class="standard-ending">
					<div align="right" class="standard-ending-r">
						<button class="btn-b">保存</button>
						<button class="btn-w">关闭</button>
					</div>				
				
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../other/supplierFooter.jsp"%>
	
	

</body>
</html>