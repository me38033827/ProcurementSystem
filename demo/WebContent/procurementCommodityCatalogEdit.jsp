<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../other/header1.jsp"%>
<%@include file="../other/header2.jsp"%>

</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding margin-bottom">
					<div class="page-main-title-btn">
						<button class="btn-w" onclick="window.location.href='procurementCommodityCatalogContent.jsp'">保存</button>
						<button class="btn-w">取消</button>
					</div>
					<div class="page-main-title">目录 - 编辑项目</div>
					<div class="margin-bottom">
						请复查此目录项中的错误。导致错误的字段已经添加了标志。<br>
					</div>
					<div class="border-bottom-grey">
						<table border="1" class="fulltab">
							<tr>
								<th colspan="2">&nbsp;字段名称</th>
								<th>&nbsp;字段值</th>
							</tr>
							<tr>
								<td colspan="2">Ariba 内部主协议识别符</td>

								<td><i>(该字段不可编辑。)</i></td>
							</tr>
							<tr>
								<td colspan="2">Ariba 内部合同可订购</td>
								<td><i>(该字段不可编辑。)</i></td>
							</tr>
							<tr>
								<td colspan="2">Company Code</td>
								<td><input type="text" class="input margin-input"
									value="CN25"><br></td>
							</tr>
							<tr>
								<td colspan="2">Contract Number</td>
								<td><input type="text" class="input margin-input"
									value="Dummy"><br></td>
							</tr>
							<tr>
								<td colspan="2">External Attributes Bitmask</td>
								<td><input type="text" class="input margin-input" value=""><br></td>
							</tr>
							<tr>
								<td colspan="2">GCM Email address</td>
								<td><input type="text" class="input margin-input"
									value="gcm.name@lenovo.com"><br></td>
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
									value="100"><br></td>
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
								<td><input type="text" class="input margin-input" value="1"></td>
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
								<td>0615SupplierA</td>
							</tr>
							<tr>
								<td colspan="2">供应商部件识别符</td>
								<td><input type="text" class="input margin-input"
									value="Catalog for test_8101"></td>
							</tr>
							<tr>
								<td colspan="2">供应商部件辅助识别符</td>
								<td><input type="text" class="input margin-input" value=""></td>
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
									value="27112700">&nbsp;&nbsp;&nbsp;&nbsp;
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
									value="43191504">&nbsp;&nbsp;&nbsp;&nbsp;
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
								<td><input type="text" class="input margin-input" value=""></td>
							</tr>
							<tr>
								<td colspan="2">制造商名称</td>
								<td><input type="text" class="input margin-input" value=""></td>
							</tr>
							<tr>
								<td colspan="2">制造商部件识别符</td>
								<td><input type="text" class="input margin-input" value=""></td>
							</tr>
							<tr>
								<td colspan="2">单位转换</td>
								<td><input type="text" class="input margin-input" value=""></td>
							</tr>
							<tr>
								<td colspan="2">危险品</td>
								<td><input type="text" class="input margin-input"
									value="FALSE"></td>
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
									value="12/31/2017">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a></td>
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
								<td><input type="text" class="input margin-input"
									value="Description for 8101"></td>
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
									value="42917">&nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a>
								</td>
							</tr>
							<tr>
								<td colspan="2">环保</td>
								<td><input type="text" class="input margin-input"
									value="TRUE"></td>
							</tr>
							<tr>
								<td colspan="2">目录名称</td>
								<td>catalog for test</td>
							</tr>
							<tr>
								<td colspan="2">简称</td>
								<td><input type="text" class="input margin-input"
									value="Description for 8101"></td>
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
									value="UN"> &nbsp;&nbsp;&nbsp;&nbsp;<a>【&nbsp;选择&nbsp;】</a></td>
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
						<button class="btn-w">保存</button>
						<button class="btn-w">取消</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>