<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要</title>
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
							<button class="tag-clicked" onclick="window.location.href='profile.jsp'">基本</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileBusiness.jsp'">商务</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileMarket.jsp'">营销</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileContact.jsp'">联系人</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileAuth.jsp'">认证</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileCustomer.jsp'">请求的客户</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileDoc.jsp'">其他文档</button>
						</div>
						
						<div class="profile-left">
							<div class="title-description">＊表示必填字段</div>
							
							<div class="standard-subtitle">概述</div>
							
							<div class="adjust-left-80">
								<table>
									<tr class="row-standard">
										<td class="col-standard1">＊公司名称：</td>
										<td class="col-standard2"><input class="form-control input" value="惠普（北京）有限公司"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">其他名称（如果有）：</td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1"></td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">标识符：</td>
										<td class="col-standard2">SU0000134</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">简短描述：</td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">网站：</td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="standard-subtitle">地址</div>
							
							<div class="adjust-left-80">
								<table>
									<tr class="row-standard">
										<td class="col-standard1">＊邮政编码：</td>
										<td class="col-standard2"><input class="form-control input" value="101311"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">省：</td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">＊城市：</td>
										<td class="col-standard2"><input class="form-control input" value="北京"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">＊地址1：</td>
										<td class="col-standard2"><input style="width:300px;" class="form-control input" value="北京市朝阳区东三环南路2号中国惠普大厦"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">地址2：</td>
										<td class="col-standard2"><input style="width:300px;" class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">地址3：</td>
										<td class="col-standard2"><input style="width:300px;" class="form-control input"/></td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="standard-subtitle">附加公司地址</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">地址名称&#8595;</td>
										<td class="blue">地址标识符</td>
										<td class="blue">增值税标识符</td>
										<td class="blue">税务标识符</td>
										<td>地址</td>
										<td>地区</td>
										<td>法律概要状态</td>
									</tr>
									<tr>
										<td class="no-item" colspan="7">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="7">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">创建</button>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="standard-subtitle">产品和服务类别、送货地址或服务地点和行业</div>
							
							<div class="standard-subsubtitle">产品和服务类别＊</div>
							
							<div class="standard-subsubtitle-description">输入贵公司提供的产品和服务。采购商提交的天晴球奖根据您在下面输入的产品和服务与您匹配。</a>
							</div>
							
							<div>
								<input id="profile-input" class="form-control input inline-b" value="输入产品和服务类别"
									onfocus="if(this.value=='输入产品和服务类别') this.value=''"
									onblur="if(this.value=='')this.value='输入产品和服务类别' "/>
								<button class="btn-w" id="profile-add">添加</button>
								<a id="profile-or">－或－</a>
								<a href="">浏览</a>
							</div>
							
							<div>
								<div class="delete-tag">
									<a class="grey left">激光打印机</a> 
									<a href="" class="grey right">X</a>
								</div>
							</div>
							
							<div class="standard-subsubtitle">送货地址或服务地点＊</div>
							
							<div class="standard-subsubtitle-description">输入贵公司送货地址或服务地点。如果贵公司只为特定的地点服务，请在下面输入地点。</a>
							</div>
							
							<div>
								<input id="profile-input" class="form-control input inline-b" value="输入送货地址或服务地点"
									onfocus="if(this.value=='输入送货地址或服务地点') this.value=''"
									onblur="if(this.value=='')this.value='输入送货地址或服务地点' "/>
								<button class="btn-w" id="profile-add">添加</button>
								<a id="profile-or">－或－</a>
								<a href="">浏览</a>
							</div>
							
							<div>
								<div class="delete-tag">
									<a class="grey left">北京</a> 
									<a href="" class="grey right">X</a>
								</div>
							</div>
							
							<div class="standard-subsubtitle">行业</div>
							
							<div class="standard-subsubtitle-description">请选择贵公司所从市的行业。</div>
							
							<div class="profile-end">
								<button class="btn-w right">添加</button>
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