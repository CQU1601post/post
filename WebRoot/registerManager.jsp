<%@ page pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=UTF-8" language="java"
    import="java.sql.*" errorPage=""
%>
<jsp:directive.page import="java.util.List" />
<jsp:directive.page import="allClasses.*" />
<%
    String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
			List list = (List) request.getAttribute("list");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-3.1.1.js"></script>
<script type="text/javascript" src="js/jquery.json-2.2.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src='js/bootstrap.min.js'></script>
<script type="text/javascript" src="js/bootstrap-multiselect.js"></script>
<link rel="stylesheet" href="css/bootstrap-multiselect.css"
    type="text/css"
/>
<script type="text/javascript" src="js/registerManager.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<link href="css/adminManager.css" rel="stylesheet" type="text/css" />

<title>注册用户管理</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
    $(function() {
        $("#example-order-button-update").click(function() {
            var id = $("#updateModel-Hidden-Id").val();
            var password = $("#updatePassword").val();
            var level=$("#updateLevel").val();
            var email=$("#updateEmail").val();
            if(checkUser(password)&&isEmail(email)&&isInteger(level)&&level.length<5){
                $.ajax({
                    type:"post",
                    url:"AdminManagerLogical?info=changeUser&userId="+id+"&password="+password+"&level="+level+"&email="+email,
                    success: function(data){
                        if(data="成功"){
                            alert("更新成功");
                            $("#updatePassword").val("");
                            $("#updateModel-Hidden-Id").val("");
                            $('#updateModal').modal('hide');
                        }else{
                            alert("更新失败");
                        }
                    }
                });
            }else if(!checkUser(password)){
                alert("密码是数字，字符和_，在6-20位之间");
            }else if(!isEmail(email)){
                alert("邮箱错误");
            }else{
                alert("级别为整数，不能为空，且小于5位");
            }
        });
    });

    function change(id, name) {

        $("#updateModel-Hidden-Id").val(id);
        $("#updatePassword").val(name);
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
                    <span class="STYLE7">注册用户管理</span>
                </div></td>
        </tr>
    </table>
    <p align="center" class="operation">
        <a href="register.jsp" id="add">注册新用户</a><br> <a
            href="javascript:void(0)" class="registerManager_table_a"
        >批量删除 </a>
    </p>
    <table class="table_content">
        <tr class="tr_one">
            <td width="125" align="center">用户Id</td>
            <td width="125" align="center">用户名</td>
            <td width="125" align="center">用户密码</td>
            <td width="125" align="center">用户等级</td>
            <td width="125" align="center">邮件</td>

            <td width="120" align="center">操作</td>
            <td width="145" align="center">全选 <input type="radio"
                name="userChoice"
                class="registerManager_table_radio_allChoice"
            /> 反选 <input type="radio" name="userChoice"
                class="registerManager_table_radio_inverse"
            /></td>
            <!--  <td width="120" align="center"><a href="javascript:void(0)" class="registerManager_table_a">批量删除 </a></td> -->
        </tr>
        <c:if test="${list!=null }">
            <%
                for (int j = 0; j < list.size(); j++) {
                        User t = (User) list.get(j);
            %>
            <tr class="tr_two">
                <td width="125" align="center"><p
                        class="registerManger_table_td_user"
                    ><%=t.getUserId()%></td>
                <td width="125" align="center"><%=t.getUserName()%></td>
                <td width="125" align="center"><%=t.getPassword()%></td>
                <td width="125" align="center"><%=t.getUserType()%></td>
                <td width="125" align="center"><%=t.getEmail()%></td>


                <td bgcolor="#D1EEEE" align="center">
                    <table width="120">
                        <tr align="center">
                            <td width="60" align="center"><a
                                href=" javascript:void()"
                                onclick="change('<%=t.getUserId()%>','<%=t.getPassword()%>')"
                                id="<%=t.getUserId()%>"
                            >修改</a></td>

                            <td width="60" align="center"><a
                                href="AdminManagerLogical?info=delUser&userId=<%=t.getUserId()%>"
                            >删除 </a></td>

                        </tr>
                    </table>
                </td>
                <td width="125" align="center"><input
                    type="checkbox" name="userCheck"
                    class="registerManager_table_input_checkbox"
                /></td>
            </tr>
            <%
                }
            %>
        </c:if>
    </table>
    <div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
        aria-labelledby="updateModalLabel" aria-hidden="true"
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header"
                    style="background-color: #428bca;"
                >
                    <button type="button" class="close"
                        data-dismiss="modal" aria-hidden="true"
                    >&times;</button>
                    <h4 class="modal-title" id="updateModalLabel">
                        更新</h4>
                </div>
                <div class="modal-body ">
                    <input type="hidden" id="updateModel-Hidden-Id">
                    <div style="display:inline">
                        <label
                            class="col-sm-3 col-md-3  col-lg-3 control-label"
                            style="display:inline"
                        >密码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="col-sm-9 col-md-9 col-lg-9"
                            style="display:inline"
                        >
                            <input type="text" class="form-control"
                                id="updatePassword"
                                onclick="$(this).focus()"
                            >
                        </div>
                        <br> <label
                            class="col-sm-3 col-md-3   col-lg-3  control-label"
                            id="updateLevelLabel" style="display:inline"
                        >级别</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="col-sm-9  col-md-9  col-lg-9"
                            style="display:inline"
                        >
                            <input type="text" class="form-control"
                                id="updateLevel" placeholder="请输入级别"
                                onclick="$(this).focus()"
                            >
                        </div>
                        <br> <label
                            class="col-sm-3 col-md-3   col-lg-3  control-label"
                            id="updateEmailLabel" style="display:inline"
                        >邮箱</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <div class="col-sm-9  col-md-9  col-lg-9"
                            style="display:inline"
                        >
                            <input type="text" class="form-control"
                                id="updateEmail" placeholder="请输入邮箱"
                                onclick="$(this).focus()"
                            >
                        </div>
                        <br>

                        <div class="modal-footer">
                            <button type="button"
                                class="btn btn-default"
                                data-dismiss="modal"
                            >关闭</button>

                            <button type="button"
                                class="btn btn-primary"
                                id="example-order-button-update"
                            >提交更改</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal -->
            </div>
</body>
</html>