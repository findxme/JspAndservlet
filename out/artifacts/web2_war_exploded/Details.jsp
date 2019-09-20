<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-09-19
  Time: 16:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<a href="selectAllEmp.do" class="btn btn-default" type="button">返回</a>
<table class="table table-striped">
    <thead>
    <tr>
        <th>id</th>
        <th>商品名称</th>
        <th>价格</th>
    </tr>
    </thead>
    <tbody>
<c:forEach var="dbSupermarket" items="${appli}">
<tr>
    <form class="form-horizontal" action="updateEmp.do" method="post">
        <td class="col-md-1"><input type="text" class="form-control " placeholder="用户名" name="GID" readonly value="${dbSupermarket.GId}"></td>
        <td class="col-md-1"><input type="text" class="form-control " placeholder="姓名" name="GNAME"  value="${dbSupermarket.GNAME}"></td>
        <td class="col-md-1"><input type="text" class="form-control " placeholder="密码" name="GPRICE"  value="${dbSupermarket.GPRICE}"></td>
        <td class="col-md-1"><input type="text" class="form-control " placeholder="密码" name=""  value="${msg}" style="width: 400px"></td>

        <td>
            <button type="submit" class="btn btn-default" >修改</button>

            <a href="deleteEmp.do?deleteId=${dbSupermarket.GId}" class="btn btn-danger" type="button">删除</a>
        </td>
    </form>
</tr>
</c:forEach>
    </tbody>
</table>
</body>
</html>
