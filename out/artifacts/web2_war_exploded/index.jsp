<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019-09-19
  Time: 0:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  request.setAttribute("ctx",request.getContextPath());
%>

<html lang="zh-CN">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>${config.web_title}</title>
  <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
  <link rel="stylesheet" type="text/css" href="css/login.css"/>
  <style type="text/css">
    #aa{
      color: #000000;
    }
  </style>
</head>
<body>
<div class="top-content">
  <nav style="" class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container-fluid">
      <p class="navbar-text text-center"
         style="color: #ffffff;font-size: 36px;font-weight: bold;">${config.web_title}
      </p>
    </div>
  </nav>
  <div class="inner-bg" >
    <div class="container text-center">
      <div class="row">
        <div class="col-sm-8 col-sm-offset-2 text">
          <h1>
          </h1>
          <div class="description">
            <p></p>
          </div>
        </div>
      </div>
      <div class="row clearfix text-center" >
        <div class="form-box text-center" >
          <div class="form-top">


            <h4 style="text-align: center;">登录</h4>
          </div>
          <div class="form-content">
            <form id="loginForm" role="form" action="login" method="post" class="login-form">
              <div class="form-group" id="accountDiv">
                <div>
                  <div class="input-group input-interval">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </span>
                    <input type="text" id="inputAccount" name="fAccount" required
                           class="form-control input-size" placeholder="用户名">
                  </div>
                </div>
              </div>
              <div class="form-group" id="pwdDiv" >
                <div>
                  <div class="input-group input-interval">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-lock"></span>
                                        </span>
                    <input type="password" id="inputPassword" name="fPassword" required
                           class="form-control input-size" placeholder="密码">
                  </div>
                </div>
              </div>
              <div class="hidden text-center" id="errMsg">
                <span class="glyphicon glyphicon-exclamation-sign"></span>
              </div>
              <div>
                <button id="btn_login" type="submit"  class="btn btn-info">登录</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/jquery-1.11.1.js"></script>
<script type="text/javascript" src="js/tooltip.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
  <%--$(function () {--%>
  <%--  $(document).keyup(function (event) {--%>
  <%--    if (event.key === "Enter") {--%>
  <%--      $("#btn_login").trigger("click");--%>
  <%--    }--%>
  <%--  });--%>
  <%--  alert--%>
  <%--  $("#btn_login").click(function () {--%>
  <%--    $.ajax({--%>
  <%--      url: "${ctx}/login",--%>
  <%--      type: "POST",--%>
  <%--      dataType: "json",--%>

  <%--      data: $(".login-form").serialize(),--%>
  <%--      success: function (data) {--%>
  <%--        if (data.status === 200) {--%>
  <%--          window.location.href = '${ctx}/account/home';--%>
  <%--        } else {--%>
  <%--          alert(data.msg);--%>
  <%--        }--%>
  <%--      },--%>
  <%--      error: function (data) {--%>
  <%--       // alert(url);--%>
  <%--        alert("error");--%>
  <%--      }--%>
  <%--    });--%>
  <%--    return false;--%>
  <%--  });--%>
  <%--});--%>
</script>
</body>
</html>