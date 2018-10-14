<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>公司概要－认证</title>
<%@include file="../../other/supplierHeader1.jsp"%>
<script>
	function check(id){
		var element = "#"+id;
		var content = "#"+id+"-content";
		if($(element).prop('checked')==true){
			$(content).show();
		}else{
			$(content).hide();
		}
	}
</script>
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
							<button class="tag-not-clicked" onclick="window.location.href='profileBasic'">基本</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileBusiness'">商务</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileMarket'">营销</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileContact'">联系人</button>
							<button class="tag-clicked" onclick="window.location.href='profileAuth'">认证</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileCustomer'">请求的客户</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileDoc'">其他文档</button>
						</div>
						
						<div class="profile-left">
							<div class="title-description">＊表示必填字段</div>
							
							<div class="standard-subtitle">认证</div>
							
							<div>
								<table>
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth1" class="chk" onclick="check('chk-auth1');"/><label for="chk-auth1"></label></td>
										<td class="auth-col2">
											<a class="auth-1">可持续发展计划</a>
											<br>
											<a class="auth-2">贵公司已实施以下其中一种类别的可持续发展计划：计划、产品和服务、能源、碳、运输和其他。</a>
										</td>
									</tr>
									<tr  id="chk-auth1-content" hidden="hidden">
										<td></td>
										<td>
											<div>
												<table>
													<tr>
														<td class="auth-col1"><input type="checkbox" id="chk-auth1-1" class="chk" onclick="check('chk-auth1-1');"/><label for="chk-auth1-1"></label></td>
														<td class="auth-col2">
															<a class="auth-1">规划</a>
															<br>
															<a class="auth-2">贵公司已创建书面计划，记录你们如何强调并实施可持续商业活动。选择所有适用项。</a>
														</td>
													</tr>
													<tr  id="chk-auth1-1-content" hidden="hidden">
														<td></td>
														<td>
															<div>
																<table>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-1-1" class="chk"/><label for="chk-auth1-1-1"></label></td>
																		<td class="auth-col2">环境和社会表现的正式认可</td>
																	</tr>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-1-2" class="chk"/><label for="chk-auth1-1-2"></label></td>
																		<td class="auth-col2">公共环境或可持续发展声明或政策</td>
																	</tr>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-1-1" class="chk"/><label for="chk-auth1-1-1"></label></td>
																		<td class="auth-col2">可持续发展报告</td>
																	</tr>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-1-2" class="chk"/><label for="chk-auth1-1-2"></label></td>
																		<td class="auth-col2">公开报告</td>
																	</tr>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-1-1" class="chk"/><label for="chk-auth1-1-1"></label></td>
																		<td class="auth-col2">ISO 14001环境管理系统（EMS）</td>
																	</tr>
																</table>
															</div>
														</td>
													</tr>
													
													<tr>
														<td class="auth-col1"><input type="checkbox" id="chk-auth1-2" class="chk"/><label for="chk-auth1-2"></label></td>
														<td class="auth-col2">
															<a class="auth-1">产品和服务</a>
															<br>
															<a class="auth-2">贵公司是一家产品或服务提供商，倡导以可度量的方式减少对环境的负面影响。选择所有适用项。</a>
														</td>
													</tr>
													<tr>
														<td class="auth-col1"><input type="checkbox" id="chk-auth1-3" class="chk"/><label for="chk-auth1-3"></label></td>
														<td class="auth-col2">
															<a class="auth-1">能源</a>
															<br>
															<a class="auth-2">贵公司致力于实现能源效率或再生能源的计划。</a>
														</td>
													</tr>
													<tr>
														<td class="auth-col1"><input type="checkbox" id="chk-auth1-4" class="chk" onclick="check('chk-auth1-4');"/><label for="chk-auth1-4"></label></td>
														<td class="auth-col2">
															<a class="auth-1">碳排放</a>
															<br>
															<a class="auth-2">贵公司致力于实现碳报告、碳减排和碳抵消的计划。</a>
														</td>
													</tr>
													<tr  id="chk-auth1-4-content" hidden="hidden">
														<td></td>
														<td>
															<div>
																<table>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-4-1" class="chk"/><label for="chk-auth1-4-1"></label></td>
																		<td class="auth-col2">减少温室气体排放所采取的有节制的措施</td>
																	</tr>
																	<tr>
																		<td class="auth-col1"><input type="checkbox" id="chk-auth1-4-1" class="chk"/><label for="chk-auth1-4-1"></label></td>
																		<td class="auth-col2">向碳披露项目(CDP)报告GHG和气候变化策略</td>
																	</tr>
																</table>
															</div>
														</td>
													</tr>
													<tr>
														<td class="auth-col1"><input type="checkbox" id="chk-auth1-5" class="chk"/><label for="chk-auth1-5"></label></td>
														<td class="auth-col2">
															<a class="auth-1">运输</a>
															<br>
															<a class="auth-2">贵公司致力于实现运输和物流或车队管理效率的计划。</a>
														</td>
													</tr>
													<tr>
														<td class="auth-col1"><input type="checkbox" id="chk-auth1-6" class="chk"/><label for="chk-auth1-6"></label></td>
														<td class="auth-col2">
															<a class="auth-1">其他</a>
															<br>
															<a class="auth-2">贵公司致力于实现其他可持续发展计划，例如水资源利用和固废量减少、制造水平的社会责任与社区参与。选择所有适用项。</a>
														</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
									
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth2" class="chk" /><label for="chk-auth2"></label></td>
										<td class="auth-col2">
											<a class="auth-1">小型劣势企业</a>
											<br>
											<a class="auth-2">您的企业已获得SDB认证、8（a）认证、HUBZone认证，或是被省政府部门认可为小型劣势企业。</a>
										</td>
									</tr>
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth3" class="chk" /><label for="chk-auth3"></label></td>
										<td class="auth-col2">
											<a class="auth-1">女性所有的企业</a>
											<br>
											<a class="auth-2">贵公司至少有51％由一位或多位妇女所有，这些妇女行使决策权，或积极参与公司的的日常管理。</a>
										</td>
									</tr>
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth4" class="chk" /><label for="chk-auth4"></label></td>
										<td class="auth-col2">
											<a class="auth-1">少数族裔所有的企业</a>
											<br>
											<a class="auth-2">贵公司至少有51％由一位或多位少数裔市民所有。在公有企业中，至少一位或多位这样的个人拥有51%的股份，一位或多位这样的个人控制企业的管理和日常运作。</a>
										</td>
									</tr>
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth5" class="chk" /><label for="chk-auth5"></label></td>
										<td class="auth-col2">
											<a class="auth-1">退伍军人所有的企业</a>
											<br>
											<a class="auth-2">贵公司至少有51％由一位在无损名誉的条件下退役的军人、海军或空军拥有，或至少有51%股份由一位被政府视为伤残退伍军人拥有。</a>
										</td>
									</tr>
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth6" class="chk" /><label for="chk-auth6"></label></td>
										<td class="auth-col2">
											<a class="auth-1">ISO认证</a>
											<br>
											<a class="auth-2">国际标准化组织(ISO)系列标准与质量管理系统有关，旨在帮助组织确保符合客户和其他利益相关者的需求。ISO发布的标准可通过国家标准机构获得。</a>
										</td>
									</tr>
									<tr>
										<td class="auth-col1"><input type="checkbox" id="chk-auth7" class="chk" /><label for="chk-auth7"></label></td>
										<td class="auth-col2">
											<a class="auth-1">未认证</a>
											<br>
											<a class="auth-2">贵公司无法提供上面列出的任何一项认证。</a>
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
	<%@ include file="../../other/supplierFooter.jsp"%>
	
	

</body>
</html>