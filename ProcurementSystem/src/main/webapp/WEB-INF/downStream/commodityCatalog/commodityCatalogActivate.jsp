<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="../../other/header1.jsp"%>
<%@include file="../..//other/header2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>
	<!-- 第一行 -->
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="container-padding">
					<div class="border-bottom-grey margin-bottom">
						<div class="right">
							<button class="btn-w" type="button"
								onclick="window.location.href='commodityCatalogList'">目录
								主页</button>
						</div>
						<div class="small-window-title margin-bottom ">目录 - 激活或停用 -
							${commodityCatalog.name }，${commodityCatalog.version }, 完整</div>

					</div>
					<div class="margin-bottom">
						<span> <a
							href="showCommodityCatalogContent?uniqueName=${commodityCatalog.uniqueName }">步骤1.清理数据</a>
						</span> &nbsp;&nbsp;> &nbsp;&nbsp;<span> <a
							href="commodityCatalogCompare?uniqueName=${commodityCatalog.uniqueName}">步骤2.分析数据</a>
						</span> &nbsp;&nbsp;> &nbsp;&nbsp;<span
							class="caution-div container-text border-blue"> <a
							href="#">步骤3.生效</a>
						</span>
					</div>

					<div class="margin-bottom">
						<div>
							<strong>工具：</strong> <a><img
								src="/ProcurementSystem/images/icon-check.png" class="img-icon"
								title=" 复核工具" /></a> <a><img
								src="/ProcurementSystem/images/icon-activate.png"
								class="img-icon  icon-choose" title="激活/停用工具" /></a>
						</div>
					</div>
					<div class="margin-bottom">
						<div>
							<strong>激活目录</strong>
						</div>
						<c:if test="${commodityCatalog.isActivated  == '验证错误'}">
							<div>
								不能激活此目录，因为它包含错误或者需要重新验证。必须首先更正所有错误，然后才能激活目录。<br>
							</div>
							<button class="btn-g">激活</button>
							<button class="btn-g">重建</button>
						</c:if>
						<c:if
							test="${commodityCatalog.isActivated  == '已验证' || commodityCatalog.isActivated  == '已停用'}">
							<button class="btn-w"
								onclick="window.location.href='commodityCatalogActivateSave?uniqueName=${commodityCatalog.uniqueName}'">激活</button>
							<button class="btn-g">重建</button>
						</c:if>
						<c:if test="${commodityCatalog.isActivated  == '已激活'}">
							<div>
								此目录已激活，或当前正在激活，或当前正在进行预览。<br>
							</div>
							<button class="btn-g">激活</button>
							<button class="btn-w">重建</button>
						</c:if>

					</div>
					<div class="margin-bottom border-bottom-grey">
						<div>
							<strong>停用目录</strong>
						</div>
						<c:if test="${commodityCatalog.isActivated  != '已激活'}">
							<div>
								不能停用此目录，因为它尚未激活。<br>
							</div>
							<button class="btn-g">停用</button>
						</c:if>

						<c:if test="${commodityCatalog.isActivated  == '已激活'}">
							<div>
								停用目录后，用户不能搜索和订阅目录中列出的内容。这样，该订阅的所有活动目录都将被停用。只有在目录是增量目录时，一个特定的订阅才能存在多个活动目录。<br>
							</div>
							<button class="btn-w"
								onclick="window.location.href='commodityCatalogStopSave?uniqueName=${commodityCatalog.uniqueName}'">停用</button>
						</c:if>
						<br> <br>
					</div>
					<div class="right">
						<button class="btn-w" type="button"
							onclick="window.location.href='commodityCatalogList'">目录
							主页</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>