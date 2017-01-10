<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*"%> 
<jsp:directive.page import="allClasses.Unit" /> 
<jsp:directive.page import="allClasses.User" /> 
<jsp:directive.page import="jdbc.SearchAboutPost" /> 
<jsp:include page="top.jsp" flush="true" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
User user=(User)session.getAttribute("user");
String userName=user.getUserName();
System.out.println("userName:"+userName);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>myAttentions</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
#attention{color:white;}
#attention:hover{color:#76EE00;}
</style>
  </head>
  
  <body>
  <br><br><br>
  <center>
     <p style="background-color:black;width:500px;hight:50px;line-height:50px;color:white;opacity:0.8;font-family:Microsoft YaHei;font-size:1.5em;">${sessionScope.user.userName}，您所关注的粘贴栏为：</p>
     <div style="background-color:#FF8247;width:500px;color:white;opacity:0.5;font-family:Microsoft YaHei;font-size:1.5em;">
     
     <c:if test='${posts.size()>0}'><!-- 如果有粘贴栏信息，则显示--> 
       <c:forEach var='post' items='${posts}'>
       	<c:set var='unitId' value='${post.unitId}'></c:set>
       	<br>
       	<%
       		int unitId=(Integer)pageContext.getAttribute("unitId");
       		Unit unit=(Unit)new SearchAboutPost().unitOfId(unitId);
       		String unitName=unit.getUnitName();
       	%>
        <p><%=unitName%>-><a id="attention" href='PostLogical?functionName=enterPost&adTypeId=0&postId=${post.postId}'>${post.postName}</a>  
         <a id="attention" href='UserLogical?functionName=deleteMyAttention&postId=${post.postId}'>删除</a>       

        <br>
        <hr>
       </c:forEach>
     </c:if>
     <c:if test='${posts.size()<=0}'>
     <br>
             <p>您尚未关注任何粘贴栏</p>
             <br>
             <br>
     </c:if>
     
     </div>
  </center>
  </body>
</html>
