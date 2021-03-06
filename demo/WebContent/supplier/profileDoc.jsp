<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要－其他文档</title>
<%@include file="../other/supplierHeader1.jsp"%>
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
							<button class="tag-not-clicked" onclick="window.location.href='profile.jsp'">基本</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileBusiness.jsp'">商务</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileMarket.jsp'">营销</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileContact.jsp'">联系人</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileAuth.jsp'">认证</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileCustomer.jsp'">请求的客户</button>
							<button class="tag-clicked" onclick="window.location.href='profileDoc.jsp'">其他文档</button>
						</div>
						
						<div class="profile-left">
							<div class="title-description">＊表示必填字段<br>仅“基本”选项卡上为主地址指定的国家／地区的文档显示在“其他文档”选项卡
							</div>
							
	
							<div class="standard-subtitle">文档
							</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">文档类型&#8595;</td>
										<td class="blue">文档名称</td>
										<td class="blue">文档编号</td>
										<td class="blue">失效日期</td>
										<td class="blue">上传日期</td>
									</tr>
									<tr>
										<td class="no-item" colspan="5">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="5">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">新增</button>
										</td>
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
	<%@ include file="../other/supplierFooter.jsp"%>
	
	

</body>
</html>