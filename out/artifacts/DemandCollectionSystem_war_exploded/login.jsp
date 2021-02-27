<%--
  Created by IntelliJ IDEA.
  User: 张志伟
  Date: 2020/10/20
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath }/bootstrap/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        window.onload = prepare;
        function prepare(){
            if (!document.getElementById){
                return false;
            }//检查浏览器是否支持document.getElementById的DOM方法
            login_msg();

        }
        <%--切换验证码--%>
        function refreshCode(){
            //获取验证码对象
            let vcode = document.getElementById("vcode");

            //设置其src属性，加时间戳
            vcode.src="${pageContext.request.contextPath}/checkCodeServlet?time="+new Date().getTime();
        }
        //判断是否为空
        function isNull(arg1)
        {
            return !arg1 && arg1!==0 && typeof arg1!=="boolean"?true:false;
        }
        //判断提示框内容是否为空
        function login_msg(){
            var login_alert="${login_msg}";
            if (!isNull(login_alert)){
                $('#login_msg_alert').attr("class","alert alert-warning alert-dismissible");
                //设置自动隐藏
                setTimeout(function(){
                    $('#login_msg_alert').remove();
                },2000);
            }
        }

    </script>
</head>
<body>

<!--导航栏-->
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">重大需求征集系统 <small>V1.0</small></a>
        </div>


    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!--导航栏-->

<div class="container-fluid">
    <!--标题用户登录-->
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <h2 class="text-center ">用户登录</h2>
        </div>
    </div>
    <!--登录表单-->
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
            <form action="${pageContext.request.contextPath}/loginServlet" method="post" >
                <div class="form-group">
                    <label for="username">用户名</label>
                    <input type="text" name="username" class="form-control" id="username" placeholder="用户名">
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="密码">
                </div>
                <div class="form-group">
                    <label for="code">验证码</label>
                    <div class="row">
                        <div class="col-sm-8">
                                <input type="text" name="code" class="form-control" id="code" placeholder="验证码">
                        </div>
                        <div class="col-sm-4">
                            <a href="javascript:refreshCode();">
                            <img src="${pageContext.request.contextPath}/checkCodeServlet" id="vcode" class="img-responsive" alt="" title="看不清？换一张" >
                            </a>
                        </div>
                    </div>


                </div>
                <button id="submit" type="submit" class="btn btn-danger  btn-block">登录</button>
                <a href="register.jsp" class="btn btn-info btn-block">注册</a>
            </form>
            <%--出错显示的信息框--%>
            <div id="login_msg_alert" class="alert alert-warning alert-dismissible hide" role="alert">
                <button type="button" class="close" data-dismiss="alert" >
                    <span >x</span>
                </button>
                <strong>${login_msg}</strong>
            </div>
        </div>
    </div>
</div>
</body>
</html>
