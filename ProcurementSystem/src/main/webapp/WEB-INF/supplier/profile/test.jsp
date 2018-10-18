<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
  <title>三级地址</title>
  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
  <script type="../js/javascript" src="jquery.js"></script>
  <script type="../js/javascript" src="TestAddress.js"></script>
  <script type="../js/javascript" src="TestChooseAddress.js"></script>
 </head>

<SCRIPT LANGUAGE="JavaScript">

function loadProvince(regionId){
  $("#id_provSelect").html("");
  $("#id_provSelect").append("<option value=''>请选择省份</option>");
  var jsonStr = getAddress(regionId,0);
  for(var k in jsonStr) {
	$("#id_provSelect").append("<option value='"+k+"'>"+jsonStr[k]+"</option>");
  }
  if(regionId.length!=6) {
	$("#id_citySelect").html("");
    $("#id_citySelect").append("<option value=''>请选择城市</option>");
	$("#id_areaSelect").html("");
    $("#id_areaSelect").append("<option value=''>请选择区域</option>");
  } else {
	 $("#id_provSelect").val(regionId.substring(0,2)+"0000");
	 loadCity(regionId);
  }
}

function loadCity(regionId){
  $("#id_citySelect").html("");
  $("#id_citySelect").append("<option value=''>请选择城市</option>");
  if(regionId.length!=6) {
	$("#id_areaSelect").html("");
    $("#id_areaSelect").append("<option value=''>请选择区域</option>");
  } else {
	var jsonStr = getAddress(regionId,1);
    for(var k in jsonStr) {
	  $("#id_citySelect").append("<option value='"+k+"'>"+jsonStr[k]+"</option>");
    }
	if(regionId.substring(2,6)=="0000") {
	  $("#id_areaSelect").html("");
      $("#id_areaSelect").append("<option value=''>请选择区域</option>");
	} else {
	   $("#id_citySelect").val(regionId.substring(0,4)+"00");
	   loadArea(regionId);
	}
  }
}

function loadArea(regionId){
  $("#id_areaSelect").html("");
  $("#id_areaSelect").append("<option value=''>请选择区域</option>");
  if(regionId.length==6) {
    var jsonStr = getAddress(regionId,2);
    for(var k in jsonStr) {
	  $("#id_areaSelect").append("<option value='"+k+"'>"+jsonStr[k]+"</option>");
    }
	if(regionId.substring(4,6)!="00") {$("#id_areaSelect").val(regionId);}
  }
}
</SCRIPT>
 <body>
  <br/><br/>
  <select id="id_provSelect" name="provSelect" onChange="loadCity(this.value);"><option value="">请选择省份</option></select>&nbsp;
  <select id="id_citySelect" name="citySelect" onChange="loadArea(this.value);"><option value="">请选择城市</option></select>&nbsp;
  <select id="id_areaSelect" name="areaSelect"><option value="">请选择区域</option></select>&nbsp;
  <SCRIPT LANGUAGE="JavaScript">loadProvince('440116');</SCRIPT>
 </body>
</html>
