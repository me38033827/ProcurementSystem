//是否已经从后端获得商品
var getCommodity = 0;
var treeData;

//点击商品后选择，获得UNSPSC码
function onSelectCommodity() {
	$('.theme-popover-mask').fadeIn(100);
	$('.theme-popover').slideDown(200);
	if(getCommodity==0){
		getUNSPSC();
		getCommodity=1;
	}
}

function getUNSPSC(){
	$.ajax({
		data:{},  
		type:"POST",  
		dataType: 'json',
		async:false,
	    url:"../supplier/selectCommodity",
	    success:function(data){
	    		console.log(data);
	    		//treeview相关内容加载
	    		$Tree =  $('#treeview-sim').treeview({
	    		    data: data,
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
	    		findCheckableNodess = function() {
	    		    return $Tree.treeview('treeSearch', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
	    		};
	    		checkableNodes = findCheckableNodess();
	   	},
	    error:function(data, XMLHttpRequest, textStatus, errorThrown){  
	    		console.log(data);
	    }  
	});
	
}

var $Tree;
var findCheckableNodess;
var checkableNodes;
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

var treeSearch = function(e) {
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
		//浮框效果
		$('.theme-popover-mask').fadeOut(100);
		$('.theme-popover').slideUp(200);
}

function delCommodity(id){
		$("#"+id).remove();
		var v = $("#treeview-sim").treeview('getNode',id);
		v.state.checked=false;
	$("#btn-search").click();
		
}