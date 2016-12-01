<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="java.util.List"/>
<jsp:directive.page import="allClasses.*"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

List list=(List)request.getAttribute("list");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.1.1.js" ></script>
     <script type="text/javascript" src="js/jquery.json-2.2.js" ></script>
    <script type="text/javascript" src="js/registerManager.js"></script>
    <link href="css/adminManager.css" rel="stylesheet" type="text/css" />
    
    <title>注册用户管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	function change(id,name){
		var newType=null;		
		newType=prompt("请输入你要修改的用户等级",name);
		while(newType==null ||newType==" "||newType==""){
			alert('输入的类别名不能为空');
     		newType=prompt("请输入你要修改的用户等级",name);     		
		}
		var cn=document.getElementById(id);
		cn.href="AdminManagerLogical?info=changeUser&userType="+newType+"&userId="+id;  
	}

	
</script>
  </head>
  
  <body>
  <jsp:include page="managertop.jsp" flush="true" />
   <table class="top_logo">
   <tr>
    <td class="STYLE1"><div align="center"><img src="images/logo02.png" width="252" height="150" align="bottom" /><span class="STYLE7">&nbsp;注册用户管理</span></div></td>
  </tr>
   </table>
   <p align="center" class="operation">
      <a href="register.jsp" id="add" >注册新用户</a><br>
      <a href="javascript:void(0)" class="registerManager_table_a">批量删除 </a>
     </p>
   <table class="table_content" >
    <tr class="tr_one">    
   		<td width="125" align="center">用户Id</td>   
   		<td width="125" align="center">用户名</td> 
   		<td width="125" align="center">用户密码</td>     
    	<td width="125" align="center">用户等级</td>     	
    	<td width="125" align="center">邮件</td>  
    	<td width="125" align="center">联系电话</td>  
  		<td width="120" align="center">操作  </td>
        <td width="145" align="center"> 全选 <input type="radio" 
            name="userChoice" class="registerManager_table_radio_allChoice"
        /> 反选 <input type="radio" name="userChoice"   class="registerManager_table_radio_inverse"/></td>
       <!--  <td width="120" align="center"><a href="javascript:void(0)" class="registerManager_table_a">批量删除 </a></td> -->
    </tr>
    <c:if test="${list!=null }">   
    <% 
   		for(int j=0;j<list.size();j++){
   			User t=(User)list.get(j); 
    %>
    <tr  class="tr_two">
  	 		<td width="125" align="center" ><p class="registerManger_table_td_user"><%=t.getUserId()%></td>  	 		
   	 		<td width="125" align="center"><%=t.getUserName()%></td>   
   	 		<td width="125" align="center"><%=t.getPassword()%></td>  
   	 		<td width="125" align="center"><%=t.getUserType()%></td> 
   	 		<td width="125" align="center"><%=t.getEmail()%></td>   
   	 		<td width="125" align="center"><%=t.getPhone()%></td>  
            
  			<td bgcolor="#D1EEEE" align="center">
  				<table width="120">  
  				<tr align="center" >	 		
    				<td width="60" align="center"><a href=" " onclick="change('<%=t.getUserId()%>','<%=t.getUserType() %>')"  id="<%=t.getUserId()%>" >修改</a></td>
    				  		
     				<td width="60" align="center"><a href="AdminManagerLogical?info=delUser&userId=<%=t.getUserId() %>">删除 </a></td>
    			
                </tr>
    			</table>
    		</td>
            <td width="125" align="center"><input type="checkbox" name="userCheck" class="registerManager_table_input_checkbox"/> </td>
   	</tr>    
     <%
   }
    %>
  </c:if>
  </table>     
     
     
    
     
  </body>
</html>
