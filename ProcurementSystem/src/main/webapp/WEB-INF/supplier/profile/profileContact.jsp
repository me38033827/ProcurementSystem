<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要－联系人</title>
<%@include file="../../other/supplierHeader1.jsp"%>
</head>
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<div class="standard-title">
					<a class="standard-title-main">公司概要</a>
					<div class="standard-title-r">
						<button class="btn-b" form="editProfile" formaction="contact?turnto=save">保存</button>
						<button class="btn-w" onclick="window.location.href='profileClose'">关闭</button>
					</div>
				</div>
				<div class="row">
					<!-- 左侧主要内容 -->
					<div class="col-md-10">
						<div class="tag-line">
							<button class="tag-not-clicked" form="editProfile" formaction="contact?turnto=profile">基本</button>
							<button class="tag-not-clicked" form="editProfile" formaction="contact?turnto=business">商务</button>
							<button class="tag-not-clicked" form="editProfile" formaction="contact?turnto=market">营销</button>
							<button class="tag-clicked">联系人</button>
							<button class="tag-not-clicked" form="editProfile" formaction="contact?turnto=auth">认证</button>
							<button class="tag-not-clicked" form="editProfile" formaction="contact?turnto=customer">请求的客户</button>
							<button class="tag-not-clicked" form="editProfile" formaction="contact?turnto=doc">其他文档</button>
						</div>
						
						<form id="editProfile" method="post">
						<div class="profile-left">
							<div class="title-description">＊表示必填字段
							</div>
							
							<div class="standard-subtitle">公司联系信息
							</div>
							
							<div class="adjust-left-80">
								<table>
									<tr class="row-standard">
										<td class="col-standard1">＊主电子邮件地址：</td>
										<td class="col-standard2"><input style="width:240px;"class="form-control input" name="mainEmail" value="${supplierSession.mainEmail}"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">＊总机：</td>
										<td class="col-standard2">
											区号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号码<br>
											<input id="phone-prov" class="form-control input" name="switchboardZone" value="${supplierSession.switchboardZone}"/>
											<input id="phone-num" class="form-control input" name="switchboard" value="${supplierSession.switchboard}"/>
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">主传真：</td>
										<td class="col-standard2">
											区号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号码<br>
											<input id="phone-prov" class="form-control input inline-b"name="mainFaxZone" value="${supplierSession.mainFaxZone}" style="width:60px;"/>
											<input id="phone-num" class="form-control input inline-b" name="mainFax" value="${supplierSession.mainFax}"/>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							
							<div class="standard-subtitle">联系人
							</div>
							
							<div class="title-description">客户需要知道贵公司的联系方式。您可以提供公司级联系人和特定客户的联系人。请先创建个人联系人列表。然后，创建公司级联系人和特定于客户的联系人。客户看不到您的联系人列表，单击“编辑”或“姓名”劣种的任何链接一编辑联系人的详细信息。
							</div>
							
							<div class="standard-subtitle">联系人
							</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">姓名&#8595;</td>
										<td class="blue">业务职称</td>
										<td class="blue">电子邮件</td>
										<td>电话</td>
									</tr>
									<tr>
										<td class="no-item" colspan="4">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="4">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">创建</button>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							
							
							<div class="standard-subtitle">公司级指派
							</div>
							
							<div class="title-description">指定公司级联系人。对于要与您开展业务的客户，可首先联系这些公司级联系人。要查看特定于客户的指派，请转至“特定与客户的指派”区域。
							</div>
							
							
							
							<div class="standard-subtitle">公司级指派
							</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">指派</td>
										<td class="blue">联系人姓名</td>
										<td>操作</td>
									</tr>
								</table>
							</div>
							<div id="profile-contact-out">
								<table class="table table-hover">
									<tr>
										<td><a href="">收账文员</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">应付账文员</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">客户服务经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">目录经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">电子商务经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">营销经理</a></td>
										<td></td>
										<td></td>
									</tr>
									
									<tr>
										<td><a href="">销售代表</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">销售订单／营运经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">投标／提案经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">收账文员</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">应付账文员</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">客户服务经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">目录经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">电子商务经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">营销经理</a></td>
										<td></td>
										<td></td>
									</tr>
									
									<tr>
										<td><a href="">销售代表</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">销售订单／营运经理</a></td>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td><a href="">投标／提案经理</a></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
							<div>
								<table class="table table-hover">
									<tr class="standard-row3">
										<td colspan="3">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">创建</button>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							
							<div class="adjust-10"></div>
							
							<div class="standard-subtitle">特定于客户的指派
							</div>
							
							<div class="title-description">只有制定的客户才可以看到特定于客户的联系人。您可以仅为与您有交易关系的客户指定特定于客户的联系人。客户会将这些联系人视为首选联系人。
							</div>
							
							<div class="adjust-10"></div>
							
							<div class="standard-subtitle">特定于客户的指派
							</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">客户</td>
										<td class="blue">标识符</td>
										<td class="blue">销售</td>
										<td class="blue">技术</td>
										<td class="blue">其他</td>
									</tr>
									<tr id="profile-row">
										<td><a href="">Lenovo</a></td>
										<td>CU10000134</td>
										<td></td>
										<td></td>
										<td></td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							
						</div>
						</form>
					</div>
					
					<%@ include file="profileR.jsp"%>
				</div>
				<div class="standard-ending">
					<div align="right" class="standard-ending-r">
						<button class="btn-b" form="editProfile" formaction="contact?turnto=save">保存</button>
						<button class="btn-w" onclick="window.location.href='profileClose'">关闭</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../other/supplierFooter.jsp"%>
	
	

</body>
</html>