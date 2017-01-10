<%@ page pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*"%>
<%@ page language="java" import="java.util.*"%>
<jsp:directive.page import="allClasses.*" /> 
<jsp:directive.page import="jdbc.*" /> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	int postId=Integer.parseInt(request.getParameter("postId"));
	List<PrivateAd> ads=(List<PrivateAd>)new SearchAboutPost().adsOfPrivatePost(postId);//获取专栏中所有广告
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<base href="<%=basePath%>">
<title>body of the post</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
 
<script type="text/javascript" src="js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="js/editPrivatePost/jquery.sortable.js"></script> 
<link rel="stylesheet" type="text/css" href="css/editPrivatePost.css">
<script type="text/javascript">
	function saveOrder(){
		var images=document.getElementsByName("image");
		var adIds='';//记录现有的adId顺序
		for(var i=0;i<images.length;i++){			
			//alert("images.value:"+images[i].value);
			adIds=adIds+images[i].value+"_";
		}
		//alert(adId);
		$('#save').attr('href','UserLogical?functionName=saveOrderOfAds&adId='+adIds);
	}
</script>
<style type="text/css">
#gbin1-list li{
	opacity: 1;
	border: 2px solid white !important;
}
#gbin1-list .checked{
	opacity: 0.5;
	border: 2px solid red !important;
}
#commit .warn{
	color: #4682B4;
	font-weight: bold;
}
#commit .upload_button{
	width: 100px;
	height: 50px;
	line-height: 50px;
	text-align: center;
	margin: 20px 50px 0 50px;
	font-size: 18px;
	border-radius: 10px;
	overflow: hidden; 
	background: -webkit-linear-gradient(#7cb8f3, #2d52ae); /* Safari 5.1 - 6.0 */
	background: -o-linear-gradient(#7cb8f3, #2d52ae); /* Opera 11.1 - 12.0 */
	background: -moz-linear-gradient(#7cb8f3, #2d52ae); /* Firefox 3.6 - 15 */
	background: linear-gradient(#7cb8f3, #2d52ae); /* 标准的语法 */ 
	color: white;
	-moz-user-select:none;
	-webkit-user-select:none;
	user-select:none;
	font-family: 'yahei';
	border: none;  
}
</style>
</head>
<body>
 <section>
	<ul class="gbin1-list clearfix" id="gbin1-list">
		<c:forEach items='<%=ads%>' var='ad'>
			<li><input type='image'  src="${ad.firstPicAddr}"  value='${ad.adId}' name='image'/></li>
		</c:forEach>		
	</ul>
	
	<div style="clear:both" id="msg"></div>
 </section>
 <div id="commit">
 	 <a href='' id='save'><input class="upload_button" type='button' value='保存' onclick='saveOrder()'></a><span class="warn">左键点击选择图片，右键点击更换顺序</span>
 </div>

	
</body>
<script type="text/javascript">
//提示广告已经改变位置
    $('.gbin1-list').sortable().bind('sortupdate', function() {
		$('#msg').html('position changed').fadeIn(200).delay(1000).fadeOut(200);
	});

	document.oncontextmenu = function(event){  /*取消浏览器默认右键行为*/
		console.log(event.target.nodeName);
		if(event.target.nodeName=='INPUT'){
			return false;
		}else{
			return true;
		}
	}

	var lis = document.getElementById('gbin1-list').querySelectorAll('li');
	
	[].forEach.call(lis,function(li){
		li.addEventListener('mousedown',function(event){
			var this_ = this;
          	handleClick(this_,event);
		},false);
	})

	function handleClick(el,event){
		if(event.button == 0){		/*左键*/
			el.classList.add('checked');
		}else if(event.button == 2){		/*右键*/
			var parent = el.parentNode;
			var lis = parent.querySelectorAll('.checked');

			[].forEach.call(lis,function(li){
				parent.insertBefore(li,el);
				li.classList.remove('checked');
			})
		}
	}
	
</script>
</html>
