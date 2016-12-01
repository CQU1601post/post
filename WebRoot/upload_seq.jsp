<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*"%> 
<%@ page language="java" import="java.util.*"%>  
<jsp:directive.page import="allClasses.*" /> 
<jsp:directive.page import="jdbc.*" />
<jsp:directive.page import="tool.GetCurrentTime"/>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	String adTypeName=request.getParameter("adTypeName");
	String postName=request.getParameter("postName");
	adTypeName=new String(adTypeName.getBytes("iso-8859-1"),"utf-8");
	postName=new String(postName.getBytes("iso-8859-1"),"utf-8");
	System.out.println("adTypeName:"+adTypeName+"postName:"+postName);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="css/upload.css" type="text/css">
	<script type="text/javascript" src="js/jquery-1.4.4.js" ></script>
	<script type="text/javascript" src="js/upLoad.js" ></script>
	<script type="text/javascript" src="js/Sortable.js"></script>
	<title>upLoad ads</title>
<script type="text/javascript"  >
$(function() {
	var path,
	FileReader = window.FileReader; 
	count=0;//记录图片张数

	function addImg(){
		if($(':file').size()>=10){//判断当前照片的个数，如果已经有十张图片，则不能继续添加
			alert('一个最多只能上传十张图片');
		}
		else{
			var $tr=$("<li class='img_upload'></li>");
			var $tdFile=$("<div class='file_upload'></div>");
			var $file=$("<input type='file' id='file' name='file'>");//增加file
			$tdFile.append($file);
			var $dele=$("<div class='dele'><img src='images/delete.jpg'/></div>");//增加删除按钮
			var $img=$("<input type='image' value='' class='image'/>");//样式	
	 		$file.change(function() {//图片的路径改变时则在显示框显示图片
				var file=$file.val().toLowerCase();//取到的并不是图片在本机上的保存路径，但是可以通过这个格式判断是不是图片
				var end1=file.substring(file.length-4);
				var end2=file.substring(file.length-3);
				if(end1!='jpeg'&end2!='jpg'&end2!='bmp'&end2!='gif'&end2!='png'){//不符合格式则提示并清除
					alert("只允许上传格式为jpg，jpeg，bmp，gif的文件");	
					/*$file.val('');*/	
					/*$img.attr('src','');*/	
				}
				else{
					if(window.File && window.FileReader && window.FileList && window.Blob) {
						var reader = new FileReader(),
						file = this.files[0]; 	
						reader.readAsDataURL(file);			
						reader.onload = function(e){				
							//var td=$("<td style='width:200'></td>");//声明一个<td>
							var src= e.target.result;//获取的图片路径 
							//console.log(src);	 	
							//$img=$("<input name='image' type='image' src='"+src+"' style='"+style+"'>");//图片   
							$img.attr('src',src);
							$tr.addClass('shine');
							//$img.style('display','block');			
						};
						addImg();						
					}
					else {
						path = $(this).val();
						if (/"\w\W"/.test(path)) {
							path = path.slice(1,-1);
						}
						alert(path);
						clip.attr("src",path);
						alert(clip[0].src);
					}
				}			 
			});
			$dele.click(function(){//删除按钮
				$tr.remove();
			}); 	
			$("#ImgList").append($tr);
			$tr.append($img).append($tdFile).append($dele);
		}
	}

	$("#addButton").click(function(){
		if($(':file').size()==0||$('.shine').length==$(':file').size()){
			addImg();
		}
	});

	addImg();

	var el = document.getElementById('ImgList');
	var sortable_1 = Sortable.create(el,{
		animation: 500
	});		
});
function changeType(){
	history.go(-1);
}
</script>

</head>
<body>
    <div class="step">
		<!-- <div class="not_current">
			<br>第一步：选择上传广告的分类
		</div> -->
		<div class="current_step">第二步：选择上传的图片</div>
		<!-- <div class="not_current">第三步：完成上传</div> -->
	</div>
		
<!-- 如果没有传入粘贴栏跟类别Id，则进入上传第一步 -->
	<c:if test="${null==param.adTypeId||null==param.postId}">
		<c:if test='${null==sessionScope.user||sessionScope.user.userType<=0 }'>
			<%
				response.sendRedirect("upLoad1.jsp");
		 	%>
		 </c:if>
		 <c:if test='${sessionScope.user.userType>0 }'>
			<%
				response.sendRedirect("privateUpLoad.jsp");
		 	%>
		 </c:if>
	</c:if>
	
	<c:if test="${null!=param.adTypeId&&null!=param.postId}">
	<div class="main_">
		<p class="upload_info">
			上传广告到：<span><%=postName%></span> 所选类别：<span><%=adTypeName%></span>
		</p>		
		<div class="but1">
			<input tabIndex=3 id='addButton' type='button' class="button" value='添加图片'>
			&nbsp;&nbsp;&nbsp;
			<input tabIndex=3 type='button' size=3 name=pic value='清除所有图片' class="button" onclick='deleteAll()'>
			&nbsp;&nbsp;&nbsp;
			<input type='button' value="修改类别" class="button" onclick="changeType()">
			&nbsp;&nbsp;&nbsp;			
			
			
		</div>
			<!-- 图片展示区域 -->		
		<!-- 将关于图片上传的信息都用form提交给服务器 -->
		<form action="PostLogical?functionName=upLoad" method='post' enctype="multipart/form-data" onsubmit='return checkImageNum();'>
			
				<!-- 图片上传类别、粘贴栏、时间信息 -->
			<input type='text' value='${param.adTypeId}' name='adTypeId' id='adTypeId' style='display:none'> 
			<input type='text' value='${param.postId}' name='postId' id='postId' style='display:none'>		 
            
		 	<c:set var='adTypeName' value='<%=postName%>'></c:set>	 	
		 	<!-- 如果是上传广告到自己的专栏，则多传一个字段privatePost，从而区分专栏广告与公共粘贴栏广告 -->
			<c:if test='${adTypeName=="您的专栏"}'>
				 <input type='text' value='true' name='privatePost' id='privatePost' style='display:none'> 
			</c:if>
			<div>
				<fieldset style="min-height:270;width:810;">
					<legend>图片展示</legend>
					<ul id="ImgList">						 
					</ul>
				</fieldset>
			</div>
			<div class='note'>关键信息：
				<input type='text' value='' name='remark' id='remark' onBlur='checkRemark()'> 
				<p class="error">注：请将最关键的信息写在前20个字中！</p>
			</div>
			<div class='but'>
            	<input type="submit" value="完成" class="button">
            </div>		
		</form>
	</div>
	</c:if>
</body>
</html>