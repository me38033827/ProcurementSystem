<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1return.jsp"%>
<script src="/ProcurementSystem/js/simTree.js"></script>
<script src="/ProcurementSystem/js/simQuestionnaire.js"></script>
<title>供应商详情－概要</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
			<!-- 主要内容 -->
		
				<!-- supplier detail title -->
				<div class="p2p-supplier-title">
					<div class="left">
						<a class="p2p-supplier-title-main">${supplier.name}</a><br>
						<a class="p2p-supplier-subtitle">供应商工作区</a>
					</div>
					
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
				</div>
			
				<div class="tag-line">
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailSummary'">概述</button>
					<button class="tag-clicked"
						onclick="window.location.href='supplierDetail'">概要</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailReport'">报告</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailDoc'">文档</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTask'">任务</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailTeam'">团队</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailInfo'">信息板</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailNews'">事件消息</button>
					<button class="tag-not-clicked"
						onclick="window.location.href='supplierDetailHistory'">历史记录</button>
				</div>
				
				<div class="adjust-10"></div>
	
				<div class="row">
					<div class="col-md-6">
						<div class="standard-subtitle">组织概要
							<div class="btn-group right">
								<button class="btn-ma" data-toggle="dropdown">
									操作&nbsp;<span class="caret"></span>
								</button>
								<ul class="dropdown-menu" style="width:120px;">
									<li><a class="manu-deactive">编辑</a></li>
									<li><a class="manu-active" href="editSupplierDetail?id=<%=request.getSession().getAttribute("uniqueName") %>">&nbsp;&nbsp;概要</a></li>
									<li><a class="manu-deactive" >查看</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;组织标识符</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;厂商密钥</a></li>
									<li><a class="manu-deactive" >供应商集成</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;启用</a></li>
									<li><a class="manu-deactive" >更改审批状态</a></li>
									<li><a class="manu-active" href="">&nbsp;&nbsp;拒绝</a></li>
								</ul>
							</div>
						</div>
						<table class="tab-height" id="supplier-crea-tab1"  style="margin-left:80px;">
							<tr>
								<td class="col-standard1">组织名称：</td>
								<td class="col-standard2">${supplier.name}</td>
							</tr>
							<tr>
								<td class="col-standard1">供应商：</td>
								<td class="col-standard2">${supplier.isSupplier}</td>
							</tr>
							<tr>
								<td class="col-standard1">简短描述：</td>
								<td class="col-standard2">${supplier.description}</td>
							</tr>
							<tr>
								<td class="col-standard1">创建人：</td>
								<td class="col-standard2">${supplier.creator.name}</td>
							</tr>
							<tr>
								<td class="col-standard1">客户：</td>
								<td class="col-standard2">${supplier.isClient}</td>
							</tr>
							<tr>
								<td class="col-standard1">受管理：</td>
								<td class="col-standard2">${supplier.manage}</td>
							</tr>
							<tr>
								<td class="col-standard1">审批状态：</td>
								<td class="col-standard2">${supplier.approveState}</td>
							</tr>
	
							<tr>
								<td class="col-standard1">其他名称1：</td>
								<td class="col-standard2">${supplier.otherName1}</td>
							</tr>
	
							<tr>
								<td class="col-standard1">其他名称2：</td>
								<td class="col-standard2">${supplier.otherName2}</td>
							</tr>
							<tr>
								<td class="col-standard1">法定全称：</td>
								<td class="col-standard2">${supplier.fullNameByLaw}</td>
							</tr>
							<tr>
								<td class="col-standard1">股票交易代码：</td>
								<td class="col-standard2">${supplier.stockCode}</td>
							</tr>
							<tr>
								<td class="col-standard1">总机：</td>
								<td class="col-standard2">${supplier.switchboard}</td>
							</tr>
							<tr>
								<td class="col-standard1">主要电子邮件地址：</td>
								<td class="col-standard2">${supplier.mainEmail}</td>
							</tr>
							<tr>
								<td class="col-standard1">其他地址：</td>
								<td class="col-standard2">${supplier.otherAddress}</td>
							</tr>
							<tr>
								<td class="col-standard1">主要传真：</td>
								<td class="col-standard2">${supplier.mainFax}</td>
							</tr>
							<tr>
								<td class="col-standard1">商品(UNSPSC)：</td>
								<td class="col-standard2"><%-- ${supplier.UNSPSCCommodity} --%></td>
							</tr>
							<tr>
								<td class="col-standard1">标识符：</td>
								<td class="col-standard2">SU<%=request.getSession().getAttribute("uniqueName") %></td>
							</tr>
							<tr>
								<td class="col-standard1">DUNS：</td>
								<td class="col-standard2">${supplier.duns}</td>
							</tr>
							<tr>
								<td class="col-standard1">供应商集成状态：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">供应商系统名称：</td>
								<td class="col-standard2"></td>
							</tr>
							<tr>
								<td class="col-standard1">已阻止：</td>
								<td class="col-standard2"></td>
							</tr>
						</table>
					</div>
					<div class="col-md-6">
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">用户
									<div class="btn-group right">
									</div>
								</div>
								<div class="adjust-10"></div>
								<div>
									<table class="table table-hover">
										<tr class="standard-row1">
											<td style="padding:5px;">
												<input type="checkbox" id="chk-sup-de1" class="chk" /><label for="chk-sup-de1"></label>
											</td>
											<td>标识符</td>
											<td>名称</td>
											<td>电子邮件地址</td>
											<td>业务电话</td>
											<td>状态</td>
										</tr>
										<tr>
											<td colspan="6" class="no-item">无项目</td>
										</tr>
										<tr class="standard-row3">
											<td colspan="6">
												<button class="btn-w">管理用户</button>
												<button class="btn-w">创建用户</button>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
						
						<div class="adjust-10"></div>
						<div class="adjust-10"></div>
						
						<div class="inline-b tab-height full">
							<div class="inline-b filters full">
								<div class="standard-subtitle">业务联系人
								</div>
								<div class="adjust-10"></div>
								<div>
									<table class="table table-hover">
										<tr class="standard-row1">
											<td style="padding:5px;">
												<input type="checkbox" id="chk-sup-de3" class="chk" /><label for="chk-sup-de3"></label>
											</td>
											<td>名称</td>
											<td>电子邮件地址</td>
											<td>电话号码</td>
											<td>状态</td>
										</tr>
										<tr>
											<td colspan="5" class="no-item">无项目</td>
										</tr>
										<tr class="standard-row3">
											<td colspan="6">
												<button class="btn-w">添加／删除</button>
											</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-md-12">
						<div class="standard-subtitle">概要问卷
						</div>
						
						<!-- 问卷内容 -->
						<div style="border:1px solid #ddd; max-height:500px; overflow-x:scroll;">
				          <div id="treeview-sim" class=""></div>
				        </div>
					</div>
				</div>
			</div> 
		</div>
	</div>
	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="../../other/supplierFooter.jsp"%>

	<script>
		function back(){
			location.href="../search/supplierSearchDistribute?page=2005";
		}
		$(function(){
 	        var defaultData = ${treeData};
 	        $('#treeview-sim').treeview({
 	          data: defaultData
 	        });
		})
	</script>
</body>
</html>
