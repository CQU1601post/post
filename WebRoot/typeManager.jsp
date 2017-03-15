<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="java.util.List"/>
<jsp:directive.page import="allClasses.*"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

List list=(List)request.getAttribute("list");
Object Groupid=request.getSession().getAttribute("GroupId");
String delete="delete";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>广告类别管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<style type="text/css">
<!--
.p {
	font-size: 24px;
	font-style: italic;
	color: #006600;
}
-->
</STYLE>

<script type="text/javascript">
function delete1(id){
         
             var r=confirm("删除此类别吗？删除后此类别下所有的广告都要被删除");
             if (r==true)
               {
                 var cn=document.getElementById("delete"+id);
                 cn.href="AdminManagerLogical?info=delType&typeId="+id; 
               }
             else{
                 var cn=document.getElementById("delete"+id);
                 cn.href="AdminManagerLogical?info=typeShow"; 
             }
          
     
     }
	function change(id,name){
		var newType=null;		
		newType=prompt("请输入你要修改的类别",name);
		/* while(newType==null ||newType==" "||newType==""){
			alert('输入的类别名不能为空');
     		newType=prompt("请输入你要修改的类别",name);     		
		} */
		if(newType==null ||newType==" "||newType==""){
		    alert('输入的类别名不能为空');
		}else{
		var cn=document.getElementById(id);
		cn.href="AdminManagerLogical?info=updateType&typeName="+newType+"&typeId="+id;  
		}
	}

	function add(){
		var newType=null;		
		newType=prompt("请输入类别名"," ");
		/* while(newType==null ||newType==" "){
			alert('输入的类别不能为空');
     		newType=prompt("请输入类别名"," ");     		
		} */
		if(newType==null ||newType==" "){
		    alert('输入的类别不能为空');
		}else{
		var cn=document.getElementById("add");
		var GroupId=document.getElementById("HiddenGroupId").value;
		cn.href="AdminManagerLogical?info=insertType&typeName="+newType+"&GroupId="+GroupId;  
		    
		}
		
	}

</script>
  </head>
  
  <body>
  <jsp:include page="managertop.jsp" flush="true" />
<table class="top_logo">
   <tr>
    <td class="STYLE1"><div align="center"><span class="STYLE7">广告类别管理</span></div></td>
  </tr>
 </table>
   <p align="center">
      <a href=" " id="add" onclick="add()">添加新广告类别</a>
     </p>
  <br>
   <table  align="center" >
    <tr align="center">    
   		<td width="150" align="center">类别Id</td>       
    	<td width="150" align="center">类别名</td>     	
  		<td width="300" align="center">操作  </td>
  		<td></td>
    </tr>
    <c:if test="${list!=null }">   
    <% 
   		for(int j=0;j<list.size();j++){
   			AdType t=(AdType)list.get(j); 
    %>
    <tr>
  	 		<td width="150" align="center"><%=t.getAdTypeId()%></td>  	 		
   	 		<td width="150" align="center"><%=t.getAdTypeName()%></td>   
  			<td>
  				<table width="300" >  
  				<tr align="center">	 		
    				<td width="100" align="center"><a href=" " onclick="change('<%=t.getAdTypeId()%>','<%=t.getAdTypeName() %>')"  id="<%=t.getAdTypeId()%>" >修改</a></td>
    				  		
     				<td width="100" align="center"><a href=" "  onclick="delete1('<%=t.getAdTypeId() %>')"   id="<%=delete+t.getAdTypeId()%>">删除 </a></td>
    		          
            	</tr>
    			</table>
    		</td>
   	</tr>    
     <%
   }
    %>
  </c:if>
  </table>     
     
     
   <input type="hidden"  id="HiddenGroupId" value="<%=Groupid%>">
     
  </body>
</html>
