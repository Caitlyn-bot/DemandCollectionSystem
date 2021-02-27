<%--
  Created by IntelliJ IDEA.
  User: 张志伟
  Date: 2020/10/26
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
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
            document.getElementById("registerForm").onsubmit=function checkRegister(){
                var password=document.getElementById("password");
                if (password.value.length<6){
                    alert("密码长度必须大于或等于六位");
                    return false;
                }
                var rpassword=document.getElementById("rpassword");
                if (rpassword.value!=password.value){
                    alert("两次输入的密码不一致");
                    return false;
                }
                var JGMC=document.getElementById("JGMC");
                if (isNull(JGMC.value)){
                    alert("机构全称为必填项");
                    return false;
                }
                var realname=document.getElementById("realname");
                if (isNull(realname.value)){
                    alert("真实姓名为必填项");
                    return false;
                }
                var SFZH=document.getElementById("SFZH");
                if (!testSFZH(SFZH.value)){
                    alert("请输入正确的身份证号");
                    return false;
                }


            }
            register_msg();


        }
        //判断是否为空
        function isNull(arg1)
        {
            return !arg1 && arg1!==0 && typeof arg1!=="boolean"?true:false;
        }
        //判断提示框内容是否为空
        function register_msg(){
            var login_alert="${login_msg}";
            if (!isNull(login_alert)){
                $('#register_msg_alert').attr("class","alert alert-warning alert-dismissible");
                //设置自动隐藏
                setTimeout(function(){
                    $('#register_msg_alert').remove();
                },2000);
            }
        }

        //校验身份证号码正确性
        function testSFZH(SFZH) {
            var format = /^(([1][1-5])|([2][1-3])|([3][1-7])|([4][1-6])|([5][0-4])|([6][1-5])|([7][1])|([8][1-2]))\d{4}(([1][9]\d{2})|([2]\d{3}))(([0][1-9])|([1][0-2]))(([0][1-9])|([1-2][0-9])|([3][0-1]))\d{3}[0-9xX]$/;
            //号码规则校验
            if (!format.test(SFZH)) {
                return false;
            }
            //区位码校验
            //出生年月日校验   前正则限制起始年份为1900;
            var year = SFZH.substr(6, 4),//身份证年
                month = SFZH.substr(10, 2),//身份证月
                date = SFZH.substr(12, 2),//身份证日
                time = Date.parse(month + '-' + date + '-' + year),//身份证日期时间戳date
                now_time = Date.parse(new Date()),//当前时间戳
                dates = (new Date(year, month, 0)).getDate();//身份证当月天数
            if (time > now_time || date > dates) {
                return false;
            }
            //校验码判断
            var c = [7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2];   //系数
            var b = ['1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2'];  //校验码对照表
            var SFZH_array = SFZH.split("");
            var sum = 0;
            for (var k = 0; k < 17; k++) {
                sum += parseInt(SFZH_array[k]) * parseInt(c[k]);
            }
            return SFZH_array[17].toUpperCase() === b[sum % 11].toUpperCase();
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
    <!--标题用户注册-->
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <h2 class="text-center ">用户注册</h2>
        </div>
    </div>
    <!--注册表单-->
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
            <form id="registerForm" action="${pageContext.request.contextPath}/registerServlet" method="post" >
                <div class="form-group">
                    <label for="username"><span style="color: red">*</span>用户名</label>
                    <input type="text" name="username" class="form-control" id="username" placeholder="用户名">
                </div>
                <div class="form-group">
                    <label for="password"><span style="color: red">*</span>密码</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="密码长度必须大于或等于六位">
                </div>
                <div class="form-group">
                    <label for="rpassword"><span style="color: red">*</span>确认密码</label>
                    <input type="password" name="rpassword" class="form-control" id="rpassword" placeholder="再次输入密码">
                </div>
                <div class="form-group">
                    <label for="JGMC"><span style="color: red">*</span>机构全称</label>
                    <input type="text" name="JGMC" class="form-control" id="JGMC" placeholder="请输入机构的全称">
                </div>
                <div class="form-group">
                    <label for="realname"><span style="color: red">*</span>真实姓名</label>
                    <input type="text" name="realname" class="form-control" id="realname" placeholder="请输入真实的姓名">
                </div>
                <div class="form-group">
                    <label for="SFZH"><span style="color: red">*</span>身份证号</label>
                    <input type="text" name="SFZH" class="form-control" id="SFZH" placeholder="请输入身份证号">
                </div>
                <div class="form-group">
                    <label for="YZBM">邮政编码</label>
                    <input type="text" name="YZBM" class="form-control" id="YZBM" placeholder="请输入邮政编码">
                </div>
                <div class="form-group">
                    <label for="YDDH">移动电话</label>
                    <input type="text" name="YDDH" class="form-control" id="YDDH" placeholder="请输入移动电话">
                </div>
                其中带<span style="color: red">*</span>的为必填项
                <button type="submit" class="btn btn-danger  btn-block">注册</button>
                <a href="login.jsp" class="btn btn-info btn-block">已有账号，去登录</a>
            </form>
            <%--出错显示的信息框--%>
            <div id="register_msg_alert" class="alert alert-warning alert-dismissible hide" role="alert">
                <button type="button" class="close" data-dismiss="alert" >
                    <span >x</span>
                </button>
                <strong>${register_msg}</strong>
            </div>
        </div>
    </div>
</div>


</body>
</html>
