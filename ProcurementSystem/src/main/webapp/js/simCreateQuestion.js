function selectAcceptValue(){
	var acceptValue = $("#acceptValue").val();
	if(acceptValue==1){
		$("#selection-list").hide();
		$("#multiple").hide();
		$("#initial").show();
		$("#type").show();
	}
	//有选择
	if(acceptValue==2){
		$("#selection-list").show();
		$("#initial").hide();
		$("#selection").val(selection);
		$("#multiple").show();
		$("#type").hide();
	}
}

function deleteSelection(index){
	if(selection!=1){
		$("#selection-outer-"+index).remove();
		var i = index+1;
		var new_i = 0;
		while(i <= selection){
			new_i = i-1;
			$("#selection-btn-"+i).empty();
			$("#selection-btn-"+i).append("<button class=\"trans-btn grey\" onclick=\"deleteSelection(" + new_i + ");\">删除</button>");
			document.getElementById("selection-outer-"+i).id="selection-outer-"+new_i;
			document.getElementById("selection-"+i).id="selection-"+new_i;
			document.getElementById("selection-"+new_i).name="selection-"+new_i;
			document.getElementById("selection-btn-"+i).id="selection-btn-"+new_i;
			i++;
		}
		selection--;
		$("#selection").val(selection);
	}
}

function addSelection(){
	new_selection = selection + 1;
	$("#selection-outer-"+selection).after("<tr id=\"selection-outer-" + new_selection + "\">"
									+"<td style=\"padding:5px 20px;\"><input class=\"input\" id=\"selection-" + new_selection + "\" name=\"selection-" + new_selection + "\" style=\"margin-right:200px; padding-left:10px;\" /></td>"
									+"<td id=\"selection-btn-" + new_selection + "\"><button class=\"trans-btn grey\" onclick=\"deleteSelection(" + new_selection + ");\">删除</button></td>" +
								+"</tr>");
	selection++;
	$("#selection").val(selection);
}