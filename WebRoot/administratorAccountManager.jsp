<%@page import="jdbc.OperationData"%>
<%@page import="allClasses.UnitType"%>
<%@page import="allClasses.Administrator"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    List administrators = (List) request.getAttribute("administrators");
    List<UnitType> unitTypes=new OperationData().getUnitTypes();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>管理员账号管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/adminManager.css" rel="stylesheet" type="text/css" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src='js/bootstrap.min.js'></script>

<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>


<link rel="stylesheet" href="css/bootstrap-multiselect.css" type="text/css"/>

<script type="text/javascript " src="js/administratorAccountManager.js"></script>
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
function deleteModel(id){
    $("#deleteModel-Hidden-Id").val(id);
    $('#deleteModal').modal('show');
    $('#deleteModal').draggable();
}
 
function updateModel(id){
    $("#updateModel-Hidden-Id").val(id);
    $('#updateModal').modal('show');
    $('#updateModal').draggable();
}
 
</script>
</head>

<body>
    <jsp:include page="managertop.jsp" flush="true" />
    <table class="top_logo">
        <tr>
            <td class="STYLE1"><div align="center">
                    <img src="images/logo02.png" width="252"
                        height="150" align="bottom"
                    /><span class="STYLE7">&nbsp;管理员管理</span>
                </div></td>
        </tr>
    </table>
    <p align="center" >
        <a href="javascript:void(0)"
            class="administratorAccountManager_insert"
        >添加新管理员</a>
    </p>
    <table class="table_content">
        <tr class="tr_one">
            <td width="150" align="center">管理员编号</td>
            <td width="150" align="center">管理员名称</td>
            <td width="150" align="center">级别</td>
            <td width="150" align="center">范围</td>
            <td width="200" align="center">操作</td>
        </tr>
        <c:if test="${administrators!=null }">
            <%
                for (int j = 0; j < administrators.size(); j++) {
                        Administrator a = (Administrator) administrators.get(j);
            %>
            <tr class="tr_two">
                <td width="150" align="center"><%=a.getId()%></td>
                <td width="150" align="center"><%=a.getName()%></td>
                <td width="150" align="center"><%=a.getLevel()%></td>
               <%--  <c:if test="${a.getScope()==0}" >
                    <td width="150" align="center">所有</td>
               </c:if> --%><!-- 此段代码不起作用 -->
                 <c:if test="${a.getScope()!='0' }" >
                    <td width="150" align="center">
               
                  <select id="example-multiple-selected<%=a.getId()%>"  style="width:100px">
                     <%   
                        String[] scopes=  a.getScope().split("\\|");
                       for(int i=0;i<scopes.length;i++){
                
            %>
                                <option ><%=new OperationData().getUnitTypeName(scopes[i]) %></option>
                              
                           <%} %>
                </select>
                </td>
                </c:if>
            
                <td bgcolor="#D1EEEE" align="center">
                    <table width="200">
                        <tr align="center">
                            <td width="100" align="center"><a
                                href="javascript:void(0)" onclick="updateModel('<%=a.getId()%>')"
                                class="administratorAccountManager_update" 
                            >修改</a></td>

                            <td width="100" align="center"><a
                                href=" javascript:void(0)" onclick="deleteModel('<%=a.getId() %>')"
                                class="administratorAccountManager_delete"
                            >删除 </a></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <%
                }
            %>
        </c:if>
    </table>


 <div class="modal fade" id="insertModal" tabindex="-1" role="dialog"
        aria-labelledby="insertModalLabel" aria-hidden="true"
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #428bca;">
                    <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true"
                    >&times;</button>
                    <h4 class="modal-title" id="insertModalLabel">
                        添加</h4>
                </div>
                <div class="modal-body" >
                <div style="display:inline">
               <label class="col-sm-3 col-md-3  col-lg-3 control-label" style="display:inline">姓名</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9 col-lg-9" style="display:inline">
                    <input type="text" class="form-control" id="insertName"
                           placeholder="请输入名字" onclick="$(this).focus()">
                </div></div><br>
                <label class="col-sm-3 col-md-3  col-lg-3 control-label" style="display:inline">密码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9 col-lg-9" style="display:inline">
                    <input type="text" class="form-control" id="insertPassword"
                           placeholder="请输入密码" onclick="$(this).focus()">
                </div><br>
                <label class="col-sm-3 col-md-3   col-lg-3  control-label"  style="display:inline">级别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9  col-md-9  col-lg-9"   style="display:inline">
                    <input type="text" class="form-control" id="insertLevel"
                           placeholder="请输入级别" onclick="$(this).focus()">
                </div><br><br>
                
                  <label class="col-sm-3 col-md-3  col-lg-3   control-label"  style="display:inline">范围</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9  col-lg-9"  style="display:inline">
                    <select id="example-multiple-selected-insert" multiple="multiple"  style="width:300px" >
                <%
                
                for (int j = 0; j < unitTypes.size(); j++) {
                    UnitType unitType =  unitTypes.get(j);
                %>
                                <option value="<%=unitType.getUnitTypeId()%>"><%=unitType.getUnitTypeName() %></option>
                                 
                             <% }%>
                </select>
                </div><br><br><br><br><br><br>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal"
                    >关闭</button>
                    <button type="button" class="btn btn-primary" id="example-order-button-insert">
                        添加</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>



    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true"
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #428bca;">
                    <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true"
                    >&times;</button>
                    <h4 class="modal-title" id="updateModalLabel">
                        更新</h4>
                </div>
                <div class="modal-body ">
                 <input type="hidden" id="updateModel-Hidden-Id">
                <div style="display:inline">
               <label class="col-sm-3 col-md-3  col-lg-3 control-label" style="display:inline">姓名</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9 col-lg-9" style="display:inline">
                    <input type="text" class="form-control" id="updateName"
                           placeholder="请输入名字" onclick="$(this).focus()">
                </div></div><br>
                  <label class="col-sm-3 col-md-3  col-lg-3 control-label" style="display:inline">密码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9 col-lg-9" style="display:inline">
                    <input type="text" class="form-control" id="updatePassword"
                           placeholder="请输入密码" onclick="$(this).focus()">
                </div><br>
                <label class="col-sm-3 col-md-3   col-lg-3  control-label"  style="display:inline">级别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9  col-md-9  col-lg-9"   style="display:inline">
                    <input type="text" class="form-control" id="updateLevel"
                           placeholder="请输入级别" onclick="$(this).focus()">
                </div><br>
                  <label class="col-sm-3 col-md-3  col-lg-3   control-label"  style="display:inline">范围</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <div class="col-sm-9 col-md-9  col-lg-9"  style="display:inline">
                    <select id="example-multiple-selected-update" multiple="multiple"  style="width:300px" >
                <%
                
                for (int j = 0; j < unitTypes.size(); j++) {
                    UnitType unitType =  unitTypes.get(j);
                %>
                                <option value="<%=unitType.getUnitTypeId()%>"><%=unitType.getUnitTypeName() %></option>
                                 
                             <% }%>
                </select>
                </div><br><br><br><br><br><br>


                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal"
                    >关闭</button>
                    <button type="button" class="btn btn-primary" id="example-order-button-update">
                        提交更改</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>
    
    
    
 <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog"
        aria-labelledby="deleteModalLabel" aria-hidden="true"
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header" style="background-color: #428bca;">
                    <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true"
                    >&times;</button>
                    <h4 class="modal-title" id="deleteModalLabel">
                        删除</h4>
                </div>
                <div class="modal-body ">
                <input type="hidden" id="deleteModel-Hidden-Id">
                <div style="display:inline">
               <label class="" style="display:inline">你确定删除吗</label>             
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default"
                        data-dismiss="modal"
                    >关闭</button>
                    <button type="button" class="btn btn-primary" id="example-order-button-delete">
                        删除</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal -->
    </div>
</body>
</html>