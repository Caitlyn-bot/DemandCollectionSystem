<%--
  Created by IntelliJ IDEA.
  User: 张志伟
  Date: 2020/10/15
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>首页</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
  <script src="${pageContext.request.contextPath }/bootstrap/js/jquery-3.5.1.min.js"></script>
  <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<script>
  $().ready(function(){
    roleQuery();
  });
  function roleQuery() {

    $.ajax({
      type:"POST",
      url:"${pageContext.request.contextPath}/roleQueryServlet",
      data:{"roleid":${sessionScope.user.role}},
      //data:$('#searchForm').serialize(),
      dataType:"json",
      success:function(data){

          if (data.selfmsg==0){
            $("#selfmsg").hide();
          }
          if (data.updatepwd=="0"){
            $("#updatepwd").hide();
          }

          if (data.addDemand=="0"){

            if (data.demandMange=="0"){
              $("#DemandAll").hide();
            }else {
              $("#addDemand").hide();
            }
          }else if (data.demandMange=="0"){
            $("#demandMange").hide();
          }

          if (data.xssh=="0"){
            if (data.bmsh=="0"){
              $("#shAll").hide();
            }else {
              $("#xssh").hide();
            }
          }else if (data.bmsh=="0"){
            $("#bmsh").hide();
          }

          if (data.report=="0"){
            $("#report").hide();
          }
          if (data.rolemange=="0"){
            $("#mange").hide();
          }

        }


    });
  }
</script>

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

    <ul class="nav navbar-nav navbar-right">
      <li><a href="#"> <span class="text-danger">${sessionScope.user.username}</span> 您好</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">个人中心 <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li id="selfmsg"><a  class="btn" data-toggle="modal" data-target="#selfmsgModal">我的信息</a></li>
          <li role="separator" class="divider"></li>
          <li id="updatepwd"><a class="btn" data-toggle="modal" data-target="#updatepwdModal">修改密码</a></li>
          <li role="separator" class="divider"></li>
          <li><a class="btn" data-toggle="modal" data-target="#exitModal" >退出登录</a></li>
          <li role="separator" class="divider"></li>
        </ul>
      </li>
    </ul>
  </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
<!--导航栏-->

<!--页面中心内容-->
<div class="container-fluid">

  <div class="row">
    <!--左半区-->
    <div class="col-sm-2">

      <!--菜单组件-->
      <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">

        <div class="panel panel-default" id="mange">
          <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
              <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                用户管理
              </a>
            </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
              <ul class="list-group">
                <a class="list-group-item" href="${pageContext.request.contextPath}/usermangeServlet">用户管理</a>
                <a class="list-group-item" href="${pageContext.request.contextPath}/rolemangeServlet">权限管理</a>
              </ul>
            </div>
          </div>
        </div>

        <div class="panel panel-default" id="DemandAll">
          <div class="panel-heading" role="tab" id="headingTwo">
            <h4 class="panel-title">
              <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
                需求管理
              </a>
            </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingTwo">
            <div class="panel-body">
              <ul class="list-group">
                <a id="addDemand" class="list-group-item" href="${pageContext.request.contextPath}/LoadServlet">需求征集</a>
                <a id="demandMange" class="list-group-item" href="${pageContext.request.contextPath}/mangeDemandServlet">需求管理</a>
              </ul>
            </div>
          </div>
        </div>

        <div class="panel panel-default" id="shAll">
          <div class="panel-heading" role="tab" id="headingThree">
            <h4 class="panel-title">
              <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
                审核
              </a>
            </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingThree">
            <div class="panel-body">
              <ul class="list-group">
                <a id="xssh" class="list-group-item" href="${pageContext.request.contextPath}/examine/xssh.jsp">形式审核</a>
                <a id="bmsh" class="list-group-item" href="${pageContext.request.contextPath}/examine/bmsh.jsp">部门审核</a>
              </ul>
            </div>
          </div>
        </div>

        <div class="panel panel-default" id="report">
          <div class="panel-heading" role="tab" id="headingFour">
            <h4 class="panel-title">
              <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseOne">
                统计查询
              </a>
            </h4>
          </div>
          <div id="collapseFour" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingFour">
            <div class="panel-body">
              <ul class="list-group">
                <a class="list-group-item" href="${pageContext.request.contextPath}/report/fljs.jsp">分类检索</a>
                <a class="list-group-item" href="${pageContext.request.contextPath}/report/zhjs.jsp">综合检索</a>
                <a class="list-group-item" href="${pageContext.request.contextPath}/report/tjtb.jsp">统计图表</a>
              </ul>
            </div>
          </div>
        </div>

      </div>

    </div>
    <!--左半区-->

    <!--中间部分-->
    <div id="content">
      <!--页面中心内容-->
      <div class="col-sm-10">
        <!--巨幕-->
        <div class="jumbotron">
          <h1>欢迎使用需求征集系统</h1>
          <p>
            为了充分利用京津科技资源，破解我省产业转型升级、绿色崛起所面临的重大技术难题，按照厅领导指示，现面向重点产业、重点领域、
            重点企业（单位）征集产业或领域关键技术难题，构建我省重大技术需求数据库，特制定本工作方案。
          </p>
        </div>

      </div>
    </div>
    <!--中间部分-->

  </div>

</div>
<!--页面中心内容-->

<!--查看个人信息-->
<div class="modal fade" id="selfmsgModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="selfmsgModalLabel">个人信息</h4>
      </div>
      <div class="modal-body">
          <table class="table table-hover table-bordered">
              <tr>
                <td>用户名</td>
                <td>${sessionScope.user.username}</td>
              </tr>
              <tr>
                <td>所属机构</td>
                <td>${sessionScope.user.JGMC}</td>
              </tr>
              <tr>
                <td>真实姓名</td>
                <td>${sessionScope.user.realname}</td>
              </tr>
              <tr>
                <td>身份证</td>
                <td>${sessionScope.user.SFZH}</td>
              </tr>
              <tr>
                <td>邮政编码</td>
                <td>${sessionScope.user.YZBM}</td>
              </tr>
              <tr>
                <td>移动电话</td>
                <td>${sessionScope.user.YDDH}</td>
              </tr>
          </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
      </div>
    </div>
  </div>
</div>
<!-- 修改密码-->
<div class="modal fade" id="updatepwdModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="updatepwdModalLabel">修改密码</h4>
      </div>
        <form action="${pageContext.request.contextPath}/updatePwdServlet" method="post" onsubmit="return newPwd()">
      <div class="modal-body">
          <input type="hidden" name="userid" value="${sessionScope.user.userid}">
          <div class="form-group">
            <label for="newpassword"><span style="color: red">*</span>密码</label>
            <input type="password" name="newpassword" class="form-control" id="newpassword" placeholder="密码长度必须大于或等于六位">
          <script>
            function newPwd() {
              if ($("#newpassword").val().length<6){
                alert("密码长度必须大于或等于六位")
                return false;
              }
            }
          </script>
          </div>
          <span style="color: red">修改密码后需要重新登录</span>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-primary">确认修改</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
      </div>
        </form>
    </div>
  </div>
</div>
<!-- 退出系统-->
<div class="modal fade" id="exitModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exitModalLabel">退出系统</h4>
      </div>
      <div class="modal-body">
        您确定要退出吗
      </div>
      <div class="modal-footer">
        <a href="${pageContext.request.contextPath}/exitServlet"  type="button" class="btn btn-primary">退出</a>
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
      </div>
    </div>
  </div>
</div>


</body>
</html>
