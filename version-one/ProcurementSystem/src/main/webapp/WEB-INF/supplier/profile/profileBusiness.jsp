<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要－商务</title>
<%@include file="../../other/supplierHeader1.jsp"%>

</head>
<body>
	<div class="content">
		<div class="container">
			<div  class="standard-out">
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
							<button class="tag-clicked" onclick="window.location.href='profileBusiness'">商务</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileMarket'">营销</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileContact'">联系人</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileAuth'">认证</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileCustomer'">请求的客户</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileDoc'">其他文档</button>
						</div>
						
						<div class="profile-left">
							<div class="title-description">＊表示必填字段</div>
							
							<div class="standard-subtitle">商业信息</div>
							
							<div class="adjust-left-80">
								<table>
									<tr class="row-standard">
										<td class="col-standard1">成立年份：</td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">员工数量：</td>
										<td class="col-standard2"><input class="form-control input"/></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1 bold">年营业额：</td>
										<td class="col-standard2">
											<select id="my-select">
													<option></option>
													<option>少于5万CNY</option>
													<option>5万－10万CNY</option>
													<option>10万－100万CNY</option>
													<option>100万－500万CNY</option>
													<option>500万－1000万CNY</option>
													<option>1000万－5000万CNY</option>
													<option>5000万－1亿CNY</option>
													<option>1亿万－5亿CNY</option>
													<option>5亿万－10亿CNY</option>
													<option>10亿CNY以上</option>
											</select>
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">股票交易代码：</td>
										<td class="col-standard2"><input class="form-control input" name="stockCode" value="${supplierSession.stockCode}"/></td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="standard-subtitle">财务信息</div>
							
							<div class="adjust-left-80">
								<table>
									<tr class="row-standard">
										<td class="col-standard1">供应商法律形式：</td>
										<td class="col-standard2">
											<select id="my-select">
													<option></option>
													<option>有限公司</option>
													<option>独资企业</option>
													<option>非营利组织</option>
													<option>合资企业</option>
											</select>
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">D-U-N-S编号：</td>
										<td class="col-standard2"></td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="standard-subtitle">税务信息</div>
							
							<div class="adjust-left-80">
								<table>
									<tr class="row-standard">
										<td class="col-standard1">税号：</td>
										<td class="col-standard2">
											<input class="form-control input inline-b"/>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="standard-subtitle">股东</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="padding:5px;">
											<input type="checkbox" id="chk-bus15" class="chk" /><label for="chk-bus15"></label>
										</td>
										<td>名称</td>
										<td>股份百分比</td>
										<td>类型</td>
									</tr>
									<tr>
										<td class="no-item" colspan="4">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="4">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">编辑</button>
											<button class="btn-w">删除</button>
											｜
											<button class="btn-w">创建</button>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							
							<div class="standard-subtitle">董事会</div>
							
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td style="padding:5px;">
											<input type="checkbox" id="chk-bus18" class="chk" /><label for="chk-bus18"></label>
										</td>
										<td>成员名称</td>
										<td>公司名称</td>
										<td>业务职称</td>
									</tr>
									<tr>
										<td class="no-item" colspan="4">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="4">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">编辑</button>
											<button class="btn-w">删除</button>
											｜
											<button class="btn-w">创建</button>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							<div class="standard-subtitle">企业类型</div>
							
							<div>
								<table class="fulltab">
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus1" class="chk" /><label for="chk-bus1"></label>
										</td>
										<td class="bus-col2" valign="middle">中间商</td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus2" class="chk" /><label for="chk-bus2"></label>
										</td>
										<td class="bus-col4" valign="middle">零售商</td>
									</tr>
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus3" class="chk" /><label for="chk-bus3"></label>
										</td>
										<td class="bus-col2" valign="middle">分包商／顾问</td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus4" class="chk" /><label for="chk-bus4"></label>
										</td>
										<td class="bus-col4" valign="middle">销售代理／制造代表</td>
									</tr>
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus5" class="chk" /><label for="chk-bus5"></label>
										</td>
										<td class="bus-col2" valign="middle">分销商／批发商</td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus6" class="chk" /><label for="chk-bus6"></label>
										</td>
										<td class="bus-col4" valign="middle">服务提供商</td>
									</tr>
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus7" class="chk" /><label for="chk-bus7"></label>
										</td>
										<td class="bus-col2" valign="middle">政府／公共机构</td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus8" class="chk" /><label for="chk-bus8"></label>
										</td>
										<td class="bus-col4" valign="middle">系统集成商</td>
									</tr>
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus9" class="chk" /><label for="chk-bus9"></label>
										</td>
										<td class="bus-col2" valign="middle">制造商</td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus10" class="chk" /><label for="chk-bus10"></label>
										</td>
										<td class="bus-col4" valign="middle">运输／物流</td>
									</tr>
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus11" class="chk" /><label for="chk-bus11"></label>
										</td>
										<td class="bus-col2" valign="middle">其他<input class="form-control input inline-b" id="profile-other"/></td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus12" class="chk" /><label for="chk-bus12"></label>
										</td>
										<td class="bus-col4" valign="middle">公用事业</td>
									</tr>
									<tr>
										<td class="bus-col1"><input type="checkbox" id="chk-bus13" class="chk" /><label for="chk-bus13"></label>
										</td>
										<td class="bus-col2" valign="middle">生产商</td>
										<td class="bus-col3"><input type="checkbox" id="chk-bus14" class="chk" /><label for="chk-bus14"></label>
										</td>
										<td class="bus-col4" valign="middle">增值经销商</td>
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