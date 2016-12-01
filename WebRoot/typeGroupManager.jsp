<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="java.util.List"/>
<jsp:directive.page import="allClasses.*"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List list=(List)request.getAttribute("list");
String delete="delete";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'typeGroupManager.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link href="css/adminManager.css" rel="stylesheet" type="text/css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function delete1(id){
    
    var r=confirm("删除此组吗？删除后此组下所有的广告都要被删除");
    if (r==true)
      {
        var cn=document.getElementById("delete"+id);
        cn.href="AdminManagerLogical?info=delTypeGroup&typeGroupId="+id; 
      }
    else{
        var cn=document.getElementById("delete"+id);
        cn.href="AdminManagerLogical?info=typeGroupShow"; 
    }
 

}
    function change(id,name){
        var newType=null;       
        newType=prompt("请输入你要修改的类别",name);
        while(newType==null ||newType==" "||newType==""){
            alert('输入的类别名不能为空');
            newType=prompt("请输入你要修改的类别",name);          
        }
        var cn=document.getElementById(id);
        cn.href="AdminManagerLogical?info=updateTypeGroup&typeGroupName="+newType+"&typeGroupId="+id;  
    }

    function add(){
        var newType=null;       
        newType=prompt("请输入组别名"," ");
        while(newType==null ||newType==" "){
            alert('输入的类别不能为空');
            newType=prompt("请输入组别名"," ");           
        }
        var cn=document.getElementById("add");
        cn.href="AdminManagerLogical?info=insertTypeGroup&typeGroupName="+newType;  
    }

</script>
  </head>
  
  <body>
    <jsp:include page="managertop.jsp" flush="true" />
    <table class="top_logo">
   <tr>
    <td class="STYLE1"><div align="center"><img src="images/logo02.png" width="252" height="150" align="bottom" /><span class="STYLE7">&nbsp;广告组类别管理</span></div></td>
  </tr>
   </table>
     
  <p align="center" class="operation">
      <a href=" " id="add" onclick="add()" style="background-color:black;border-radius:3px 3px;display:block;width:100px;height:20px;color:white;opacity:0.7">添加</a>
    </p>
      <br>
   <table   class="table_content" >
    <tr class="tr_one">    
        <td width="150" align="center">组Id</td>       
        <td width="150" align="center">组别名</td>         
        <td width="200" align="center">操作  </td>
        <td></td>
    </tr>
    <c:if test="${list!=null }">   
    <% 
        for(int j=0;j<list.size();j++){
            TypeGroup t=(TypeGroup)list.get(j); 
    %>
    <tr  class="tr_two">
            <td width="150" align="center"><%=t.getId()%></td>            
            <td width="150" align="center"><%=t.getName()%></td>   
            <td bgcolor="#D1EEEE" align="center">
                <table width="300" >  
                <tr align="center">         
                    <td width="100" align="center"><a href=" " onclick="change('<%=t.getId()%>','<%=t.getName() %>')"  id="<%=t.getId()%>" >修改</a></td>
                            
                    <td width="100" align="center"><a href=" " onclick="delete1('<%=t.getId()%>')"  id="<%=delete+t.getId()%>" >删除 </a></td>
                      <td width="100" align="center"><a href="AdminManagerLogical?info=typeShow&GroupId=<%=t.getId() %>" >查看</a>
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
