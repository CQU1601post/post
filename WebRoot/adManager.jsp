<%@page import="java.util.ArrayList"%>
<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"
	import="java.sql.*" errorPage=""%>
<jsp:directive.page import="allClasses.*" />
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="jdbc.OperationData" />
<%
	String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    List<String> scopeList=new ArrayList<String>();
    List adList=new ArrayList();
    List<Post > postList=new ArrayList<Post>();
    Administrator administrator=(Administrator)request.getSession().getAttribute("adminInfo");

    String[] scopes=administrator.getScope().split("\\|");
    for(int i=0;i<scopes.length;i++){
        scopeList.add(scopes[i]);
    }
    postList=new OperationData().getPosts(scopeList);
    adList=new OperationData().query_adType(scopeList); 
  
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>日志管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/adminManager.css" rel="stylesheet" type="text/css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

<link rel="stylesheet" href="css/bootstrap.css" media="screen">
<link rel="stylesheet" href="css/bootstrap-datetimepicker.css"
	media="screen">
<link rel="stylesheet" type="text/css" href="css/select2.css">
<script type="text/javascript" src='js/bootstrap.min.js'></script>
<script type="text/javascript" src='js/bootstrap-datetimepicker.js'></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/select2.full.js"></script>

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	function deleteModel(id) {
		if (confirm("是否确定要删除?")) {
			$.ajax({
				type : "get",
				url : "AdminManagerLogical?info=deleteLogManager&visitorId="
						+ id,
				success : function(data) {
					$('#deleteModal').modal('hide');
					alert("删除成功");
				}
			});
		}

	}

	$(document).ready(function() {

		$("#datepicker").datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : "zh-CN",
			todayBtn : "linked",
			autoclose : true,
			todayHighlight : true,
			endDate : new Date()
		}).on('changeDate', function(e) {
			var startTime = e.date;
			$("#datepicker2").datetimepicker('setStartDate', startTime);
		});
		$("#datepicker2").datetimepicker({
			format : 'yyyy-mm-dd hh:ii',
			language : "zh-CN",
			todayBtn : "linked",
			autoclose : true,
			todayHighlight : true,
			endDate : new Date()
		}).on('changeDate', function(e) {
			var endTime = e.date;
			$('#datepicker').datetimepicker('setEndDate', endTime);
		});

		$(".logManager_table_radio_button").click(function() {

			//alert("提交表单");
			document.getElementById('logForm').submit();

		});

	});

	function selectChange() {
		var selectedValue = $('#pasteType  option:selected').val();
		document.getElementById("adType").length = 0;
		var adType = document.getElementById("adType");
		;
		$.ajax({
			type : "get",
			url : "AdminManagerLogical?info=getAdTypeList&selectedValue="
					+ selectedValue,
			dataType : "json",
			success : function(data) {
				var optionall = new Option("所有粘贴栏", "所有粘贴栏");
				adType.add(optionall);
				for (var i = 0; i < data.length; i++) {
					var selectIOptionValue = data[i];
					var option = new Option(data[i].postName, data[i].postId);
					adType.add(option);
				}
			},
		});
	}

	function selectChangeAd() {
		var selectedAdTypeValue = $('#adType  option:selected').val();
		var selectedPasteTypeValue = $('#pasteType  option:selected').val();
		document.getElementById("advertisement").length = 0;
		var advertisement = document.getElementById("advertisement");
		;
		$.ajax({
			type : "get",
			url : "AdminManagerLogical?info=getAdList&selectedAdTypeValue="
					+ selectedAdTypeValue + "&selectedPasteTypeValue="
					+ selectedPasteTypeValue,
			dataType : "json",
			success : function(data) {
				var optionall = new Option("所有广告", "所有广告");
				advertisement.add(optionall);
				for (var i = 0; i < data.length; i++) {
					var selectIOptionValue = data[i];
					var option = new Option(data[i].adId, data[i].adId);
					advertisement.add(option);
				}
			},
		});
	}

	function showPic(e, sUrl) {

		var x, y;

		x = e.clientX;

		y = e.clientY;

		document.getElementById("Layer1").style.left = x + 2 + 'px';

		document.getElementById("Layer1").style.top = y + 2 + 'px';

		document.getElementById("Layer1").innerHTML = "<img border='0' src=\"" + sUrl + "\">";

		document.getElementById("Layer1").style.display = "";

	}

	function hiddenPic() {

		document.getElementById("Layer1").innerHTML = "";

		document.getElementById("Layer1").style.display = "none";

	}
</script>
<style type="text/css">
.modal.fade {
	top: -100%;
	-webkit-transition: opacity 0.3s linear, top 0.3s ease-out;
	-moz-transition: opacity 0.3s linear, top 0.3s ease-out;
	-o-transition: opacity 0.3s linear, top 0.3s ease-out;
	transition: opacity 0.3s linear, top 0.3s ease-out;
}
.js-example-basic-multiple{
	width:160px;
}
</style>
</head>

<body>
	<jsp:include page="managertop.jsp" flush="true" />
	<table class="top_logo">
		<tr>
			<td class="STYLE1"><div align="center">
					<span class="STYLE7">广告管理</span>
				</div></td>

		</tr>
	</table>
	 <div id="Layer1" style="display: none; position: absolute; z-index: 100;"></div><!-- 此行代码用于图片浮现 -->
	<div style="text-align:center">
		<form class="form-inline" role="form"
			action="AdminManagerLogical?info=adManagerDelete" method="post"
			id="logForm">

			<div class="form-group ">
				<label for="pasteType">类别</label> <select name="pasteType"  class="js-example-basic-multiple"
					id="pasteType" onChange="selectChange()">
					<option value="所有类别">所有类别</option>
					<%
						for (int i = 0; i < scopeList.size(); i++) {
							String unitTypeId = scopeList.get(i);
					%>
					<option value="<%=unitTypeId%>">
						<%=new OperationData().getUnitTypeName(unitTypeId)%>
					</option>
					<%
						}
					%>
				</select>
			</div>
			<div class="form-group">
				<label for="adType">粘贴栏</label> <select name="adType" id="adType" class="js-example-basic-multiple"
					onChange="selectChangeAd()">
					<option value="所有粘贴栏">所有粘贴栏</option>
					<%
						for (int i = 0; i < postList.size(); i++) {
							String postName = postList.get(i).getPostName();
							int postId = postList.get(i).getPostId();
					%>
					<option value="<%=postId%>">
						<%=postName%>
					</option>
					<%
						}
					%>
				</select>
			</div>
			<div class="form-group ">
				<label for="advertisement">广告</label> <select name="advertisement"  class="js-example-basic-multiple"
					id="advertisement">
					<option value="所有广告">所有广告</option>
				</select>

			</div>
			<div class="form-group ">
				<label for="datepicker">开始日期</label> <input type="text"
					id="datepicker" name="datepicker">
			</div>
			<div class="form-group ">
				<label for="datepicker2">结束日期</label> <input type="text"
					id="datepicker2" name="datepicker2">
			</div>
			<button type="submit"
				class="btn btn-default logManager_table_radio_button">删除</button>

		</form>
	</div>
	<br>
	<br>


	


</body>
<script type="text/javascript">
	$(document).ready(function() {
		$(".js-example-basic-multiple").select2();
	});
</script>
</html>
