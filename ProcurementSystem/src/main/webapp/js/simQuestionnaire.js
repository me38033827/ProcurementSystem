function createQuestion(id){
	window.location.href="/ProcurementSystem/buyer/supplier/createQuestion?id="+id;
}

function createFolder(id){
	window.location.href="/ProcurementSystem/buyer/supplier/createFolder?id="+id;
}

function addFolderBottom(){
	window.location.href="/ProcurementSystem/buyer/supplier/createFolder?id=10000";
}

function addQuestionBottom(){
	window.location.href="/ProcurementSystem/buyer/supplier/createQuestion?id=10000";
}

function editFolder(id){
	window.location.href="/ProcurementSystem/buyer/supplier/editFolder?id="+id;
}

function editQuestion(id){
	window.location.href="/ProcurementSystem/buyer/supplier/editQuestion?id="+id;
}

function deleteFolder(id){
	if(confirm("确定删除该区段？（区段内的全部内容将随之删除！此操作不可恢复！）")){
		window.location.href="/ProcurementSystem/buyer/supplier/deleteFolder?id="+id;		
	};
}

function deleteQuestion(id){
	if(confirm("确定删除该问题？（此操作不可恢复！）")){
		window.location.href="/ProcurementSystem/buyer/supplier/deleteQuestion?id="+id;
	};
}