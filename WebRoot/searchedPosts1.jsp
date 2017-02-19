<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.OperationData"%>
<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*"%> 
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="allClasses.*" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String searchText=request.getParameter("searchText");
System.out.println("页面内searchText："+searchText);
searchText=new String(searchText.getBytes("iso-8859-1"),"utf-8");
List<Map<String, List<Post>>> unitsAndPosts=(List<Map<String, List<Post>>>)request.getAttribute("unitsAndPosts");
OperationData operationData=new OperationData();

%>
<jsp:include page="top.jsp" flush="true" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>posts contain searchText</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="css/showPosts.css">
  </head>
  
  <body>

	搜索字段为：<%=searchText %> 搜索结果为：
	<!-- 如果有包含搜索字段的单位或粘贴栏则循环 -->
	<c:if test="${unitsAndPosts.size()>0}">
	<%
	for(int i = 0; i < unitsAndPosts.size(); i++){
		
	Map<String, List<Post>> map = (Map<String, List<Post>>)unitsAndPosts.get(i);
		for (Map.Entry<String, List<Post>> entry : map
					 .entrySet()) {
					
	 %>
	 <div class='unit_post'>	 	 
			<table align="center" class="post_title">
				<tr align="left">  
					<td><%=entry.getKey().split("_")[1] %></td>
				</tr>
			</table>
	 <hr />	
			<table align="center" class="post_name">
				<!-- 如果该单位下有粘贴栏，则循环遍历 -->
				<tr>
				<%if(entry.getValue().size()>0){ %>
					<div class='post'>
					<%for(Iterator iterator2 = entry.getValue()
					 .iterator(); iterator2.hasNext();) { 
					 Post post2 = (Post) iterator2.next();
					 
					 %>
					
					<a href="PostLogical?functionName=enterPost&adTypeId=0&postId=<%=post2.getPostId() %>&unitTypeId=<%=entry.getKey().split("_")[0] %>" target="_blank"><%=post2.getPostName() %></a>	
					
					
				<%}%></div>
				<%}%>
				</tr>
				<tr>
				<!-- 如果单位下没有粘贴栏则输出提示字段 -->
			   	<%if(entry.getValue().size()<0){ %>
			    	<div class="post_info"><a>该单位下没有粘贴栏</a></div>	    	 
			    <%} %>
			    </tr>
			</table>
			</div>
				
				
					
	 
	 <%
	 } }%>
		
	</c:if>
	<c:if test="${unitsAndPosts.size()<=0}">
		<div class="post_info"><a>没有包含该字段的单位或粘贴栏</a></div>
	</c:if>
</body>
</html>
