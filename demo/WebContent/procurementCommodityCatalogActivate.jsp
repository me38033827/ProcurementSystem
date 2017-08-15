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
				<div class="container-padding">
					<div class="border-bottom-grey margin-bottom">
						<div class="right">
							<button class="btn-w"
								onclick="window.location.href='procurementCommodityCatalogList.jsp'">目录
								主页</button>
						</div>
						<div class="small-window-title margin-bottom ">目录 - 激活或停用 -
							catalog for test，版本 4, 完整</div>

					</div>
					<div class="margin-bottom">
						<span> <a href="procurementCommodityCatalogContent.jsp">步骤1.清理数据</a>
						</span> &nbsp;&nbsp;> &nbsp;&nbsp;<span> <a href="procurementCommodityCatalogCompare.jsp">步骤2.分析数据</a>
						</span> &nbsp;&nbsp;> &nbsp;&nbsp;<span
							class="caution-div container-text border-blue"> <a href="procurementCommodityCatalogActivate.jsp">步骤3.生效</a>
						</span>
					</div>

					<div class="margin-bottom">
						<div>
							<strong>工具：</strong> <a><img
								src="/demo/assets/img/icon-check.png" class="img-icon"
								title=" 复核工具" /></a> <a><img
								src="/demo/assets/img/icon-activate.png"
								class="img-icon  icon-choose" title="激活/停用工具" /></a>
						</div>
					</div>
					<div class="margin-bottom">
						<div>
							<strong>激活目录</strong>
						</div>
						<div>
							不能激活此目录，因为它包含错误或者需要重新验证。必须首先更正所有错误，然后才能激活目录。<br>
						</div>
						<button class="btn-g">激活</button>
						<button class="btn-g">重建</button>
					</div>
					<div class="margin-bottom border-bottom-grey">
					<div><strong>停用目录</strong></div>
					<div>不能停用此目录，因为它尚未激活。<br></div>
					<button class="btn-g">停用</button>
					<br><br>
					</div>
					<div class="right">
						<button class="btn-w"
							onclick="window.location.href='procurementCommodityCatalogList.jsp'">目录
							主页</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>