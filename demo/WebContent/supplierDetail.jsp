<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>供应商详情界面</title>
<%@include file="other/header1.jsp"%>
<%@include file="other/header2.jsp"%>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="container" id="whole-container">


		<!-- 主要内容 -->

		<div class="right" id="supplier-detail-top">
			<table>
				<tr>
					<td class="text-right">任务：</td>
					<td>未完成的任务：4</td>
				</tr>
				<tr>
					<td class="text-right">当前阶段：</td>
					<td>初始阶段</td>
				</tr>
				<tr>
					<td class="text-right">下一里程碑：</td>
					<td>GCM创建新的供应商</td>
				</tr>
			</table>
		</div>

		<div id="searching-title-out-1">
			<div class="inline-b">
				<a class="black" id="searching-title">S21331</a> <a class="grey"
					id="supplier-detail-title">供应商工作区</a>
			</div>
		</div>



		<div id="order-detail-main">
			<div id="order-detail-line4">
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailSummary.jsp'">概述</button>
				<button class="order-detail-clicked"
					onclick="window.location.href='supplierDetail.jsp'">概要</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailReport.jsp'">报告</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailDoc.jsp'">文档</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailTask.jsp'">任务</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailTeam.jsp'">团队</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailInfo.jsp'">信息板</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailNews.jsp'">事件消息</button>
				<button class="order-detail-not-clicked"
					onclick="window.location.href='supplierDetailHistory.jsp'">历史记录</button>

			</div>



			<div class="inline-b filters full">
				<div class="half inline-b">
					<div class="invoice-detail-title">
						<a class="black">组织概要</a> <a class="right f-12">操作</a>
					</div>
					<table class="tab-height" id="supplier-crea-tab1">
						<tr>
							<td class="supplier-crea-tab-col1">组织名称：</td>
							<td class="supplier-crea-tab-col2">HP</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">供应商：</td>
							<td class="supplier-crea-tab-col2">是</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">简短描述：</td>
							<td class="supplier-crea-tab-col2">HP</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">创建人：</td>
							<td class="supplier-crea-tab-col2">用户3</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">客户：</td>
							<td class="supplier-crea-tab-col2">否</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">受管理：</td>
							<td class="supplier-crea-tab-col2">是</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">审批状态：</td>
							<td class="supplier-crea-tab-col2">已批准</td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">其他名称1：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">其他名称2：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">公司地址：</td>
							<td class="supplier-crea-tab-col2">北京市朝阳区</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">法定全称：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">股票交易代码：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">全球位置码：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">税款标识符：</td>
							<td class="supplier-crea-tab-col2">T12312</td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">州税款标识符：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">地区税款标识符：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">VAT标识符：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>

						<tr>
							<td class="supplier-crea-tab-col1">免缴预扣税：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">总机：</td>
							<td class="supplier-crea-tab-col2">66772211</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">主要电子邮件地址：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">其他地址：</td>
							<td class="supplier-crea-tab-col2">（无值）</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">供应的商品：</td>
							<td class="supplier-crea-tab-col2">Construction & Project
								Mgt 11%-Real estate rental serivce-china only</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">批准的商品：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">商品(UNSPSC)：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">标识符：</td>
							<td class="supplier-crea-tab-col2">ACM_2342</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">DUNS：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">首选语言：</td>
							<td class="supplier-crea-tab-col2">（无值）</td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">供应商集成状态：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">供应商系统名称：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
						<tr>
							<td class="supplier-crea-tab-col1">已阻止：</td>
							<td class="supplier-crea-tab-col2"></td>
						</tr>
					</table>
				</div>
				<div class="half inline-b right">
					<div class="inline-b tab-height" id="supplier-crea-tab2">
						<div class="inline-b filters full">
							<div class="invoice-detail-title full">
								<a class="black">用户</a>
							</div>
							<table class="fulltab">
								<tr class="searching-tab-row1">
									<td><label> <input type="checkbox"
											class="checkboxes" value="" />
									</label></td>
									<td>标识符</td>
									<td>名称</td>
									<td>电子邮件地址</td>
									<td>业务电话</td>
									<td>状态</td>
								</tr>
								<tr class="searching-tab-row2">
									<td colspan="6" style="text-align: center;">无项目</td>
								</tr>
							</table>
							<div class="supplier-btns">
								<button class="btn-w">管理用户</button>
								<button class="btn-w">创建用户</button>
							</div>

						</div>

						<div class="inline-b tab-height" id="supplier-crea-tab2">
							<div class="inline-b filters full">
								<div class="invoice-detail-title full">
									<a class="black">业务联系人</a>
								</div>
								<table class="fulltab">
									<tr class="searching-tab-row1">
										<td><label> <input type="checkbox"
												class="checkboxes" value="" />
										</label></td>
										<td>名称</td>
										<td>电子邮件地址</td>
										<td>电话号码</td>
										<td>状态</td>
									</tr>
									<tr class="searching-tab-row2">
										<td colspan="5" style="text-align: center;">无项目</td>
									</tr>
								</table>
								<div class="supplier-btns">
									<button class="btn-w">添加／删除</button>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="fulltab">
					<div class="invoice-detail-title">
						<a class="black">概要问卷</a>
					</div>
					<div>
						<table class="fulltab">
							<tr class="searching-tab-row1">
								<td>名称</td>
							</tr>
						</table>
					</div>
					<div id="approval-tab">
						<table class="fulltab" id="supplier-tab-bot">
							<tr class="searching-tab-row2">
								<td>1 公司信息</td>
								<td></td>
							</tr>
							<tr class="searching-tab-row2">
								<td>1.1 公司名称</td>
								<td>HP</td>
							</tr>
							<tr class="searching-tab-row2">
								<td>1.2 请简要介绍一下贵公司</td>
								<td>教育培训</td>
							</tr>
							<tr class="searching-tab-row2">
								<td>1.3 您有多少长期员工</td>
								<td>200</td>
							</tr>
							<tr class="searching-tab-row2">
								<td>1.3 贵公司创办于哪一年</td>
								<td>1998</td>
							</tr>
							<tr class="searching-tab-row2">
								<td>2 所有权信息</td>
								<td></td>
							</tr>
							<tr class="searching-tab-row2">
								<td>2.1 妇女所有企业证书</td>
								<td></td>
							</tr>
							<tr class="searching-tab-row2">
								<td>1.3 您有多少长期员工</td>
								<td><input class="form-control input" /></td>
							</tr>
							<tr class="searching-tab-row2">
								<td>1.3 您有多少长期员工</td>
								<td><input class="form-control input" /></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->

	<%@ include file="other/footer.jsp"%>

</body>
</html>
