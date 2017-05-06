<%@page import="jdbc.SearchAboutPost"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<%@page import="jdbc.OperationData"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*"%> 
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="allClasses.*" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String searchText=request.getParameter("searchText");

searchText=new String(searchText.getBytes("iso-8859-1"),"utf-8");
System.out.println("页面内searchText："+searchText);
List<Map<String, Map<Integer,List<Ad>>>> unitsAndPosts=(List<Map<String, Map<Integer,List<Ad>>>>)request.getAttribute("unitsAndPosts");
OperationData operationData=new OperationData();
SearchAboutPost searchAboutPost=new SearchAboutPost();

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
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
  </head>
  <script type="text/javascript">
  $(function(){
      $(".SearchedPost_mui-switch").click(function(){      //需要这页面没有其他checkbox
          if($(" input[type='checkbox']").is(':checked')){
             $(".ControlDisplay2").hide();
          }else{
              $(".ControlDisplay2").show();
          }
          
      });
  });

  </script>
  <body>
  <div class='button_Control_img'>
  查看图片按钮
  <input  class="SearchedPost_mui-switch mui-switch-animbg" type="checkbox" >
  </div>

	搜索字段为：<%=searchText %> 搜索结果为：
	<!-- 如果有包含搜索字段的单位或粘贴栏则循环 -->
	<c:if test="${unitsAndPosts.size()>0}">
	<%
	for(int i = 0; i < unitsAndPosts.size(); i++){
		
	    Map<String, Map<Integer,List<Ad>>> map = (Map<String, Map<Integer,List<Ad>>>)unitsAndPosts.get(i);
		for (Map.Entry<String, Map<Integer,List<Ad>>> entry : map
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
				
					<%for(Map.Entry<Integer,List<Ad>>entry2:entry.getValue().entrySet()) { 
					    	int post2= entry2.getKey();
                            Post post=searchAboutPost.postOfId(post2);
                            List<Ad> ads=entry2.getValue();
					 %>
					   <div class='post'>
		<%-- 			<a class="post_a" href="PostLogical?functionName=enterPost&adTypeId=0&postId=<%=post.getPostId() %>&unitTypeId=<%=entry.getKey().split("_")[0] %>" target="_blank"><%=post.getPostName() %></a>	 --%>
					  
                      
                     <div class='ControlDisplay'>
                     <a class="post_a" href="PostLogical?functionName=enterPost&adTypeId=0&postId=<%=post.getPostId() %>&unitTypeId=<%=entry.getKey().split("_")[0] %>" target="_blank"><%=post.getPostName() %></a>    
                       <%for(Iterator iterator=ads.iterator();iterator.hasNext();){ 
                                   Ad ad=(Ad)iterator.next();
                                   List<Pic> pics=searchAboutPost.picsOfAd(ad.getAdId());
                                   Pic pic=pics.get(0);
                                   %>
                                    <div class='ControlDisplay2'>
                                 <a href="PostLogical?functionName=picsOfAd&adId=<%=ad.getAdId() %>&postId=<%=ad.getPostId() %>" target="_blank">
                                      <img  class="img" alt="点击查看" src="<%=pic.getPicAddr()%>"
                                      id="${ad['adId']}"/>
                                      
                                 </a> 
                                 </div>
                       <%} %>
                       </div>
                      
                      </div>
					 
				<%}%>
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
