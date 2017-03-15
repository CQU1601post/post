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
    
    <title>单位所属类别管理</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/adminManager.css" rel="stylesheet" type="text/css" />
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
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
        cn.href="AdminManagerLogical?info=updatePasteType&typeName="+newType+"&typeId="+id;  
            
        }
    }
    function add(){
        var newType=null;       
        newType=prompt("请输入类别名"," ");
      /*   while(newType==null ||newType==" "){
            alert('输入的类别不能为空');
            newType=prompt("请输入类别名"," ");           
        } */
        if(newType==null ||newType==" "){
            alert('输入的类别不能为空');
        }else{
            var cn=document.getElementById("add");
            cn.href="AdminManagerLogical?info=insertPasteType&typeName="+newType;  
        }
       
    }
</script>
  </head>
  
  <body>
  <jsp:include page="managertop.jsp" flush="true" />
  <table class="top_logo">
   <tr>
    <td class="STYLE1"><div align="center"><span class="STYLE7">单位所属类别管理</span></div></td>
  </tr>
   </table>
 
  <p align="center" class="operation">
      <a href="javascript:void()" id="add" onclick="add()">添加</a>
    </p>
  <br>
   <table  class="table_content" >
    <tr class="tr_one">    
        <td width="150" align="center">类别Id</td>       
        <td width="150" align="center">类别名</td>         
        <td width="200" align="center">操作  </td>
    </tr>
    <c:if test="${list!=null }">   
    <% 
        for(int j=0;j<list.size();j++){
            UnitType t=(UnitType)list.get(j); 
    %>
    <tr  class="tr_two">
            <td width="150" align="center"><%=t.getUnitTypeId()%></td>              
            <td width="150" align="center"><%=t.getUnitTypeName()%></td>   
            <td bgcolor="#D1EEEE" align="center">
                <table width="200" >  
                <tr align="center">         
                    <td width="100" align="center"><a href="javascript:void()" onclick="change('<%=t.getUnitTypeId()%>','<%=t.getUnitTypeName() %>')"  id="<%=t.getUnitTypeId()%>" >修改</a></td>
                            
                    <td width="100" align="center"><a href="AdminManagerLogical?info=delPasteType&typeId=<%=t.getUnitTypeId() %>">删除 </a></td>
                </tr>
                </table>
            </td>
    </tr>    
     <%
   }
    %>
  </c:if>
  </table>     
     
     
     
     
  </body>
</html>