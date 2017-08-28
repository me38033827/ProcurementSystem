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
						<div class="standard-title-main">创建新的供应商</div> 
						<div class="standard-title-r">
							<button class="btn-b">确定</button>
							<button class="btn-w">取消</button>
						</div>
					</div>
					
					<div class="tag-line">
						<button class="tag-clicked">概要</button>
					</div>
					
					<div class="adjust-10"></div>
					
					<div class="standard-subtitle">组织概要</div>
					<form action="supplierAnalyze" method="post">
						<div class="row">
							<div class="col-md-5">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">＊组织名称：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">简短描述：</td>
										<td class="col-standard2"><textarea
												class="form-control" id="pr-textarea"></textarea></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">供应商：</td>
										<td class="col-standard2">是</td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">客户：</td>
										<td class="col-standard2">
											<div class="radio">
												<label><input type="radio" name="empty"
													id="optionsRadios1" value="option1">是</label> <label><input
													type="radio" name="empty" id="optionsRadios2" value="option2"
													checked>否</label>
											</div>
										</td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">审批状态：</td>
										<td class="col-standard2"><select id="my-select">
												<option>已批准</option>
												<option>选项1</option>
												<option>选项2</option>
										</select></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">其他名称1：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">其他名称2：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">法定全称：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">股票交易代码：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">全球位置码：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">税款标识符：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">州税款标识符：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">地区税款标识符：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">VAT标识符：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
			
									<tr class="row-standard">
										<td class="col-standard1">免缴预扣税：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">供应的商品：</td>
										<td class="col-standard2">（选择一个值）［&nbsp;<a
											class="blue inline-b choose" href="javascript:;">选择</a>&nbsp;］
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">批准的商品：</td>
										<td class="col-standard2">（选择一个值）［&nbsp;<a
											class="blue inline-b">选择</a>&nbsp;］
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">商品(UNSPSC)：</td>
										<td class="col-standard2">（选择一个值）［&nbsp;<a
											class="blue inline-b">选择</a>&nbsp;］
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">公司所在州／省：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">供应商集成状态：</td>
										<td class="col-standard2"></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">供应商系统名称：</td>
										<td class="col-standard2"></td>
									</tr>
								</table>
							</div>
							<div class="col-md-5">
								<table class="fulltab">
									<tr class="row-standard">
										<td class="col-standard1">其他地址：</td>
										<td class="col-standard2" style="width: 170px;">（选择一个值）［&nbsp;<a
											class="blue inline-b">选择</a>&nbsp;］
										</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">＊总机：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">主要传真：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">主要电子邮件地址：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">公司URL：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">标识符：</td>
										<td class="col-standard2">ACM_2342</td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">首选语言：</td>
										<td class="col-standard2"><select id="my-select">
												<option>(无值)</option>
												<option>选项1</option>
												<option>选项2</option>
										</select></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">组织类型：</td>
										<td class="col-standard2"><input
											class="form-control input" /></td>
									</tr>
									<tr class="row-standard">
										<td class="col-standard1">父级：</td>
										<td class="col-standard2"><select id="my-select">
												<option>(无值)</option>
												<option>选项1</option>
												<option>选项2</option>
										</select></td>
									</tr>
								</table>
							</div>
						</div>
					</form>
					
					<div >
						
			
						<div class="inline-b filters">
							<div class="half inline-b">
								<table class="tab-height" id="supplier-crea-tab1">
									
								</table>
							</div>
							<div class="half inline-b right">
								<div class="inline-b tab-height" id="supplier-crea-tab2">
									<table>
										<tr>
											<td class="col-standard1">其他地址：</td>
											<td class="col-standard2" style="width: 170px;">（选择一个值）［&nbsp;<a
												class="blue inline-b">选择</a>&nbsp;］
											</td>
										</tr>
			
										<tr>
											<td class="col-standard1">＊总机：</td>
											<td class="col-standard2"><input
												class="form-control input" /></td>
										</tr>
										<tr>
											<td class="col-standard1">主要传真：</td>
											<td class="col-standard2"><input
												class="form-control input" /></td>
										</tr>
										<tr>
											<td class="col-standard1">主要电子邮件地址：</td>
											<td class="col-standard2"><input
												class="form-control input" /></td>
										</tr>
										<tr>
											<td class="col-standard1">公司URL：</td>
											<td class="col-standard2"><input
												class="form-control input" /></td>
										</tr>
										<tr>
											<td class="col-standard1">标识符：</td>
											<td class="col-standard2">ACM_2342</td>
										</tr>
										<tr>
											<td class="col-standard1">首选语言：</td>
											<td class="col-standard2"><select id="my-select">
													<option>(无值)</option>
													<option>选项1</option>
													<option>选项2</option>
											</select></td>
										</tr>
										<tr>
											<td class="col-standard1">组织类型：</td>
											<td class="col-standard2"><input
												class="form-control input" /></td>
										</tr>
										<tr>
											<td class="col-standard1">父级：</td>
											<td class="col-standard2"><select id="my-select">
													<option>(无值)</option>
													<option>选项1</option>
													<option>选项2</option>
											</select></td>
										</tr>
									</table>
								</div>
							</div>
						</div>
			
			
			
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
									<td></td>
								</tr>
								<tr class="searching-tab-row2">
									<td>1.3 贵公司创办于哪一年</td>
									<td></td>
								</tr>
								<tr class="searching-tab-row2">
									<td>2 所有权信息</td>
									<td></td>
								</tr>
								<tr class="searching-tab-row2">
									<td>2.1 妇女所有企业证书</td>
									<td></td>
								</tr>
			
							</table>
						</div>
						<div>
							<table class="fulltab">
								<tr class="searching-tab-row3">
									<td colspan="2">
										<div align="right">
											<button class="btn-b">确定</button>
											<button class="btn-w"
												onclick="window.location.href='supplierSearching.jsp'">取消</button>
										</div>
									</td>
								</tr>
							</table>
						</div>
			
					</div>
				</div>
				<div class="theme-popover">
					<div class="popover-container">
						<!-- 弹窗第一行  -->
						<div class="row">
							<div class="col-md-7">
								<div class="small-window-title">选择供应的商品</div>
								<br />
								<div class="small-window-subtitle">添加到当前所选项</div>
								<div>
									<div class="inline-b left" id="search-service"
										style="postion: relative; left: 20px;">
										<select id="my-select">
											<option>名称</option>
											<option>标识符</option>
										</select>
									</div>
									<!-- 第三行搜索框 -->
									<div style="position: relative; left: 10px;">
										<input type="text" class="inline-b border-g left "
											style="top: 0px;">
										<button class="btn btn-default inline-b border-g left"
											id="search-btn" style="top: 0px;">
											<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
										</button>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<a href="javascript:;" title="关闭" class="close">×</a> <br /> <br />
								<br />
								<div class="small-window-subtitle">当前所选</div>
			
							</div>
						</div>
						<!-- 弹窗第二行  -->
						<div class="row">
							<div class="col-md-7">
								<div class="table-container">
									<table class="table table-hover">
										<tr class="calendar-head">
											<th width="5%"><input type="checkbox" value="option1"></th>
											<th width="75%">名称&#8593;</th>
											<th width="20%">标识符</th>
										</tr>
									</table>
									<div id="sourcing-tab" style="border-bottom: 2px solid #ddd">
										<table class="table table-hover">
											<!-- 顶级第一行 -->
											<tr>
												<td width="5%"><input type="checkbox" value="option1"></td>
												<td width="75%">&nbsp;&nbsp;生产相关的服务测试</td>
												<td width="20%"></td>
											</tr>
											<!-- 顶级第二行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td><a href="#"><span
														class="glyphicon glyphicon-triangle-bottom"
														aria-hidden="true"></span></a>所有商品</td>
												<td>ALL</td>
											</tr>
											<!-- 顶级第三行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:;"
													id="72000000"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Building and Facility Construction and Maintenance Services
												</td>
												<td>72000000</td>
											</tr>
											<tr id="72000000-children">
												<td colspan="3" style="padding: 0px;"><table
														class="table-nest table table-hover">
														<tr>
															<td width="10%"><input type="checkbox" value="option1"></td>
															<td width="75%">Construction & Project Mgt 11%-Real
																estate rental serivce-china only</td>
															<td width="20%">72000001</td>
														</tr>
														<tr>
															<td><input type="checkbox" value="option1"></td>
															<td>Construction & Project Mgt 17%-Hardware-china only</td>
															<td>72000002</td>
														</tr>
														<tr>
															<td><input type="checkbox" value="option1"></td>
															<td>Construction & Project Mgt 6%-Consulting fee-china
																only</td>
															<td>72000003</td>
														</tr>
													</table></td>
											</tr>
											<!-- 顶级第五行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Business Services
												</td>
												<td>Business Services</td>
											</tr>
											<!-- 顶级第六行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Editorial and Design and Graphic and Fine Art Services
												</td>
												<td>82000000</td>
											</tr>
											<!-- 顶级第七行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Engineering and Research and Technology Based Services
												</td>
												<td>81000000</td>
											</tr>
											<!-- 顶级第八行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Entertainment Svcs
												</td>
												<td>90000000</td>
											</tr>
											<!-- 顶级第九行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Environmental Services
												</td>
												<td>77000000</td>
											</tr>
											<!-- 顶级第十行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right" aria-hidden="true"></span></a>
													Financial Svcs
			
												</td>
												<td>84000000</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="table-container">
									<table class="table table-hover"
										style="border-bottom: 1px solid #ddd">
										<tr class="calendar-head">
											<th width="5%"><input type="checkbox" value="option1"></th>
											<th width="75%">名称&#8595;</th>
											<th width="20%">标识符</th>
										</tr>
										<tr>
											<td colspan="3" style="text-align: center">无项目</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!--第三行  -->
					<div class="row">
						<div class="col-md-12">
							<button class="btn-b small-window-button"
								onclick="window.location.href='supplierCreation1.jsp#position'">完成</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="theme-popover-mask"></div>

	<%@ include file="../../other/footer.jsp"%>
	<!-- CONTENT-WRAPPER SECTION END-->
	<script>
		jQuery(document)
				.ready(
						function($) {
							$('.choose').click(function() {
								$('.theme-popover-mask').fadeIn(100);
								$('.theme-popover').slideDown(200);
							})

							$('.popover-container .close').click(function() {
								$('.theme-popover-mask').fadeOut(100);
								$('.theme-popover').slideUp(200);
							})
							$('#test').click(function() {
								$(this).hide();
							});
							$('#72000000-children').hide();
							$('#72000000')
									.click(
											function() {
												$('#72000000-children')
														.toggle();
												if ($('#72000000').children()
														.attr("class") == "glyphicon glyphicon-triangle-right")
													$('#72000000')
															.children()
															.attr("class",
																	"glyphicon glyphicon-triangle-bottom");
												else {
													$('#72000000')
															.children()
															.attr("class",
																	"glyphicon glyphicon-triangle-right");
												}
											})
						})
	</script>

</body>
</html>
