<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ page import="com.xmx.util.DataDao" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Bootstrap 条纹表格</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%
//    DataDao dao = new DataDao();
//    dao.findAll(request,response);
%>


<a href="selectAllEmp.do">点击查询所有用户信息</a><br/>
<button class="btn btn-info" data-toggle="modal" data-target="#ModalAdd">新增</button>
<table class="table table-striped">
    <thead>
    <tr>
        <th>id</th>
        <th>商品名称</th>
        <th>价格</th>
    </tr>
    </thead>
    <tbody>


    <c:forEach var="dbSupermarket" items="${applies}">
        <tr>

                <td class="col-md-1"><input type="text" class="form-control " placeholder="用户名" name="GID" readonly value="${dbSupermarket.GId}"></td>
                <td class="col-md-1"><input type="text" class="form-control " placeholder="姓名" name="GNAME"  value="${dbSupermarket.GNAME}"></td>
                <td class="col-md-1"><input type="text" class="form-control " placeholder="密码" name="GPRICE"  value="${dbSupermarket.GPRICE}"></td>

                <td>
                    <button type="submit" class="btn btn-default" >修改</button>
                    <a type="button" href="selectOne.do?GID=${dbSupermarket.GId}&name=${dbSupermarket.GNAME}" class="btn btn-default" >详情</a>
                    <a href="deleteEmp.do?deleteId=${dbSupermarket.GId}" class="btn btn-danger" type="button">删除</a>
                </td>

        </tr>
    </c:forEach>


<%--    <form action="updateEmp.do">--%>
<%--        <input type="text" placeholder="需要修改的id"name="updateId" >--%>
<%--        <input type="text" placeholder="需要修改的name" name="updateName">--%>
<%--        <input type="text" placeholder="需要修改的note" name="updateNote">--%>
<%--        <input type="submit" class="btn btn-default" value="修改">--%>
<%--    </form>--%>

<%--    <form action="addEmp.do">--%>
<%--        <input type="text" name="GNAME" placeholder="请输入商品名称">--%>
<%--        <input type="text" name="GPRICE" placeholder="请输入商品价格">--%>
<%--        <input type="submit" value="添加">--%>
<%--    </form--%>
    <%--<c:forEach var="user" items="${users}">--%>
    <%--<tr>--%>
    <%--<td>${user.uname}</td>--%>
    <%--<td>${user.name}</td>--%>
    <%--<td>${user.email}</td>--%>
    <%--<td>${user.address}</td>--%>
    <%--<td>--%>
    <%--<a href="" class="btn btn-default" type="button" data-toggle="modal" data-target="#ModalAlter" >修改</a>--%>
    <%--<a href="dao?uname=${user.uname}&method=delete" class="btn btn-danger" type="button">删除</a>--%>
    <%--</td>--%>
    <%--</tr>--%>
    <%--</c:forEach>--%>

    </tbody>
</table>


<!-- 添加Modal -->
<div class="modal fade" id="ModalAdd" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="adEmp.do" method="post">

                    <div class="form-group">
                        <label for="inputPassword4" class="col-sm-2 control-label">商品名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPassword4" placeholder="商品名称" name="GNAME">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPassword3" placeholder="价格" name="GPRICE" >
                        </div>
                    </div>



                    <%--<div class="form-group">--%>
                    <%--<label for="inputPassword7" class="col-sm-2 control-label">职位</label>--%>
                    <%--<div class="col-sm-10">--%>
                    <%--<input type="text" class="form-control" id="inputPassword7" placeholder="职位" name="position">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                    <%--<label for="inputPassword8" class="col-sm-2 control-label">说明</label>--%>
                    <%--<div class="col-sm-10">--%>
                    <%--<input type="text" class="form-control" id="inputPassword8" placeholder="说明" name="Introduction">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">提交</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="ModalAdd2" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" action="adEmp.do" method="post">

                    <div class="form-group">
                        <label for="inputPassword4" class="col-sm-2 control-label">商品名称</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="" placeholder="商品名称" name="GNAME">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">价格</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="" placeholder="价格" name="GPRICE">
                        </div>
                    </div>



                    <%--<div class="form-group">--%>
                    <%--<label for="inputPassword7" class="col-sm-2 control-label">职位</label>--%>
                    <%--<div class="col-sm-10">--%>
                    <%--<input type="text" class="form-control" id="inputPassword7" placeholder="职位" name="position">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="form-group">--%>
                    <%--<label for="inputPassword8" class="col-sm-2 control-label">说明</label>--%>
                    <%--<div class="col-sm-10">--%>
                    <%--<input type="text" class="form-control" id="inputPassword8" placeholder="说明" name="Introduction">--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="button" class="btn btn-default" onclick="increaseSubmit()">提交</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<%--<!--修改 Modal -->--%>
<%--<div class="modal fade" id="ModalAlter" tabindex="-1" role="dialog">--%>
<%--<div class="modal-dialog" role="document">--%>
<%--<div class="modal-content">--%>
<%--<div class="modal-header">--%>
<%--<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>--%>
<%--</div>--%>
<%--<div class="modal-body">--%>
<%--<form class="form-horizontal" action="" method="post">--%>
<%--<div class="form-group">--%>
<%--<label for="inputEmail3" class="col-sm-2 control-label">用户名</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="email" class="form-control" id="inputEmail9"   placeholder="用户名" name="uname" readonly>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="inputPassword3" class="col-sm-2 control-label">密码</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="password" class="form-control" id="inputPassword10" placeholder="密码" name="password" value="${user.uname}">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="inputPassword4" class="col-sm-2 control-label">姓名</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="password" class="form-control" id="inputPassword11" placeholder="姓名" name="name">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="inputPassword5" class="col-sm-2 control-label">邮箱</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="password" class="form-control" id="inputPassword12" placeholder="邮箱" name="email">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="inputPassword6" class="col-sm-2 control-label">地址</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="password" class="form-control" id="inputPassword13" placeholder="地址" name="address">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="inputPassword7" class="col-sm-2 control-label">职位</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="password" class="form-control" id="inputPassword14" placeholder="职位" name="position">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="inputPassword8" class="col-sm-2 control-label">说明</label>--%>
<%--<div class="col-sm-10">--%>
<%--<input type="password" class="form-control" id="inputPassword15" placeholder="说明" name="Introduction">--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<div class="col-sm-offset-2 col-sm-10">--%>
<%--<button type="submit" class="btn btn-default">提交</button>--%>
<%--</div>--%>
<%--</div>--%>
<%--</form>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<script>
    function loginSubmit() {

        var GNAME = $("#GNAME").val();    // 获取id为username的<input>框数据
        var GPRICE = $("#GPRICE").val();    // 获取id为password的<input>框数据
        // 判断
        if (GNAME.length == 0) {
            //$("#username").
            return;
        }
        if (GPRICE.length == 0) {
            $("#password").tips({msg: "请输入密码。"});
            return;
        }
        // Ajax提交数据
        $.ajax({
            url: "admin/check_login",    // 提交到controller的url路径
            type: "post",    // 提交方式
            data: {"username": username, "password": password},  // data为String类型，必须为 Key/Value 格式。
            dataType: "json",    // 服务器端返回的数据类型
            success: function (data) {    // 请求成功后的回调函数，其中的参数data为controller返回的map,也就是说,@ResponseBody将返回的map转化为JSON格式的数据，然后通过data这个参数取JSON数据中的值
                if (data.message == "success") {
                    //跳转到系统首页
                ......
                } else {
                ......
                }
            },
        });
    }
</script>
</body>
</html>