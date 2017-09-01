<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>创建标准-内容</title>
<%@include file="../../other/supplierHeader1.jsp"%>
</head>
<body>
	<div class="container">
		<div id="order-detail-main">
			<div class="standard-title">
				<a class="standard-title-main">创建新目录</a>
				<div class="standard-title-r">
					<button class="btn-w"
						onclick="window.location.href='commodityCatalogCreatePurchase.jsp'">上一步</button>
					<button class="btn-w" onclick="window.location.href='main.jsp'">退出</button>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2">
				<div id="order-detail-main">
					<div class="commodity-catalog-edit-left left blue">
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogCreateDetail.jsp'">1
							详细信息</button>
						<button id="commodity-catalog-edit-left-not-clicked"
							onclick="window.location.href='commodityCatalogCreatePurchase.jsp'">2
							订购</button>
						<button id="commodity-catalog-edit-left-clicked"
							onclick="window.location.href='commodityCatalogCreateContent.jsp'">3
							内容</button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>
						<button id="commodity-catalog-edit-left-not-clicked"></button>

					</div>
				</div>
			</div>


			<div class="col-md-10">
				<div class="container-padding">
					<div>
						查看并编辑目录内容。在目录中添加或删除项目。要替换现有目录，请单击“上载目录文件”。已发布的目录不可编辑。<br> <br>
					</div>
					<form action="commodityCatalogValidateAndSave" method="post"
						enctype="multipart/form-data">
						<div>
							<div>
								<strong>上载您的目录文件</strong>
							</div>

							<div
								class="border-bottom-grey border-top-grey border-left-grey border-right-grey container-text">
								<input type="file" size="30" id="upload-file" name="file">
							</div>
						</div>
						<div
							class="caution-div container-text border-bottom-grey border-top-grey border-left-grey border-right-grey">
							<span class="caution-span"><strong>!</strong></span>
							单击“验证并发布”之后，在目录上载完成之前，请不要使用 Web 浏览器。上载较大的目录可能要花几分钟时间。
						</div>
						<div class="table-bottom-btn">
							<button class="btn-b" type="submit" >验证并发布</button>
						</div>
					</form>
					<div class=" border-bottom-grey ">
						<div class=" standard-subtitle-main">管理目录内容。下载并编辑这些目录文件</div>
					</div>
					<div>
						<div>
							<strong>模板文件</strong>
						</div>
						<div>
							<a>CIF 3.0 目录 Excel 模板</a>
						</div>
					</div>
					<div>
						<div>
							<strong>CIF和CXML示例文件</strong>
						</div>
						<div>
							<a>CIF 2.0 目录示例</a>
						</div>
						<div>
							<a>CIF 3.0 目录示例</a>
						</div>
						<div>
							<a>CIF 3.0 服务示例</a>
						</div>
						<div>
							<a>CXML示例</a>
						</div>
					</div>
					<div class="container-text comment-div">
						<div class="border-bottom-grey">
							<strong>注意：</strong>
						</div>
						<div>
							<p>1. 建议的最大上载文件大小为 10MB。对于较大的文件，您的浏览器可能会超时。Excel
								格式的目录大小（不管是否压缩）的最大大小为 1MB。</p>
							<p>
								2. 使用 zip 实用程序压缩 10MB 以上的 CIF 或 cXML 格式的目录文件，然后再上载。压缩文件必须以 .zip
								作为扩展名。要下载免费试用版的 WinZip，请访问 <a>http://www.winzip.com</a>。
							</p>
							<p>3. 对于日文目录，Shift_JIS 编码不包含某些扩展的日文字符。要使用最大数量的字符类型，请使用 UTF-8
								或 MS932 编码。</p>
						</div>
					</div>

					<div>
						<br> <br>
					</div>
				</div>
			</div>
		</div>
		<div id="order-detail-main">
			<div class="commodity-ending">
				<div class="table-bottom-btn right">
					<button class="btn-w"
						onclick="window.location.href='commodityCatalogCreatePurchase.jsp'">上一步</button>
					<button class="btn-w" onclick="window.location.href='main.jsp'">退出</button>
					<br>
				</div>
			</div>
		</div>
	</div>
</body>
</html>