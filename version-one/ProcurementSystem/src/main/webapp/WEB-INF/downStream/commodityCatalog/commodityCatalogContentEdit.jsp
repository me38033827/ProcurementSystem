<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../../other/header1.jsp"%>
<%@include file="../../other/header2.jsp"%>

</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding margin-bottom">
					<div class="page-main-title-btn">
						<button class="btn-b" type="submit"
							form="commodityCatalogContentModify">保存</button>
						<button class="btn-w" type="button"
							onclick="window.location.href='showCommodityCatalogContent?uniqueName=${commodity.commodityCatalog.uniqueName}'">取消</button>
					</div>
					<div class="page-main-title">目录 - 编辑项目</div>
					<div class="margin-bottom">
						请复查此目录项中的错误。导致错误的字段已经添加了标志。<br>
					</div>
					<form action="commodityCatalogContentModify" method="post"
						id="commodityCatalogContentModify">
						<div class="border-bottom-grey">

							<table border="1" class="fulltab">
								<tr>
									<th colspan="2">&nbsp;字段名称</th>
									<th>&nbsp;字段值</th>
								</tr>
								<tr>
									<td colspan="2">Company Code</td>
									<td><input type="text" class="input margin-input"
										name="companyCode"
										value="${requestScope.commodity.companyCode }"><br></td>
								</tr>
								<tr>
									<td colspan="2">Contract Number</td>
									<td><input type="text" class="input margin-input" name="contract.uniqueName"
										readonly
										value="C${requestScope.commodity.contract.uniqueName}"><br></td>
								</tr>
								<tr>
									<td colspan="2">External Attributes Bitmask</td>
									<td><input type="text" class="input margin-input" value=""><br></td>
								</tr>
								<tr>
									<td colspan="2">GCM Email address</td>
									<td><input type="text" class="input margin-input"
										name="gcmEmailAddress"
										value="${requestScope.commodity.gcmEmailAddress }"><span
										class="error-message">${Error_gcmEmailAddress}</span><br></td>
								</tr>
								<tr>
									<td colspan="2">HSN SAC</td>
									<td><input type="text" class="input margin-input" value=""><br></td>
								</tr>
								<tr>
									<td colspan="2">Minimum Quantity</td>
									<td><input type="text" class="input margin-input" value=""><br></td>
								</tr>
								<tr>
									<td colspan="2">Preferred Item</td>
									<td><input type="text" class="input margin-input" value=""><br></td>
								</tr>
								<tr>
									<td colspan="2">Subscription BaseId</td>
									<td><input type="text" class="input margin-input" value=""><br></td>
								</tr>
								<tr>
									<td colspan="2">仅在目录包中</td>
									<td><input type="text" class="input margin-input" value=""><br></td>
								</tr>
								<tr>
									<td rowspan="2" width="20%">价格</td>
									<td width="10%">货币</td>
									<td><input type="text" class="input margin-input"
										value="RMB" readonly>&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a><br></td>
								</tr>
								<tr>
									<td>金额</td>
									<td><input type="text" class="input margin-input"
										name="unitPrice" value="${commodity.unitPrice }"><br></td>
								</tr>
								<tr>
									<td rowspan="2">价格单位</td>
									<td>值</td>
									<td><input type="text" class="input margin-input"
										value="UNBox">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">删除值</button></td>
								</tr>
								<tr>
									<td>域</td>
									<td><input type="text" class="input margin-input"
										value="UN"></td>
								</tr>
								<tr>
									<td colspan="2">价格数量单位</td>
									<td><input type="text" class="input margin-input"
										value="1"></td>
								</tr>
								<tr>
									<td colspan="2">价格单位数量说明</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">供应商 URL</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">供应商名称</td>
									<td>${commodity.supplier.name }</td>

								</tr>
								<tr>
									<td colspan="2">供应商部件识别符</td>
									<td><input type="text" class="input margin-input"
										name="supplierPartId" value="${commodity.supplierPartId }"></td>
								</tr>
								<tr>
									<td colspan="2">供应商部件辅助识别符</td>
									<td><input type="text" class="input margin-input"
										name="supplierPartAuxiliaryId"
										value="${supplierPartAuxiliaryId }"></td>
								</tr>
								<tr>
									<td colspan="2">全尺寸图像</td>
									<td><input type="text" class="input margin-input" value="">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">刷新</button></td>
								</tr>
								<tr>
									<td colspan="2">内部生成的部件号</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td rowspan="4">分类代码</td>
									<td>值</td>
									<td><input type="text" class="input margin-input"
										name="spscCode" value="${commodity.spscCode }">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">删除值</button></td>
								</tr>
								<tr>
									<td>域</td>
									<td><input type="text" class="input margin-input"
										value="SPSC">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a></td>
								</tr>
								<tr>
									<td>值</td>
									<td><input type="text" class="input margin-input"
										value="">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">删除值</button></td>
								</tr>
								<tr>
									<td>域</td>
									<td><input type="text" class="input margin-input"
										value="UNSPSC_V13.5">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a></td>
								</tr>
								<tr>
									<td colspan="2"></td>
									<td><button class="btn-w margin-input">添加值</button></td>
								</tr>
								<tr>
									<td colspan="2">制造商 URL</td>
									<td><input type="text" class="input margin-input"
										name="manufacturerUrl" value="${commodity.manufacturerUrl }"></td>
								</tr>
								<tr>
									<td colspan="2">制造商名称</td>
									<td><input type="text" class="input margin-input"
										name="manufacturerName" value="${commodity.manufacturerName }"></td>
								</tr>
								<tr>
									<td colspan="2">制造商部件识别符</td>
									<td><input type="text" class="input margin-input"
										name="manufacturerPartId"
										value="${commodity.manufacturerPartId }"></td>
								</tr>
								<tr>
									<td colspan="2">单位转换</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">危险品</td>
									<td><input type="text" class="input margin-input"
										name="isHazardousMaterials"
										value="${commodity.isHazardousMaterials }"><span
										class="error-message">${Error_isHazardousMaterials}</span></td>
								</tr>
								<tr>
									<td colspan="2">可用地区</td>
									<td><input type="text" class="input margin-input" value="">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">删除值</button></td>
								</tr>
								<tr>
									<td colspan="2"></td>
									<td><button class="btn-w margin-input ">添加值</button></td>
								</tr>
								<tr>
									<td colspan="2">可用性</td>
									<td><input type="text" class="input margin-input" value="">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a></td>
								</tr>
								<tr>
									<td colspan="2">失效日期</td>
									<td><input type="text" class="input margin-input"
										name="expirationDate" value="${commodity.expirationDate }">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】<span
											class="error-message">${Error_expirationDate}</span></a></td>
								</tr>
								<tr>
									<td colspan="2">已筛选</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">已筛选预览</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">已部分指定</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">描述</td>
									<td><textArea class="input margin-input"
											style="width: 400px; height: 60px" name="itemDescription">${commodity.itemDescription }</textArea></td>
								</tr>
								<tr>
									<td colspan="2">晋升职级</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">最佳价格/最优项目</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">有效日期</td>
									<td><input type="text" class="input margin-input"
										name="effectiveDate" value="${commodity.effectiveDate }">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a><span
										class="error-message">${Error_effectiveDate}</span></td>
								</tr>
								<tr>
									<td colspan="2">环保</td>
									<td><input type="text" class="input margin-input"
										name="isGreen" value="${commodity.isGreen }"> <span
										class="error-message">${Error_isGreen }</span></td>
								</tr>
								<tr>
									<td colspan="2">目录名称</td>
									<td>${commodity.commodityCatalog.name }<input
										type="hidden" name="commodityCatalog.uniqueName"
										value="${commodity.commodityCatalog.uniqueName }"></td>

								</tr>
								<tr>
									<td colspan="2">简称</td>
									<td><textArea class="input margin-input"
											style="width: 400px; height: 60px" name="shortName">${commodity.shortName }</textArea><input
										type="hidden" name="uniqueName"
										value="${commodity.uniqueName }"></td>
								</tr>
								<tr>
									<td colspan="2">类型名称</td>
									<td>System:CatalogItem</td>
								</tr>
								<tr>
									<td colspan="2">缩略图</td>
									<td><input type="text" class="input margin-input" value="">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">刷新</button></td>
								</tr>
								<tr>
									<td rowspan="2">计量单位</td>
									<td>值</td>
									<td><input type="text" class="input margin-input"
										value="EA">&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="btn-w">删除值</button></td>
								</tr>
								<tr>
									<td>域</td>
									<td><input type="text" class="input margin-input"
										name="unitOfMeasure" value="${commodity.unitOfMeasure }">
										&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a></td>
								</tr>
								<tr>
									<td colspan="2">适用合同</td>
									<td><i> (该字段不可编辑。)</i></td>
								</tr>
								<tr>
									<td colspan="2">采购商部件识别符</td>
									<td><i> (该字段不可编辑。)</i></td>
								</tr>
								<tr>
									<td colspan="2">链接的采购商设施</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">链接的采购商部件</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">预览筛选名称</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
								<tr>
									<td colspan="2">默认相关性</td>
									<td><input type="text" class="input margin-input" value=""></td>
								</tr>
							</table>

							<br>
						</div>
						<div class="page-main-title-btn">
							<button class="btn-b" type="submit">保存</button>
							<button class="btn-w" type="button"
								onclick="window.location.href='commodityCatalogList'">取消</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>