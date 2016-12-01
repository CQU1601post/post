<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" import="java.sql.*" errorPage="" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>发布信息</title>

<style >
.top-a{
    color:gray;
    text-decoration: none;
    font-size: 10px;
}
.top-a:hover{
    color:#970102;
}
.top{
    background:#F2F2F2;
    width:100%;
    height:50px;
    opacity:0.8;
    font-family: "Microsoft YaHei",tahoma,arial,'Hiragino Sans GB','\5b8b\4f53',sans-serif;
    font-size: 10px;
}
body{
    width:100%;
    height:100%;
}
.navigation{
    bgcolor:#FFA07A;
}
</style>
</head>
<body >
<div class="top">
<table class="navigation" width="1201px" height="50px" border="0" align="center" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
   <tr  width="800px" height="50px" font-family='"微软雅黑", tahoma;'>
  
     <td width="50"  rowspan="2"></td>
     <td width="180"  rowspan="2"><div align="center"></td>
     <td width="50"  rowspan="2"></td>
     <td width="140"  rowspan="2"><div align="center"><a href="adminManager.jsp" class="top-a">审核信息管理</a></div></td>    
     <td  width="120"  rowspan="2"><div align="center"><a href="AdminManagerLogical?info=showUser" class="top-a">注册用户管理</a></div></td>
     <td width="120" rowspan="2"><div align="center"><a href="AdminManagerLogical?info=pasteShow" class="top-a">粘贴栏管理</a></div></td>
     <td width="120" rowspan="2"><div align="center"><a href="AdminManagerLogical?info=unitShow" class="top-a">单位管理</a></div></td>       
     <td width="120"  rowspan="2"><div align="center"><a href="AdminManagerLogical?info=typeGroupShow" class="top-a">类别管理</a></div></td> 
     <td width="150" rowspan="2"><div align="center"><a href="AdminManagerLogical?info=pasteTypeShow" class="top-a">单位所属类别管理</a></div></td>       
     <c:if  test="${!empty sessionScope.adminInfo}">
     <td width="180" rowspan="2"></td>
     <td width="180"  rowspan="2">
     <div align="center" style="color:gray;font-size:10px;">
     <span style="color:#FAA07D;">${sessionScope.adminInfo.name }</span>欢迎你,
     <a href="AdminManagerLogical?info=adminloginout" class="top-a">退出</a>
     </div>
     </td>
     </c:if>
    </tr>
    
   </table>
   
  </div>
 

 </body>
</html>