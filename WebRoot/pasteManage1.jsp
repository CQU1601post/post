<%@ page pageEncoding="utf-8" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<jsp:directive.page import="java.util.List"/>
<jsp:directive.page import="allClasses.*"/>
<jsp:directive.page import="logicalConduct.*"/>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

List list=(List)request.getAttribute("list");

AdminLogic  data=new AdminLogic();
List<Integer>groupList= data.getPasteGroup();
int[] userIds=new int[data.userIds().length];
int[] unitIds=new int[data.unitIds().length];
userIds=data.userIds();
unitIds=data.unitIds();
String unit="";//提示信息
String user="";
for(int i=0;i<userIds.length;i++){
	user=user+userIds[i]+":"+data.userName(userIds[i]) +" ";	
}
for(int i=0;i<unitIds.length;i++){
	unit=unit+unitIds[i]+":"+data.unitName(unitIds[i]) +" ";
}
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>粘贴栏管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	
	
	<style type="text/css">
<!--
.p {
	font-size: 24px;
	font-style: italic;
	color: #006600;
}
.pasteGroup {
    display:none;
   position: absolute; 
    width: 400px;
    height: 100px;
    z-index: 1;
    border: solid #7A7A7A 4px;
    background-color:silver;
}


#pasteGroupid {
width: 100px;
}
.pasteManage_pasteGroup_input_insert{
      cursor: pointer;
}

.pasteManage_pasteGroup_span_delete #span {
    position: absolute;
    right: 0px;
    cursor: pointer;
}
-->
</STYLE>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript " src="js/bootstrap.min.js"></script>
<script type="text/javascript " src="js/jquery-ui.js"></script>
<script type="text/javascript">
$(function(){
    $("#updateModal").draggable();
    $("#updateModal").resizable();
    $("#updateModal_updateButton").click(function(){
        var pasteGroupInput=$(".pasteGroupInput").val();
        var id=$(".pasteManager_pasteGroup_input").val();
        var oldGroupId=$(".pasteManager_pasteGroup_oldGroupId").val();
        var options=$(".pasteGroupId option:selected"); 
        var option=$(".pasteGroupId").val();
       
        $.ajax({
            type:"get",
            data:options.val(),
            url:"AdminManagerLogical?info=updatePasteGroupId&newgroupid="+options.val()+"&id="+id+"&oldGroupId="+oldGroupId,
            success:function(data){
             
               $("#updateModal").modal("hide");
               alert("修改成功");
            }
        });
    });
   
});

</script>
<script type="text/javascript">
function changeGroupID(id,oldGroupId){
   $(".pasteManager_pasteGroup_input").val(id);
   $(".pasteManager_pasteGroup_oldGroupId").val(oldGroupId);
 //   $(".pasteGroup").fadeIn("slow");
    $("#updateModal").modal("show");
 
}
	function change(id,name){		
		var newName=null;
		newName=prompt("请输入粘贴栏名",name);
		while(newName==null || newName==" "){
			alert('输入的粘贴栏名不能为空');
			newName=prompt("请输入粘贴栏名",name);   		
		}		
		
		var cn=document.getElementById(id);
		cn.href="AdminManagerLogical?info=updatePaste&newName="+newName+"&id="+id;  
	}
	
	   
	function insert(){
		var unit_name=null;
		var newType=null;
		var paste_name=prompt("请输入粘贴栏名称","");
		while(paste_name==null||paste_name==" "||paste_name==""){
			alert('输入的名字不能为空');
     		paste_name=prompt("请输入粘贴栏名称",name);     		
		}
		var unitName=prompt("请输入所属单位名称","");
		while(unitName==null ||unitName==" "||unitName==""){
			alert('输入的类别名不能为空');
     		unitName=prompt("请输入所属单位名称","");     		
		}
		var userName=prompt("请输入用户名：","");
		while(userName==null ||userName==" "||userName==""){
			alert('输入的类别名不能为空');
     		userName=prompt("请输入用户Id：","");     		
		}
		//alert("333");
		var cn=document.getElementById("add");
		cn.href="AdminManagerLogical?info=insertPaste&unitName="+unitName+"&paste_name="+paste_name+"&userName="+userName;  		
	}
</script>
  </head>
  
  <body>
  <jsp:include page="managertop.jsp" flush="true" />
  <p align="center" class="p">粘贴栏管理</p>
  
     <p align="center"> 
     	<a href=""  onclick="insert()"id="add">添加粘贴栏</a>
     </p>
  <br>
  <br>
   <table  align="center" >
    <tr align="center">
   		<td width="100" align="center">粘贴栏编号</td>     		
  	    <td width="150" align="center">粘贴栏名称</td>	
  	    <td width="100" align="center">单位id</td> 
  	    <td width="100" align="center">用户id</td>	    
    	<td width="100" align="center">开设时间</td>
        <td width="100" align="center">对应类别分组</td>
  		<td width="200" align="center">操作  </td>  		
    </tr>
    <c:if test="${list!=null }">   
    <% 
   		for(int j=0;j<list.size();j++){
      		Post p=(Post)list.get(j);
      		int unitId=p.getUnitId();
   			String unitName=data.unitName(unitId);
   			unitName=unitId+":"+unitName;//同时显示类别标号和名称
   			
   			int userId=p.getUserId();
   			String userName=data.userName(userId);
   			userName=userId+":"+userName;//同时显示类别标号和名称
    %>
    <tr>
  	 		<td width="100" align="center"><%=p.getPostId()%></td>    	 		
  			<td width="150" align="center"><%=p.getPostName() %></td>	  			
  			<td width="100" align="center"><%=unitName%></td>
  			<td width="100" align="center"><%=userName%></td>
  			<td width="100" align="center"><%=p.getCreateTime() %></td>			
  			<td width="100" align="center"><%=data.typeGroupName(p.getGroupId()) %></td>            
  			<td>
  				<table width="200" >  
  				<tr align="center">	 		
    				<td width="50" align="center"><a href=" " onclick="change('<%=p.getPostId()%>','<%=p.getPostName() %>')"  id="<%=p.getPostId()%>">修改</a></td>
    				  		
     				<td width="50" align="center"><a href="AdminManagerLogical?info=delPaste&pasteId=<%=p.getPostId()%>">删除 </a></td>
                    <td width="100" align="center"><a href=" javascript:void(0)" onclick="changeGroupID('<%=p.getPostId()%>','<%=p.getGroupId() %>')"   class="pasteManager_a">修改分组</a></td>
    			</tr>
    			</table>
    		</td>
   	</tr>    
     <%
   }
    %>
  </c:if>
  </table>     
     <div class="pasteGroup">
        <div class="pasteManage_pasteGroup_span_delete">
            <span id="span" >关闭</span>
        </div>
        <input type="hidden" class="pasteManager_pasteGroup_oldGroupId">
        <input type="hidden" class="pasteManager_pasteGroup_input">
     请输入新组号
     <select id="pasteGroupid">
                        
                        <%
                            for(int i=0;i<groupList.size();i++)
                                 {
                                  int groupid=groupList.get(i);
                        %>
                        <option value="<%=groupid%>">
                            <%=data.typeGroupName(groupid) %>
                        </option>
                        <%
                            }
                        %>

                </select>
                 <input type="button" value="修改"
            class="pasteManage_pasteGroup_input_insert"
        >
        </div>
     </div>
     
     
     <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header"  >
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                      修改
                </h4>
            </div>
            <div class="modal-body">
              <input type="hidden" class="pasteManager_pasteGroup_oldGroupId">
             <input type="hidden" class="pasteManager_pasteGroup_input">
                 请输入新组号
            <select id="pasteGroupid" class="pasteGroupId">
                        
                        <%
                            for(int i=0;i<groupList.size();i++)
                                 {
                                  int groupid=groupList.get(i);
                        %>
                        <option value="<%=groupid%>">
                            <%=data.typeGroupName(groupid) %>
                        </option>
                        <%
                            }
                        %>

                </select>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                </button>
                <button type="button" class="btn btn-primary" id="updateModal_updateButton">
                    提交更改
                </button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
     
  </body>
</html>
