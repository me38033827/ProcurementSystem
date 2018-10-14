<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>公司概要－营销</title>
	<link href="../../js/editor/themes/simple/simple.css"/>
	<%@include file="../../other/supplierHeader1.jsp"%>
	<script charset="utf-8" src="../../js/editor/kindeditor-all.js"></script>
	<script charset="utf-8" src="../../js/editor/kindeditor-all-min.js"></script>
	<script charset="utf-8" src="../../js/editor/lang/zh-CN.js"></script>
	
	<script>
		var editor;
		   KindEditor.ready(function(K) {
		           editor = K.create('#editor_id', {
		                   themeType : 'simple'
		           });
		   });
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
							<button class="tag-clicked" onclick="window.location.href='profileMarket'">营销</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileContact'">联系人</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileAuth'">认证</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileCustomer'">请求的客户</button>
							<button class="tag-not-clicked" onclick="window.location.href='profileDoc'">其他文档</button>
						</div>
						
						<div class="profile-left">
							<div class="title-description">＊表示必填字段</div>
							
							<div class="standard-subtitle">标准概要的特点</div>
							
							<div class="standard-subsubtitle">社交网络链接</div>
							
							<div class="standard-subsubtitle-d">
								<a class="standard-subsubtitle-description">向社交媒体渠道添加链接，以便采购商与贵公司接洽。</a>
							</div>
							
							<div>
								<img id="linkedin" src="../../images/linkedin.jpg">
								<a id="linkedin-web">linkedin.com/</a>
								<input id="linkedin-input" class="form-control input"/>
							</div>
							
							<div class="adjust-10"></div>
							
							<div class="standard-subsubtitle">公司说明
							</div>
							
							<div class="standard-subsubtitle-d">在“基本概要”页面上输入完整的公司说明而不是简短的说明，使采购商能够更全面地了解贵公司。
							</div>
							
							<textarea id="editor_id" name="content" style="width:700px;height:300px;">
							</textarea>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							
							<div class="standard-subsubtitle">D&B提供的信用和风险信息
							</div>
							
							<div class="standard-subsubtitle-d">
								<a class="standard-subsubtitle-description">向您的提案请求响应添加Dun&Bradstree信用评分和风险评分，以便采购商将您识别为合资格的伙伴。</a><br>
								<a class="standard-subsubtitle-description">D&B D-U-N-S编号 ｜</a> <a href="">添加</a>
							</div>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							
							
							<div class="standard-subtitle">高级概要功能
							</div>
							
							<div class="standard-subsubtitle">公司徽标
							</div>
							<div class="adjust-10"></div>
							
							<div class="row">
								<div class="col-md-2">
									<img src="../../images/upload-img.jpg" id="upload-img"/>
								</div>
								<div class="col-md-10">
									<a id="upload-desc" class="standard-subsubtitle-description">上载徽标，使其与公司简介一起显示。徽标必须是.gif文件，最大宽度为250像素，最大高度为250像素，最大大小为20kB。</a><br>
									<a class="standard-subsubtitle-description inline-b">徽标文件：</a>
									<input type="FILE" size="30" id="upload-file"><br>
									<button id="upload-btn" class="btn-w">上传</button>
								</div>
							</div>
							
							<div class="adjust-10"></div>
							
							<div class="standard-subsubtitle">附件
							</div>
						
							<div class="standard-subsubtitle-d">
								<a class="standard-subsubtitle-description">添加附件来展示贵公司，包括客户业务陈述、案例研究和认证。</a>
							</div>
							
							<div id="upload-border">
								<button class="btn-w right">上传</button>
							</div>
							
							<div class="adjust-10"></div>
							
							<div class="standard-subsubtitle">外部链接
							</div>
						
							<div class="standard-subsubtitle-d">提供到其他网站的链接，以便采购商了解有关贵公司的更多信息。
							</div>
							
						
							<div>
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">URL</td>
										<td class="blue">名称</td>
										<td>类型</td>
										<td class="blue">状态</td>
									</tr>
									<tr>
										<td class="no-item" colspan="4">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="4">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">添加</button>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="adjust-10"></div>
							<div class="adjust-10"></div>
							
							<div class="standard-subtitle">展示案例
							</div>
							
							<div class="module">
								<table class="table table-hover">
									<tr class="standard-row1">
										<td class="blue">标题&#8595;</td>
										<td class="blue">类别</td>
										<td class="blue">说明</td>
									</tr>
									<tr>
										<td class="no-item" colspan="3">无项目</td>
									</tr>
									<tr class="standard-row3">
										<td colspan="3">
											<a class="arrow-turn">&#8627;</a>
											<button class="btn-w">创建</button>
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