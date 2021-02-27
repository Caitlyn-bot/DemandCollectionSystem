<%--
  Created by IntelliJ IDEA.
  User: 张志伟
  Date: 2020/10/27
  Time: 14:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户管理</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath }/bootstrap/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
    <script>
        $(function () {



            $("#addUserBtn").click(function(){
                $("#addUserModal").modal({
                    show:true
                });
            })


        });

    </script>
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
                    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <ul class="list-group">
                                <a class="list-group-item active" href="${pageContext.request.contextPath}/usermangeServlet">用户管理</a>
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

                <!--中心内容-->
                <!--标签页-->
                <div>
                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#home" aria-controls="home" role="tab"
                               data-toggle="tab">用户列表</a>
                        </li>
                        <li role="presentation">
                            <a id="addUserBtn">添加用户</a>
                        </li>
                    </ul>

                    <!-- Tab panes -->
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <!--用户表格-->
                            <table class="table table-bordered table-hover table-striped">
                                <tr>
                                    <th class="text-center">编号</th>
                                    <th class="text-center">用户名</th>
                                    <th class="text-center">机构全称</th>
                                    <th class="text-center">真实姓名</th>
                                    <th class="text-center">身份证号</th>
                                    <th class="text-center">角色</th>
                                    <th class="text-center">用户状态</th>
                                    <th class="text-center">操作</th>
                                </tr>

                                <c:forEach items="${requestScope.pb.list}" var="user" varStatus="s">
                                    <tr class="text-center">
                                        <td>${s.count}</td>
                                        <td>${user.username}</td>
                                        <td>${user.JGMC}</td>
                                        <td>${user.realname}</td>
                                        <td>${user.SFZH}</td>
                                        <td>
                                                <c:forEach items="${requestScope.roles}" var="role" varStatus="s">

                                                            <c:if test="${role.roleid==user.role}">${role.rolename}</c:if>
                                                </c:forEach>
                                        </td>
                                        <td>
                                            <c:if test="${user.status==1}">可用</c:if>
                                            <c:if test="${user.status==0}">暂停</c:if>
                                        </td>
                                        <td>
                                            <a onclick="updateUser('${user.userid}','${user.role}')" data-toggle="modal" data-target="#updateUserModal" class="btn btn-info btn-sm">修改用户角色</a>
                                                <script>
                                                    function updateUser(id,role){
                                                        $("#euserid").val(id)
                                                        $("#selectrole").val(role)
                                                    }
                                                </script>
                                            <a href="${pageContext.request.contextPath}/stopUserServlet?userid=${user.userid}" class="btn btn-warning btn-sm">暂停用户</a>
                                            <a href="${pageContext.request.contextPath}/resumeUserServlet?userid=${user.userid}" class="btn btn-success btn-sm">恢复用户</a>
                                            <a onclick="deleteUser('${user.userid}');" data-toggle="modal" data-target="#deleteUserModal" class="btn btn-danger btn-sm">删除用户</a>
                                            <script>
                                                function deleteUser(id){
                                                    $("#deleteUserid").val(id)
                                                }
                                            </script>
                                        </td>
                                    </tr>
                                </c:forEach>



                            </table>

                        </div>
                    </div>
                </div>
                <!--中间部分-->
            </div>
        </div>
    </div>
</div>
<!--页面中心内容-->

<!--页面底部-->
<footer class="footer navbar-fixed-bottom ">
    <div class="container">
        <!--分页工具栏-->
        <div class=" text-center" >
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <c:if test="${requestScope.pb.currentPage == 1}">
                    <li class="disabled">
                        </c:if>

                        <c:if test="${requestScope.pb.currentPage != 1}">
                    <li>
                        </c:if>


                        <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${pb.currentPage - 1}&rows=10" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>

                    <c:if test="${requestScope.pb.totalPage>=10}" >
                        <!-- 当前页数小于等于4时，显示1到5...最后一页 -->
                            <c:if test="${requestScope.pb.currentPage<=4}">
                                 <c:forEach begin="1" end="5" var="i">
                                      <li <c:if test="${requestScope.pb.currentPage==i }">class="active"</c:if>>
                                          <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${i}&rows=10">${i}</a>
                                      </li>
                                 </c:forEach>
                                      <li><a href="#">...</a></li>
                                      <li
                                          <c:if test="${requestScope.pb.currentPage==requestScope.pb.totalPage }">class="active"</c:if>>
                                          <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${requestScope.pb.totalPage}&rows=10">${requestScope.pb.totalPage}</a>
                                      </li>
                            </c:if>
                           <!-- 当前页数大于4时，如果当前页小于总页码书-3，则显示1...n-1,n,n+1...最后一页 -->
                            <c:if test="${requestScope.pbcurrentPage>4}">
                                   <c:if test="${requestScope.pb.currentPage<requestScope.pb.totalPage-3}">
                                       <li><a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${1}&rows=10">${1}</a>
                                       </li>
                                       <li><a href="#">...</a></li>
                                       <c:forEach begin="${requestScope.pb.currentPage-1 }" end="${requestScope.pb.currentPage+1 }" var="i">
                                            <li <c:if test="${requestScope.pb.currentPage==i }">class="active"</c:if>>
                                            <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${i}&rows=10">${i}</a>
                                            </li>
                                       </c:forEach>
                                       <li><a href="#">...</a></li>
                                            <li
                                               <c:if test="${requestScope.pb.currentPage==requestScope.pb.totalPage }">class="active"</c:if>>
                                                 <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${requestScope.pb.totalPage}&rows=10">${requestScope.pbtotalPage}</a>
                                            </li>
                                  </c:if>
                            </c:if>
                            <!-- 当前页数大于4时，如果当前页大于总页码书-4，则显示1...最后一页-3，最后一页-2，最后一页-1，最后一页 -->
                            <c:if test="${requestScope.pb.currentPage>requestScope.pb.totalPage-4}">
                                  <li><a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${1}&rows=10">${1}</a>
                                  </li>
                                  <li><a href="#">...</a></li>
                                  <c:forEach begin="${requestScope.pb.totalPage-3 }"  end="${requestScope.pb.totalPage }" var="i">
                                       <li <c:if test="${requestScope.pb.currentPage==i }">class="active"</c:if>>
                                             <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${i}&rows=10">${i}</a>
                                       </li>
                                  </c:forEach>
                            </c:if>
                    </c:if>

                    <c:if test="${requestScope.pb.totalPage<10}"    >
                    <c:forEach begin="1" end="${requestScope.pb.totalPage}" var="i" >
                        <c:if test="${requestScope.pb.currentPage == i}">
                            <li class="active"><a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${i}&rows=10">${i}</a></li>
                        </c:if>
                        <c:if test="${requestScope.pb.currentPage != i}">
                            <li><a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${i}&rows=10">${i}</a></li>
                        </c:if>

                    </c:forEach>
                    </c:if>

                    <c:if test="${requestScope.pb.currentPage == requestScope.pb.totalPage}">
                        <li class="disabled">
                    </c:if>
                    <c:if test="${requestScope.pb.currentPage != requestScope.pb.totalPage}">
                        <li>
                    </c:if>
                        <a href="${pageContext.request.contextPath}/usermangeServlet?currentPage=${requestScope.pb.currentPage + 1}&rows=10" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                    <span style="font-size: 25px;margin-left: 5px;">
                    共${requestScope.pb.totalCount}条记录，共${requestScope.pb.totalPage}页
                </span>
                </ul>
            </nav>
        </div>
    </div>

</footer>
<!--页面底部-->
<!--添加用户的对话框-->
<div class="modal fade" id="addUserModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">添加用户信息</h4>
            </div>
            <form action="${pageContext.request.contextPath}/addUserServlet" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="addusername"><span style="color: red">*</span>用户名</label>
                        <input type="text" name="addusername" class="form-control" id="addusername" placeholder="用户名">
                    </div>
                    <div class="form-group">
                        <label for="addpassword"><span style="color: red">*</span>密码</label>
                        <input type="password" name="addpassword" class="form-control" id="addpassword" placeholder="密码长度必须大于或等于六位">
                    </div>
                    <div class="form-group">
                        <label for="addrpassword"><span style="color: red">*</span>确认密码</label>
                        <input type="password" name="addrpassword" class="form-control" id="addrpassword" placeholder="再次输入密码">
                    </div>
                    <div class="form-group">
                        <label for="addJGMC"><span style="color: red">*</span>机构全称</label>
                        <input type="text" name="addJGMC" class="form-control" id="addJGMC" placeholder="请输入机构的全称">
                    </div>
                    <div class="form-group">
                        <label for="addrealname"><span style="color: red">*</span>真实姓名</label>
                        <input type="text" name="addrealname" class="form-control" id="addrealname" placeholder="请输入真实的姓名">
                    </div>
                    <div class="form-group">
                        <label for="addSFZH"><span style="color: red">*</span>身份证号</label>
                        <input type="text" name="addSFZH" class="form-control" id="addSFZH" placeholder="请输入身份证号">
                    </div>
                    <div class="form-group">
                        <label for="addYZBM">邮政编码</label>
                        <input type="text" name="addYZBM" class="form-control" id="addYZBM" placeholder="请输入邮政编码">
                    </div>
                    <div class="form-group">
                        <label for="addYDDH">移动电话</label>
                        <input type="text" name="addYDDH" class="form-control" id="addYDDH" placeholder="请输入移动电话">
                    </div>
                    其中带<span style="color: red">*</span>的为必填项
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">确认添加</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消添加</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--编辑用户的对话框-->
<div class="modal fade" id="updateUserModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">编辑用户角色</h4>
            </div>
            <form action="${pageContext.request.contextPath}/updateUserServlet" method="post">
                <input type="hidden" id="euserid" name="euserid">
                <div class="modal-body">
                    <div class="form-group">
                        <label for="selectrole"><span style="color: red">*</span>--更改用户角色--</label>
                        <select id="selectrole" name="erole" class="form-control">
                            <c:forEach items="${requestScope.roles}" var="role" varStatus="s">
                                <option value="${role.roleid}">${role.rolename}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">确认编辑</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消编辑</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!--删除用户的对话框-->
<div class="modal fade" id="deleteUserModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title text-center">删除</h4>
            </div>
            <form method="post" action="${pageContext.request.contextPath}/deleteUserServlet">
                <input type="hidden" name="deleteUserid" id="deleteUserid">
            <div class="modal-body">
                您即将删除用户
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary">确认删除</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">取消删除</button>
            </div>
            </form>
        </div>
    </div>
</div>

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
