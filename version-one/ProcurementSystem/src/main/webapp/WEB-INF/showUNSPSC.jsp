<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="other/header1return.jsp"%>
<script src="/ProcurementSystem/js/my-bootstrap-treeview.js"></script>
</head>
<!-- 页面整体宽度：1320px -->
<body>
	<div class="content">
		<div class="container">
			<div class="standard-out">
				
				<div style="display:inline-block; max-height:700px; width:50%; overflow-x:scroll;">
		          <div id="treeview-sim" class=""></div>
		        </div>
		        <div style="display:inline-block; height:700px; width:40%; overflow-x:scroll;">
		          <table id="treeview-selected" class="table table-hover">
		          </table>
		        </div>
			</div>
		</div>
	</div>


	<!-- CONTENT-WRAPPER SECTION END-->
	<%@ include file="other/supplierFooter.jsp"%>

	<script>
		$(function(){
 	        var defaultData = ${treeData};
 	        var $checkableTree = $('#treeview-sim').treeview({
 	          data: defaultData,
 	          showIcon: false,
 	          showCheckbox: true,
 	          onNodeChecked: function(event, node) {
 	        	  	$("#treeview-selected").append("<tr id=\""+node.id+"\"><td>"+node.text+"</td></tr>")
 	            //alert(node.text+" was checked");
 	          },
 	          onNodeUnchecked: function (event, node) {
 	        	  	$("#"+node.id).remove();
 	        	 	//alert(node.text+" was unchecked");
 	          }
 	        });
 	        
 	       var findCheckableNodess = function() {
 	          return $checkableTree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
 	        };
 	        var checkableNodes = findCheckableNodess();

 	        // Check/uncheck/toggle nodes
 	        $('#input-check-node').on('keyup', function (e) {
 	          checkableNodes = findCheckableNodess();
 	          $('.check-node').prop('disabled', !(checkableNodes.length >= 1));
 	        });

 	        $('#btn-check-node.check-node').on('click', function (e) {
 	          $checkableTree.treeview('checkNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
 	        });

 	        $('#btn-uncheck-node.check-node').on('click', function (e) {
 	          $checkableTree.treeview('uncheckNode', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
 	        });

 	        $('#btn-toggle-checked.check-node').on('click', function (e) {
 	          $checkableTree.treeview('toggleNodeChecked', [ checkableNodes, { silent: $('#chk-check-silent').is(':checked') }]);
 	        });

 	        // Check/uncheck all
 	        $('#btn-check-all').on('click', function (e) {
 	          $checkableTree.treeview('checkAll', { silent: $('#chk-check-silent').is(':checked') });
 	        });

 	        $('#btn-uncheck-all').on('click', function (e) {
 	          $checkableTree.treeview('uncheckAll', { silent: $('#chk-check-silent').is(':checked') });
 	        });
		})
	</script>
</body>
</html>
