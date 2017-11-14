<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="../../other/header1.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
<title>创建供应商界面</title>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				<!-- 主要内容 -->
				<div class="standard-title">
					<div class="standard-title-main">创建供应商资格管理项目</div>
					<div class="standard-title-r">
						<button form="supplierSQMCreation"
							formaction="sqmCreation?action=submit" class="btn-b">确定</button>
						<button class="btn-w" onclick="window.location.href='../main'">取消</button>
					</div>
				</div>
				<div class="title-description">
					要创建一个供应商资格管理项目，请指定下述字段。用于构建您的供应商资格管理项目的模板将显示在该页底部，可用模板可能会因您输入的项目属性而异。
				</div>
				<div class="adjust-10"></div>

				<form id="supplierSQMCreation" method="post">
					<div class="row">
						<div class="col-md-5">
							<table class="fulltab" style="margin-left: 80px;">
								<tr class="row-standard">
									<td class="col-standard1">＊名称：</td>
									<td class="col-standard2"><input
										class="form-control input" name="title" style="width: 230px;"
										<%if(request.getAttribute("sqm")!=null){ %>
										value="${sqm.title}" <%} %>></td>
								</tr>
								<tr>
									<td></td>
									<td><span class="error-message">${Error_title}</span></td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1" valign="top">说明：</td>
									<td class="col-standard2"><textarea class="form-control"
											id="pr-textarea" name="description"
											style="border: 1px solid #428bca; border-radius: 0;">
												<%
													if (request.getAttribute("sqm") != null) {
												%>
												 ${sqm.description}
												<%
													}
												%>
										</textarea> <%-- <input class="form-control input" name="commodity" style="display:none;"
												<%if(request.getAttribute("sqm")!=null){ %>
												value="${sqm.description}"
												<%} %>> --%></td>
								</tr>

								<tr class="row-standard">
									<td class="col-standard1" valign="top">商品：</td>
									<td class="col-standard2">
										<table id="commodities"></table>
										<input type="hidden" id="commoditiesId" name="commoditiesId"/>
											［&nbsp;<a class="blue inline-b choose" href="javascript:;">选择</a>&nbsp;］
									</td>
								</tr>
							</table>
						</div>
						<div class="col-md-5">
							<table class="fulltab">
								<tr class="row-standard">
									<td class="col-standard1">＊供应商：</td>
									<td class="col-standard2">
										<div>
											${sqm.supplier.name} <input type="hidden"
												value="${supplier.uniqueName }"> <input
												type="hidden" value="${supplier.name }">
											<button style="border: 0; background-color: transparent"
												formaction="sqmCreationChooseSupplier?action=initial">【
												选择 】</button>
											<span class="error-message">${Error_supplier}</span>
										</div>
									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">上次资格日期：</td>
									<td class="col-standard2">
										<%-- <input
											class="form-control input" name="lastValid"
											<%if(request.getAttribute("sqm")!=null){ %>
											value=""
											<%} %>> --%> <label for="meeting"></label><input
										name="lastValid" class="form-control input" id="meeting"
										type="date" <% if (request.getAttribute("sqm") != null) { %>
										value="${sqm.lastValid}" /> <%
										 	} else {
										 %> value="2017-01-01"/> <%
										 	}
										 %>

									</td>
								</tr>
								<tr class="row-standard">
									<td class="col-standard1">资格失效日期：</td>
									<td class="col-standard2">
										<%-- <input
											class="form-control input" name="validTo"
											<%if(request.getAttribute("sqm")!=null){ %>
											value="${sqm.validTo}"
											<%} %>> --%> <label for="meeting"></label><input
										name="validTo" class="form-control input" id="meeting"
										type="date" <% if (request.getAttribute("sqm") != null) { %>
										value="${sqm.validTo}" /> <%
										 	} else {
										 %> value="2017-01-01"/> <%
										 	}
										 %>
									</td>
								</tr>
							</table>
						</div>
					</div>


					<div class="standard-title-main">选择模版</div>
					<div class="title-description">
						请选择您要使用的模板，并回答与之相关的所有问题，以便创建您的项目。以上区段的字段设置值将对可用模板产生影响。</div>
					<div class="radio">
						<c:forEach items="${templates}" var="template">
							<label class="model"><input type="radio" checked
								name="sqmTemplateId" id="spm_model1" value="${template.id }">&nbsp;&nbsp;${template.name}</label>
							<br />
						</c:forEach>
					</div>
					<div class="standard-ending">
						<div align="right" class="standard-ending-r">
							<button form="supplierSQMCreation"
								formaction="sqmCreation?action=submit" class="btn-b">确定</button>
							<button class="btn-w" onclick="window.location.href='../main'">取消</button>
						</div>
					</div>
				</form>
				<div class="theme-popover commodity-selection">
					<div class="popover-container">
						<div class="row">
							<div class="col-md-7">
								<div class="commodities">
									<div class="pop-up-title">选择商品值</div>
									<div class="pop-up-subtitle">添加到当前所选值</div>
									<div>
										<span>名称或标识符：</span>
										<input class="input" style="padding-left:10px;padding-right:10px;"id="input-search"/>
										<button class="btn-b" id="btn-search">搜索</button>
										<button class="btn-w" id="btn-clear-search">清除搜索结果</button>
									</div>
									<div class="adjust-10"></div>
									<table class="table table-hover">
					        			<tr class="standard-row1">
					        				<td style="width:5%;"></td>
					        				<td style="width:77%;">名称</td>
					        				<td style="width:18%;">标识符</td>
					        			</tr>
					        		</table>
						          	<div id="treeview-sim" style="max-height:72%;overflow-x:scroll;" class="bottom-border">
						          	</div>
						        </div>
					        </div>
				        	<div class="col-md-5">
					        	<div class="commodities">
					        		<div class="adjust-10"></div>
					        		<div class="pop-up-subtitle">当前所选值</div>
					        		<div style="height:85%">
						        		<table id="treeview-selected" style="max-height:400px;overflow-x:scroll;" class="table table-hover bottom-border" >
						        			<tr class="standard-row1">
						        				<td style="width:65%">名称</td>
						        				<td style="width:15%">标识符</td>
						        				<td style="width:20%"></td>
						        			</tr>
						        		</table>
						        	</div>
					        		<button class="btn-b right" id="finish-btn" onclick="finishCommoditySelection();">完成</button>
					        	</div>
						    </div>
				        </div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="theme-popover-mask"></div>
	<script>
		$(function(){
			//选择商品浮框
			$('.choose').click(function() {
				$('.theme-popover-mask').fadeIn(100);
				$('.theme-popover').slideDown(200);
			})
			$('#finish-btn').click(function() {
				$('.theme-popover-mask').fadeOut(100);
				$('.theme-popover').slideUp(200);
			})
		})
		var a = <%=request.getSession().getAttribute("treeData")%>
		var $Tree= $('#treeview-sim').treeview({
            data: a,
            showIcon: false,
            showCheckbox: true,
            onNodeChecked: function(event, node) {
            		$("#treeview-selected").append("<tr id=\""
            				+node.nodeId+"\"><td class=\"selected-commodity\" colspan=\"2\">"
            				+node.text+"</td><td><button class=\"trans-btn\" onclick=\"delCommodity("+node.nodeId+");\">删除</button></td></tr>");
                //alert(node.text+" was checked");
            },
            onNodeUnchecked: function (event, node) {
            	  	$("#"+node.nodeId).remove();
            	 	//alert(node.text+" was unchecked");
            }
        });
       
        var findCheckableNodess = function() {
          return $Tree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
        };
        var checkableNodes = findCheckableNodess();

        // Check/uncheck/toggle nodes
        $('#input-check-node').on('keyup', function (e) {
          checkableNodes = findCheckableNodess();
          $('.check-node').prop('disabled', !(checkableNodes.length >= 1));
        });

        $('#btn-check-node.check-node').on('click', function (e) {
          $Tree.treeview('checkNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-uncheck-node.check-node').on('click', function (e) {
          $Tree.treeview('uncheckNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        $('#btn-toggle-checked.check-node').on('click', function (e) {
          $Tree.treeview('toggleNodeChecked', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
        });

        // Check/uncheck all
        $('#btn-check-all').on('click', function (e) {
          $Tree.treeview('checkAll', { silent: $('#chk-check-silent').is(':checked') });
        });

        $('#btn-uncheck-all').on('click', function (e) {
          $Tree.treeview('uncheckAll', { silent: $('#chk-check-silent').is(':checked') });
        });
        
        var search = function(e) {
            var pattern = $('#input-search').val();
            var options = {
              ignoreCase: $('#chk-ignore-case').is(':checked'),
              exactMatch: $('#chk-exact-match').is(':checked'),
              revealResults: $('#chk-reveal-results').is(':checked')
            };
            var results = $Tree.treeview('search', [ pattern, options ]);
			//console.log(results);
          }

          $('#btn-search').on('click', search);
          //$('#input-search').on('keyup', search);

          $('#btn-clear-search').on('click', function (e) {
            $Tree.treeview('clearSearch');
            $('#input-search').val('');
          });
        
        function finishCommoditySelection(){
        		$("#commodities").	empty();
        		var commoditiesId="";
        		var commodities="";
        		$(".selected-commodity").each(function(index,element){
        			var id = element.lastChild.firstChild.data;
        			commoditiesId+=id+",";
        			var commodityName = element.firstChild.data;
        			$("#commodities").append("<tr><td>"+commodityName+"</td><td>"+id+"</td></tr>");
        		});
        		$("#commoditiesId").val(commoditiesId);
        }
        
        function delCommodity(id){
        		$("#"+id).remove();
        		var v = $("#treeview-sim").treeview('getNode',id);
        		v.state.checked=false;
     		$("#btn-search").click();
        		
        }
	</script>
</body>
</html>
