//是否已经从后端获得商品
var getCommodity = 0;
var treeData;
var commoditiesId = "";
var commoditiesName = "";
var treeSearch;
var clearSearch;
var showTree = 0;

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
		async:true,
	    url:"../supplier/selectCommodity",
	    success:function(data){
	    		//console.log(data);
	    		//treeview相关内容加载
	    		$Tree =  $('#treeview-sim').treeview({
	    		    data: data,
	    		    showIcon: false,
	    		    showCheckbox: true,
	    		    onNodeChecked: function(event, node) {
	    		    		$("#treeview-selected").append("<tr class=\"commodity-row\" id=\""
	    		    				+node.nodeId+"\"><td class=\"selected-commodity\" colspan=\"2\">"
	    		    				+node.text+"<input type='hidden' name='node' value='" + node.nodeId + "' /></td><td><button class=\"trans-btn\" onclick=\"delCommodity("+node.nodeId+");\">删除</button></td>" +
	    		    						"</tr>");
	    		        //alert(node.text+" was checked");
	    		    },
	    		    onNodeUnchecked: function (event, node) {
	    		    	  	$("#"+node.nodeId).remove();
	    		    	 	//alert(node.text+" was unchecked");
	    		    }
	    		});
	    		showTree = 1;
	    		treeSearch = function(e) {
	    		    var pattern = $('#input-search').val();
	    		    var options = {
	    		    		ignoreCase: $('#chk-ignore-case').is(':checked'),
	    		    		exactMatch: $('#chk-exact-match').is(':checked'),
	    		    		revealResults: $('#chk-reveal-results').is(':checked')
	    		    };
	    		    var results = $Tree.treeview('search', [ pattern, options ]);
	    			//console.log(results);
	    		}
	    		findCheckableNodess = function() {
	    		    return $Tree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
	    		};
	    		checkableNodes = findCheckableNodess();
	    		//清除搜索
	    		clearSearch = function(e) {
	    			$Tree.treeview('clearSearch');
	    			$('#input-search').val('');
	    		};
	    		
	    		//在选择供应商之前选择的商品check
	    		var select = $("#nodeIds").val();
	    		if(select!="null"){
	    			var selected = select.split(",");
	    			for(var i=0; i<selected.length-1; i++){
		    			addCommodity(selected[i]);
		    		}
	    		}
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

function finishCommoditySelection(){
		$("#commodities").empty();
		var commodities = "";
		commoditiesId = "";
		var nodeIds = "";
		$(".selected-commodity").each(function(index,element){
			var name = element.childNodes[0].data;
			var id = element.childNodes[1].text;
			var node;
			var nodeName = element.childNodes[2].nodeName;
			if(nodeName!="INPUT"){
				node = element.childNodes[3].value;
			}else{
				node = element.childNodes[2].value;
			}
			commoditiesId += id + ",";
			commoditiesName += name + ",";
			nodeIds += node + ",";
			$("#commodities").append("<tr><td>"+name+"</td><td>"+id+"</td></tr>");
		});
		$("#commoditiesId").val(commoditiesId);
		$("#commoditiesName").val(commoditiesName);
		$("#nodeIds").val(nodeIds);
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

function addCommodity(id){
	var v = $("#treeview-sim").treeview('getNode',id);
	v.state.checked=true;
	$("#btn-search").click();		
}
//单选code
//点击商品后选择，获得UNSPSC码
function onSelectSingleCommodity() {
	$('.theme-popover-mask').fadeIn(100);
	$('.theme-popover').slideDown(200);
	if(getCommodity==0){
		getUNSPSC1();
		getCommodity=1;
	}
}

function getUNSPSC1(){
	$.ajax({
		data:{},  
		type:"POST",  
		dataType: 'json',
		async:true,
	    url:"../supplier/selectSingleCommodity",
	    success:function(data){
	    		//console.log(data);
	    		//treeview相关内容加载
	    		$Tree =  $('#treeview-sim').treeview({
	    		    data: data,
	    		    showIcon: false,
	    		    showCheckbox: false,
	    		});
	    		showTree = 1;
	    		treeSearch = function(e) {
	    		    var pattern = $('#input-search').val();
	    		    var options = {
	    		    		ignoreCase: $('#chk-ignore-case').is(':checked'),
	    		    		exactMatch: $('#chk-exact-match').is(':checked'),
	    		    		revealResults: $('#chk-reveal-results').is(':checked')
	    		    };
	    		    var results = $Tree.treeview('search', [ pattern, options ]);
	    			//console.log(results);
	    		}
	    		findCheckableNodess = function() {
	    		    return $Tree.treeview('search', [ $('#input-check-node').val(), { ignoreCase: false, exactMatch: false } ]);
	    		};
	    		checkableNodes = findCheckableNodess();
	    		//清除搜索
	    		clearSearch = function(e) {
	    			$Tree.treeview('clearSearch');
	    			$('#input-search').val('');
	    		};
	    		
	    		//在选择供应商之前选择的商品check
	    		var select = $("#nodeIds").val();
	    		if(select!="null"){
	    			var selected = select.split(",");
	    			for(var i=0; i<selected.length-1; i++){
		    			addCommodity(selected[i]);
		    		}
	    		}
	   	},
	    error:function(data, XMLHttpRequest, textStatus, errorThrown){  
	    		console.log(data);
	    }  
	});
	
}
