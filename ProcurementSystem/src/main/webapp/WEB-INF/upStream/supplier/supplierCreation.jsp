<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>

<title>创建供应商界面</title>
<script>
	function addMultipleChoice() {
		$
				.ajax({
					data : {
						"question" : $("#question-m").val(),
						"a" : $("#a").val(),
						"b" : $("#b").val(),
						"c" : $("#c").val(),
						"d" : $("#d").val(),
						"supplierId" : $("#uniqueName").val()
					},
					type : "POST",
					dataType : 'json',
					url : "addMultipleQuestion",
					success : function(data) {
						$("#count").val($("#count") + 1);
						$("#more-q")
								.append(
										"<tr>"
												+ "<td class=\"question-3\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
												+ data.question
												+ "</td>"
												+ "<td>"
												+ "<select  style=\"height:30px;width:80px;\" name=\"question"+data.id+"\">"
												+ "<option>" + data.a
												+ "</option>" + "<option>"
												+ data.b + "</option>"
												+ "<option>" + data.c
												+ "</option>" + "<option>"
												+ data.d + "</option>"
												+ "</select>" + "</td>"
												+ "</tr>");
					},
					error : function(data) {
						alert("error");
					}
				});
		cancel();
	}
	function mShow() {
		$("#multiple-choice").show();
		$("#blank").hide();
	}
	function bShow() {
		$("#multiple-choice").hide();
		$("#blank").show();
	}
	function addQuestion() {
		$('.theme-popover-mask.question').fadeIn(100);
		$('.theme-popover.question').slideDown(200);
	}
	function cancel() {
		$('.theme-popover-mask.question').fadeOut(100);
		$('.theme-popover.question').slideUp(200);
		$("#question-m").val("");
		$("#a").val("");
		$("#b").val("");
		$("#c").val("");
		$("#d").val("");
	}
</script>
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
						<button form="supplierCreation" class="btn-b">确定</button>
						<button class="btn-w"
							onclick="window.location.href='supplierSearch?action=back'">取消</button>
					</div>
				</div>

				<div class="tag-line">
					<button class="tag-clicked">概要</button>
				</div>

				<div class="adjust-10"></div>

				<div class="standard-subtitle">组织概要</div>
				<form id="supplierCreation" action="supplierAnalyze" method="post">
					<div class="row">
						<div class="col-md-5">
							<table class="fulltab" style="margin-left: 80px;">
								<tr class="row-standard">
									<td class="col-standard1">＊组织名称：</td>
									<td class="col-standard2"><input
										class="form-control input" name="name" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1" valign="top">简短描述：</td>
									<td class="col-standard2"><textarea class="form-control"
											id="pr-textarea" name="description"
											style="border: 1px solid #428bca; border-radius: 0;"></textarea></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">供应商：</td>
									<td class="col-standard2">是</td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">客户：</td>
									<td class="col-standard2">
										<div class="radio">
											<label><input type="radio" name="isClient"
												id="optionsRadios1" value="是">是</label> <label><input
												type="radio" name="isClient" id="optionsRadios2" value="否"
												checked>否</label>
										</div>
									</td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">审批状态：</td>
									<td class="col-standard2"><select id="my-select"
										name="approveState">
											<option>已批准</option>
											<option>未批准</option>
									</select></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">其他名称1：</td>
									<td class="col-standard2"><input
										class="form-control input" name="otherName1" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">其他名称2：</td>
									<td class="col-standard2"><input
										class="form-control input" name="otherName2" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">法定全称：</td>
									<td class="col-standard2"><input name="fullNameByLaw"
										class="form-control input" /></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1">股票交易代码：</td>
									<td class="col-standard2"><input name="stockCode"
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
									<td class="col-standard2"><input name="province"
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
									<td class="col-standard2"><input name="switchboard"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">主要传真：</td>
									<td class="col-standard2"><input name="mainFax"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">主要电子邮件地址：</td>
									<td class="col-standard2"><input name="mainEmail"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">公司URL：</td>
									<td class="col-standard2"><input name="corporateUrl"
										class="form-control input" /></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">标识符：</td>
									<td class="col-standard2">SU<%=request.getAttribute("uniqueName")%>
										<input type="hidden" id="uniqueName" name="uniqueName"
										value=<%=request.getAttribute("uniqueName")%>>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">组织类型：</td>
									<td class="col-standard2"><input name="organizationType"
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

					<div class="standard-subtitle">概要问卷</div>
					<div>
						<table class="table table-hover">
							<tr class="standard-row1">
								<td style="width: 75%;">名称</td>
								<td style="width: 25%;">答案</td>
							</tr>
						</table>
					</div>
					<div class="roll-tab" style="max-height: 240px;" id="question">
						<table class="table table-hover" id="more-q">
							<tr>
								<td class="question-1" style="width: 75%;"><b><span
										class="glyphicon glyphicon-triangle-bottom blue f-12"
										aria-hidden="true"></span> &nbsp;1&nbsp;&nbsp;&nbsp;公司信息</b></td>
								<td style="width: 25%;"></td>
							</tr>
							<tr>
								<td class="question-1-1">1.1&nbsp;&nbsp;&nbsp;&nbsp;公司名称</td>
								<td style="padding: 5px;"><input class="form-control input" />
								</td>
							</tr>
							<tr>
								<td class="question-1-1">1.2&nbsp;&nbsp;&nbsp;&nbsp;请简要介绍一下贵公司</td>
								<td style="padding: 5px;"><input class="form-control input" /></td>
							</tr>
							<tr>
								<td class="question-1-1">1.3&nbsp;&nbsp;&nbsp;&nbsp;贵公司创办于哪一年</td>
								<td style="padding: 5px;"><input class="form-control input" /></td>
							</tr>
							<tr>
								<td class="question-1"><b><span
										class="glyphicon glyphicon-triangle-bottom blue f-12"
										aria-hidden="true"></span> &nbsp;2&nbsp;&nbsp;&nbsp;所有权信息</b></td>
								<td></td>
							</tr>
							<tr>
								<td class="question-2"><b><span
										class="glyphicon glyphicon-triangle-bottom blue f-12"
										aria-hidden="true"></span> &nbsp;2.1&nbsp;&nbsp;&nbsp;妇女所有企业证书</b></td>
								<td></td>
							</tr>
							<tr>
								<td class="question-3">2.1.1&nbsp;&nbsp;&nbsp;妇女所有企业证书</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-2"><b><span
										class="glyphicon glyphicon-triangle-bottom blue f-12"
										aria-hidden="true"></span>
										&nbsp;2.2&nbsp;&nbsp;&nbsp;少数族裔所有企业证书</b></td>
								<td></td>
							</tr>
							<tr>
								<td class="question-3">2.2.1&nbsp;&nbsp;&nbsp;您是否通过少数族裔所有企业认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.2&nbsp;&nbsp;&nbsp;您是否通过
									NMSDC（全国少数族裔供应商发展理事会）认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.3&nbsp;&nbsp;&nbsp;您是否通过小型企业管理认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.4&nbsp;&nbsp;&nbsp;您是否通过州政府认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.5&nbsp;&nbsp;&nbsp;您是否通过所在地/机构认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.6&nbsp;&nbsp;&nbsp;您是否为自我认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.7&nbsp;&nbsp;&nbsp;其他认证</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.2.8&nbsp;&nbsp;&nbsp;您是否通过环球国际认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-2"><b><span
										class="glyphicon glyphicon-triangle-bottom blue f-12"
										aria-hidden="true"></span> &nbsp;2.3&nbsp;&nbsp;&nbsp;小型企业证书</b></td>
								<td></td>
							</tr>
							<tr>
								<td class="question-3">2.3.1&nbsp;&nbsp;&nbsp;您是否通过小型企业认证？</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-2"><b><span
										class="glyphicon glyphicon-triangle-bottom blue f-12"
										aria-hidden="true"></span>
										&nbsp;2.4&nbsp;&nbsp;&nbsp;退伍军人所有企业证书</b></td>
								<td></td>
							</tr>
							<tr>
								<td class="question-3">2.4.1&nbsp;&nbsp;&nbsp;您是否通过退伍军人所有企业认证?</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.4.2&nbsp;&nbsp;&nbsp;您是否通过残疾退伍军人所有企业认证?</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
							<tr>
								<td class="question-3">2.4.3&nbsp;&nbsp;&nbsp;您是否通过越战退伍军人所有企业认证?</td>
								<td><select style="height: 30px;">
										<option>否</option>
										<option>是</option>
										<option>未指定</option>
								</select></td>
							</tr>
						</table>
					</div>
					<input value="0" id="count" hidden="hidden" />
				</form>

				<div>
					<table class="table table-hover">
						<tr class="standard-row3">
							<td colspan="2">&#8627;
								<button class="btn-w" style="width: 150px;"
									onclick="addQuestion();">添加自定义问题</button> <!-- <div class="btn-group inline-b" role="group">
										<button type="button" style="width:150px;"
											class="btn-w dropdown-toggle"
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											创建自定义问题&nbsp;<span class="caret"></span>
										</button>
										<ul class="dropdown-menu my-dropdown">
											<li><a class="secondline-right" href="addMultipleChoice();">选择题</a></li>
											<li><a class="secondline-right" >填空题</a></li>
										</ul>
									</div> -->
								<div class="right">
									<button form="supplierCreation" class="btn-b">确定</button>
									<button class="btn-w"
										onclick="window.location.href='supplierSearch?action=back'">取消</button>
								</div>
							</td>
						</tr>
					</table>
				</div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>
				<div class="adjust-10"></div>

				<div class="theme-popover question" style="margin-left: 400px;">
					<div class="popover-container question">

						<a>题目类型：</a> <select>
							<option onclick="mShow();">选择</option>
							<option>填空</option>
						</select>
						<div id="multiple-choice">
							<table>
								<tr>
									<td>问题：</td>
									<td><input class="form-control input" style="width: 200px"
										id="question-m" /></td>
								</tr>
								<tr>
									<td>选项一：</td>
									<td><input class="form-control input" style="width: 200px"
										id="a" /></td>
								</tr>
								<tr>
									<td>选项二：</td>
									<td><input class="form-control input" style="width: 200px"
										id="b" /></td>
								</tr>
								<tr>
									<td>选项三：</td>
									<td><input class="form-control input" style="width: 200px"
										id="c" /></td>
								</tr>
								<tr>
									<td>选项四：</td>
									<td><input class="form-control input" style="width: 200px"
										id="d" /></td>
								</tr>
							</table>
							<div style="padding: 0 20px; height: 50px; margin-top: 10px;">
								<button class="btn-b" onclick="addMultipleChoice()">确定</button>
								<button class="btn-w right" onclick="cancel();">取消</button>
							</div>
						</div>
						<div id="blank" style="display: none;">
							<table>
								<tr>
									<td>问题：</td>
									<td><input class="form-control input" style="width: 200px"
										id="a" /></td>
								</tr>
							</table>
							<div style="padding: 0 20px; height: 50px; margin-top: 10px;">
								<button class="btn-b">确定</button>
								<button class="btn-w right">取消</button>
							</div>
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
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Building and Facility
													Construction and Maintenance Services
												</td>
												<td>72000000</td>
											</tr>
											<tr id="72000000-children">
												<td colspan="3" style="padding: 0px;"><table
														class="table-nest table table-hover">
														<tr>
															<td width="10%"><input type="checkbox"
																value="option1"></td>
															<td width="75%">Construction & Project Mgt 11%-Real
																estate rental serivce-china only</td>
															<td width="20%">72000001</td>
														</tr>
														<tr>
															<td><input type="checkbox" value="option1"></td>
															<td>Construction & Project Mgt 17%-Hardware-china
																only</td>
															<td>72000002</td>
														</tr>
														<tr>
															<td><input type="checkbox" value="option1"></td>
															<td>Construction & Project Mgt 6%-Consulting
																fee-china only</td>
															<td>72000003</td>
														</tr>
													</table></td>
											</tr>
											<!-- 顶级第五行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Business Services
												</td>
												<td>Business Services</td>
											</tr>
											<!-- 顶级第六行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Editorial and Design and
													Graphic and Fine Art Services
												</td>
												<td>82000000</td>
											</tr>
											<!-- 顶级第七行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Engineering and Research and
													Technology Based Services
												</td>
												<td>81000000</td>
											</tr>
											<!-- 顶级第八行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Entertainment Svcs
												</td>
												<td>90000000</td>
											</tr>
											<!-- 顶级第九行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Environmental Services
												</td>
												<td>77000000</td>
											</tr>
											<!-- 顶级第十行 -->
											<tr>
												<td><input type="checkbox" value="option1"></td>
												<td>&nbsp;&nbsp;&nbsp;&nbsp;<a href="#"><span
														class="glyphicon glyphicon-triangle-right"
														aria-hidden="true"></span></a> Financial Svcs

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
