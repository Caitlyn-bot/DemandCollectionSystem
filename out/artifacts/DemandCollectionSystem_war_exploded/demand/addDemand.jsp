<%--
  Created by IntelliJ IDEA.
  User: 张志伟
  Date: 2020/10/27
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>需求征集</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/bootstrap/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath }/bootstrap/js/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/bootstrap/js/bootstrap.min.js"></script>
    <script>
        $(function () {



            $("#addRoleBtn").click(function(){
                $("#addRoleModal").modal({
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
                    <div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <ul class="list-group">
                                <a id="addDemand" class="list-group-item active" href="${pageContext.request.contextPath}/LoadServlet">需求征集</a>
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
                <div >

                    <div id="home">

                        <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/addDemandServlet" onsubmit="return checkform()">
                            <script>
                                function checkform() {
                                    var JGMC=$("#JGMC").val();
                                    if (JGMC==""){
                                        alert("机构全称不可以为空")
                                        $("#JGMC")[0].focus()
                                        return false;
                                    }

                                    var TXDZ=$("#TXDZ").val();
                                    if (TXDZ==""){
                                        alert("通讯地址不可以为空")
                                        $("#TXDZ")[0].focus()
                                        return false;
                                    }
                                    var DZYX=$("#DZYX").val();
                                    if (DZYX==""){
                                        alert("电子信箱不可以为空")
                                        $("#DZYX")[0].focus()
                                        return false;
                                    }
                                    var FRDB=$("#FRDB").val();
                                    if (FRDB==""){
                                        alert("法人代表不可以为空")
                                        $("#FRDB")[0].focus()
                                        return false;
                                    }
                                    var LXR=$("#LXR").val();
                                    if (LXR==""){
                                        alert("联系人不可以为空")
                                        $("#LXR")[0].focus()
                                        return false;
                                    }
                                    var YDDH=$("#YDDH").val();
                                    if (YDDH==""){
                                        alert("移动电话不可以为空")
                                        $("#YDDH")[0].focus()
                                    }
                                    var JGJJ=$("#JGJJ").val();
                                    if (JGJJ==""){
                                        alert("机构简介不可以为空")
                                        $("#JGJJ")[0].focus()
                                        return false;
                                    }
                                    var len = $("#JGJJ").val().length;
                                    if(len > 500){
                                        alert("字数不可以超过500");
                                        $("#JGJJ")[0].focus();
                                        return false;
                                    }
                                    var JSXQMC=$("#JSXQMC").val();
                                    if (JSXQMC==""){
                                        alert("技术需求名称不可以为空")
                                        $("#JSXQMC")[0].focus()
                                        return false;
                                    }
                                    var QSXQNF=$("#QSXQNF").val()
                                    if (QSXQNF==""){
                                        alert("起始年份不可以为空")
                                        $("#QSXQNF")[0].focus()
                                        return false;
                                    }
                                    var JZXQNF=$("#JZXQNF").val()
                                    if (JZXQNF==""){
                                        alert("截止年份不可以为空")
                                        $("#JZXQNF")[0].focus()
                                        return false;
                                    }
                                    var ZDKJXQGS1=$("#ZDKJXQGS1").val();
                                    if (ZDKJXQGS1==""){
                                        alert("需要解决的重大技术问题不可以为空")
                                        $("#ZDKJXQGS1")[0].focus()
                                        return false;
                                    }
                                    var len1 = $("#ZDKJXQGS1").val().length;
                                    if(len1 > 500){
                                        alert("字数不可以超过500");
                                        $("#ZDKJXQGS1")[0].focus();
                                        return false;
                                    }
                                    var ZDKJXQGS2=$("#ZDKJXQGS2").val();
                                    if (ZDKJXQGS2==""){
                                        alert("技术需求概述技术关键不可以为空")
                                        $("#ZDKJXQGS2")[0].focus()
                                        return false;
                                    }
                                    var len2 = $("#ZDKJXQGS2").val().length;
                                    if(len2 > 500){
                                        alert("字数不可以超过500");
                                        $("#ZDKJXQGS2")[0].focus();
                                        return false;
                                    }
                                    var ZDKJXQGS3=$("#ZDKJXQGS3").val();
                                    if (ZDKJXQGS3==""){
                                        alert("技术需求概述预期目标不可以为空")
                                        $("#ZDKJXQGS3")[0].focus()
                                        return false;
                                    }
                                    var len3 = $("#ZDKJXQGS3").val().length;
                                    if(len3 > 500){
                                        alert("字数不可以超过500");
                                        $("#ZDKJXQGS3")[0].focus();
                                        return false;
                                    }
                                    var GJZ1=$("#GJZ1").val();
                                    if (GJZ1==""){
                                        alert("关键字一不可以为空")
                                        $("#GJZ1")[0].focus()
                                        return false;
                                    }
                                }
                            </script>
                            <strong>请注意：其中带<span style="color: red">*</span>的为必填项</strong>
                            <table class="table table-bordered">
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="JGMC"><span style="color: red">*</span>机构全称</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="JGMC" name="JGMC" type="text" placeholder="机构全称"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#JGMC").blur(function () {
                                                var JGMC=$.trim(this.value);
                                                if (JGMC==""){
                                                    alert("机构全称不可以为空")
                                                    //$("#JGMC")[0].focus()
                                                }

                                            });
                                        });
                                    </script>

                                    <td class="col-sm-2">
                                        <label class="control-label" for="GKGLBM">归口管理部门</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <select class="form-control " id="GKGLBM" name="GKGLBM">
                                            <option value=" "></option>
                                            <%
                                                String gkbm[] = { "保定国家高新技术产业开发区", "保定市科技局", "沧州市科技局", "承德国家高新技术产业开发区", "承德市科技局", "定州市科技局", "邯郸市科技局",
                                                        "河北出入境检验检疫局", "河北钢铁集团有限公司", "河北行政学院", "河北省机构编制委员会办公室", "衡水市科技局", "廊坊市科技局", "秦皇岛市科技局", "省安全生产监督管理局",
                                                        "省财政厅", "省档案局", "省地震局", "省发改委", "省法院", "省妇联", "省工商行政管理局", "省工业和信息化厅", "省公安厅", "省供销合作社 ", "省广播电视局",
                                                        "省国防科技工业局", "省国家安全厅", "省国土资源厅", "省国资委", "省环保厅", "省计生委", "省检察院", "省交通厅", "省教育厅", "省科技厅", "省科协",
                                                        "省科学院", "省林业厅", "省旅游局", "省民政厅", "省农科院", "省农业厅", "省气象局", "省人力资源和社会保障厅", "省人民政府外事办公室", "省商务厅",
                                                        "省社会科学院", "省社科联", "省审计厅", "省食品药品监督管理局", "省水利厅", "省司法厅", "省体育局", "省统计局", "省委办公厅", "省委宣传部", "省委组织部",
                                                        "省卫生厅", "省文化厅", "省物价局", "省新闻出版广电局", "省信访局", "省盐务局", "省政府办公厅", "省政府法制办", "省政府研究室", "省质量技术监督局",
                                                        "省中小企业局", "省中医药管理局", "省住房和城乡建设厅", "省总工会", "石家庄国家高新技术产业开发区", "石家庄市科技局", "唐山国家高新技术产业开发区", "唐山市科技局",
                                                        "团省委", "辛集市科技局", "邢台市科技局", "燕郊国家高新技术产业开发区", "张家口市科技局", "中共河北省委党校" };
                                                for (int i = 0; i < gkbm.length; i++) {
                                                    String val = gkbm[i];
                                            %>
                                            <option value="<%=val%>"><%=val%></option>
                                            <%
                                                }
                                            %>
                                        </select>
                                    </td>
                                </tr>
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="TXDZ"><span style="color: red">*</span>通讯地址</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="TXDZ" name="TXDZ" type="text" placeholder="通讯地址"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给username绑定blur事件
                                            $("#TXDZ").blur(function () {
                                                var TXDZ=$.trim(this.value);
                                                if (TXDZ==""){
                                                    alert("通讯地址不可以为空")
                                                    //$("#TXDZ")[0].focus()
                                                }

                                            });
                                        });
                                    </script>

                                    <td class="col-sm-2">
                                        <label class="control-label" for="SZDY"><span style="color: red">*</span>所在地域</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <select class="form-control" id="SZDY" name="SZDY">
                                            <option value="石家庄市">石家庄市</option>
                                            <option value="唐山市">唐山市</option>
                                            <option value="秦皇岛市">秦皇岛市</option>
                                            <option value="邯郸市">邯郸市</option>
                                            <option value="邢台市">邢台市</option>
                                            <option value="保定市">保定市</option>
                                            <option value="张家口市">张家口市</option>
                                            <option value="承德市">承德市</option>
                                            <option value="沧州市">沧州市</option>
                                            <option value="廊坊市">廊坊市</option>
                                            <option value="衡水市">衡水市</option>
                                            <option value="定州市(直管县)">定州市(直管县)</option>
                                            <option value="辛集市(直管县)">辛集市(直管县)</option>
                                            <option value="其他（河北工大）">其他（河北工大）</option>
                                        </select>

                                    </td>
                                </tr>
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="DWWZ">网址</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="DWWZ" name="DWWZ" type="text" placeholder="单位网址"/>
                                    </td>

                                    <td class="col-sm-2">
                                        <label class="control-label" for="DZYX"><span style="color: red">*</span>电子信箱</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="DZYX" name="DZYX" type="email" placeholder="电子信箱"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#DZYX").blur(function () {
                                                var DZYX=$.trim(this.value);
                                                if (DZYX==""){
                                                    alert("电子信箱不可以为空")
                                                    //$("#DZYX")[0].focus()
                                                }

                                            });
                                        });
                                    </script>
                                </tr>
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="FRDB"><span style="color: red">*</span>法人代表</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="FRDB" name="FRDB" type="text" placeholder="法人代表"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#FRDB").blur(function () {
                                                var FRDB=$.trim(this.value);
                                                if (FRDB==""){
                                                    alert("法人代表不可以为空")
                                                    //$("#FRDB")[0].focus()
                                                }

                                            });
                                        });
                                    </script>

                                    <td class="col-sm-2">
                                        <label class="control-label" for="YZBM">邮政编码</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="YZBM" name="YZBM" type="text" placeholder="邮政编码"/>

                                    </td>
                                </tr>
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="LXR"><span style="color: red">*</span>联 系 人</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="LXR" name="LXR" type="text" placeholder="联 系 人"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#LXR").blur(function () {
                                                var LXR=$.trim(this.value);
                                                if (LXR==""){
                                                    alert("联系人不可以为空")
                                                    //$("#LXR")[0].focus()
                                                }

                                            });
                                        });
                                    </script>

                                    <td class="col-sm-2">
                                        <label class="control-label" for="GDDH">固定电话</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="GDDH" name="GDDH" type="text" placeholder="固定电话"/>
                                    </td>
                                </tr>
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="YDDH"><span style="color: red">*</span>手  机</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="YDDH" name="YDDH" type="text" placeholder="移动电话"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#YDDH").blur(function () {
                                                var YDDH=$.trim(this.value);
                                                if (YDDH==""){
                                                    alert("移动电话不可以为空")
                                                    //$("#YDDH")[0].focus()
                                                }

                                            });
                                        });
                                    </script>

                                    <td class="col-sm-2">
                                        <label class="control-label" for="CZ">传真</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" id="CZ" name="CZ" type="text" placeholder="传真"/>
                                    </td>
                                </tr>
                                <tr class=" row">
                                    <td class="col-sm-2 text-center" >
                                        <label class="control-label" for="JGSX1"><span style="color: red">*</span>机构属性</label>
                                    </td>
                                    <td colspan="3" >
                                        <label class="radio-inline">
                                            <input type="radio" name="JGSX" id="JGSX1" value="企业" checked> 企业
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="JGSX" id="JGSX2" value="高等院校"> 高等院校
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="JGSX" id="JGSX3" value="研究机构"> 研究机构
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="JGSX" id="JGSX4" value="其他"> 其他
                                        </label>
                                    </td>
                                </tr>
                                <tr class="text-center row">
                                    <td >
                                        <label class="control-label" for="JGJJ">
                                            <span style="color: red">*</span>机构简介
                                            <br>
                                            <div class="text-center">
                                            <span id="JGJJtip" >0</span>/500
                                            </div>
                                        </label>
                                    </td>
                                    <td colspan="3">
                                        <textarea class="form-control" rows="8" name="JGJJ" id="JGJJ" placeholder="主要包括基本情况、现有研究基础等，限500字以内"></textarea>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#JGJJ").blur(function () {
                                                var JGJJ=$.trim(this.value);
                                                if (JGJJ==""){
                                                    alert("机构简介不可以为空")
                                                    //$("#JGJJ")[0].focus()
                                                }

                                            });
                                            $("#JGJJ").keyup(function(){
                                                var len = $(this).val().length;
                                                if(len > 500){
                                                    alert("字数不可以超过500");
                                                    //$("#JGJJ")[0].focus();
                                                }
                                                $("#JGJJtip").text(len);
                                            });
                                        });
                                    </script>
                                </tr>
                                <tr class="text-center row">
                                    <td class="col-sm-2">
                                        <label class=" control-label " for="JSXQMC"><span style="color: red">*</span>技术需求名称</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="form-control" name="JSXQMC" id="JSXQMC" type="text" placeholder="技术需求名称"/>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#JSXQMC").blur(function () {
                                                var JSXQMC=$.trim(this.value);
                                                if (JSXQMC==""){
                                                    alert("技术需求名称不可以为空")
                                                    //$("#JSXQMC")[0].focus()
                                                }

                                            });
                                        });
                                    </script>
                                    <td class="col-sm-2">
                                        <label class="control-label" for="JZXQNF"><span style="color: red">*</span>需求时限</label>
                                    </td>
                                    <td class="col-sm-4">
                                        <input class="" name="QSXQNF" id="QSXQNF" type="text" placeholder="起始年份"/>年
                                        <br>
                                        至
                                        <br>
                                        <input class="" name="JZXQNF" id="JZXQNF" type="text" placeholder="截止年份"/>年
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#QSXQNF").blur(function () {
                                                var QSXQNF=$.trim(this.value);
                                                if (QSXQNF==""){
                                                    alert("起始年份不可以为空")
                                                    //$("#QSXQNF")[0].focus()
                                                }

                                            });
                                            $("#JZXQNF").blur(function () {
                                                var JZXQNF=$.trim(this.value);
                                                if (JZXQNF==""){
                                                    alert("截止年份不可以为空")
                                                    //$("#JZXQNF")[0].focus()
                                                }

                                            });
                                        });
                                    </script>
                                </tr>
                                <tr class="text-center row">
                                    <td>
                                        <label class="control-label" for="ZDKJXQGS1">
                                            <span style="color: red">*</span><strong style="color: orangered">技术需求概述</strong>主要问题
                                            <br>
                                            <div class="text-center">
                                                <span id="ZDKJXQGS1tip" >0</span>/500
                                            </div>

                                        </label>
                                    </td>
                                    <td colspan="3">
                                        <textarea class="form-control" rows="8" name="ZDKJXQGS1" id="ZDKJXQGS1" placeholder="需要解决的重大技术问题，限500字以内"></textarea>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#ZDKJXQGS1").blur(function () {
                                                var ZDKJXQGS1=$.trim(this.value);
                                                if (ZDKJXQGS1==""){
                                                    alert("需要解决的重大技术问题不可以为空")
                                                    //$("#ZDKJXQGS1")[0].focus()
                                                }

                                            });
                                            $("#ZDKJXQGS1").keyup(function(){
                                                var len = $(this).val().length;
                                                if(len > 500){
                                                    alert("字数不可以超过500");
                                                    //$("#ZDKJXQGS1")[0].focus();
                                                }
                                                $("#ZDKJXQGS1tip").text(len);
                                            });
                                        });
                                    </script>
                                </tr>

                                <tr class="text-center row">
                                    <td>
                                        <label class="control-label" for="ZDKJXQGS2">
                                            <span style="color: red">*</span><strong style="color: orangered">技术需求概述</strong>技术关键
                                            <div class="text-center">
                                                <span id="ZDKJXQGS2tip" >0</span>/500
                                            </div>
                                        </label>
                                    </td>
                                    <td colspan="3">
                                        <textarea class="form-control" rows="8" name="ZDKJXQGS2" id="ZDKJXQGS2" placeholder="所需的关键技术、主要指标，限500字以内"></textarea>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#ZDKJXQGS2").blur(function () {
                                                var ZDKJXQGS2=$.trim(this.value);
                                                if (ZDKJXQGS2==""){
                                                    alert("技术需求概述技术关键不可以为空")
                                                    //$("#ZDKJXQGS2")[0].focus()
                                                }

                                            });
                                            $("#ZDKJXQGS2").keyup(function(){
                                                var len = $(this).val().length;
                                                if(len > 500){
                                                    alert("字数不可以超过500");
                                                    //$("#ZDKJXQGS2")[0].focus();
                                                }
                                                $("#ZDKJXQGS2tip").text(len);
                                            });
                                        });
                                    </script>
                                </tr>
                                <tr class="text-center row">
                                    <td>
                                        <label class="control-label" for="ZDKJXQGS3">
                                            <span style="color: red">*</span><strong style="color: orangered">技术需求概述</strong>预期目标
                                            <div class="text-center">
                                                <span id="ZDKJXQGS3tip" >0</span>/500
                                            </div>
                                        </label>
                                    </td>
                                    <td colspan="3">
                                        <textarea class="form-control" rows="8" name="ZDKJXQGS3" id="ZDKJXQGS3" placeholder="技术创新性、经济社会效益，限500字以内"></textarea>
                                    </td>
                                    <script>
                                        $(function () {
                                            //给绑定blur事件
                                            $("#ZDKJXQGS3").blur(function () {
                                                var ZDKJXQGS3=$.trim(this.value);
                                                if (ZDKJXQGS3==""){
                                                    alert("技术需求概述预期目标不可以为空")
                                                    //$("#ZDKJXQGS3")[0].focus()
                                                }

                                            });
                                            $("#ZDKJXQGS3").keyup(function(){
                                                var len = $(this).val().length;
                                                if(len > 500){
                                                    alert("字数不可以超过500");
                                                    //$("#ZDKJXQGS3")[0].focus();
                                                }
                                                $("#ZDKJXQGS3tip").text(len);
                                            });
                                        });
                                    </script>
                                </tr>
                                <tr class=" row">
                                    <td class="text-center">
                                        <label class="control-label" for="GJZ1">
                                            <span style="color: red">*</span>关键字
                                        </label>
                                    </td>
                                    <td colspan="3">
                                        <input type="text" name="GJZ1" id="GJZ1">
                                        <input type="text" name="GJZ2" id="GJZ2" disabled>
                                        <input type="text" name="GJZ3" id="GJZ3" disabled>
                                        <input type="text" name="GJZ4" id="GJZ4" disabled>
                                        <input type="text" name="GJZ5" id="GJZ5" disabled>
                                    </td>
                                    <script>
                                        //给绑定blur事件
                                        $("#GJZ1").blur(function () {
                                            var GJZ1=$.trim(this.value);
                                            if (GJZ1==""){
                                                alert("关键字一不可以为空")
                                                //$("#GJZ1")[0].focus()
                                            }else{
                                                $("#GJZ2").attr("disabled", false);
                                            }

                                        });
                                        //给绑定blur事件
                                        $("#GJZ2").blur(function () {
                                            var GJZ2=$.trim(this.value);
                                            if (GJZ2!=""){
                                                $("#GJZ3").attr("disabled", false);
                                            }
                                        });
                                        //给绑定blur事件
                                        $("#GJZ3").blur(function () {
                                            var GJZ3=$.trim(this.value);
                                            if (GJZ3!=""){
                                                $("#GJZ4").attr("disabled", false);
                                            }
                                        });
                                        //给绑定blur事件
                                        $("#GJZ4").blur(function () {
                                            var GJZ4=$.trim(this.value);
                                            if (GJZ4!=""){
                                                $("#GJZ5").attr("disabled", false);
                                            }
                                        });

                                    </script>
                                </tr>
                                <tr class=" row">
                                    <td class="text-center">
                                        <label class="control-label" for="NTRZJE">
                                            拟投入资金总额
                                        </label>
                                    </td>
                                    <td colspan="2">
                                        <input class="form-control" type="text" name="NTRZJE" id="NTRZJE">
                                    </td>
                                    <td>
                                        万元
                                    </td>
                                </tr>
                                <tr class=" row">
                                    <td class="col-sm-2 text-center" rowspan="2" >
                                        <label class="control-label" for="CZ">
                                            <span style="color: red">*</span>技术需求解决方式
                                        </label>
                                    </td>
                                    <td colspan="3" >
                                        <label class="radio-inline">
                                            <input type="radio" name="JSXQHZMS" id="JSXQHZMS1" value="独立研发" checked> 独立研发
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="JSXQHZMS" id="JSXQHZMS2" value="委托研发"> 委托研发
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="JSXQHZMS" id="JSXQHZMS3" value="合作研发"> 合作研发
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="JSXQHZMS" id="JSXQHZMS4" value="其他"> 其他
                                        </label>
                                    </td>
                                </tr>
                                <tr class=" row">
                                    <td class="text-center">
                                        合作意向单位
                                    </td>
                                    <td>
                                        <input  class="form-control" name="QTJSMS" type="text">
                                    </td>
                                    <td>
                                        (选填)
                                    </td>
                                </tr>
                                <tr class=" row">
                                    <td class="col-sm-2 text-center" >
                                        <label class="control-label" for="YJLX1"><span style="color: red">*</span>科技活动类型</label>
                                    </td>
                                    <td colspan="3" >
                                        <label class="radio-inline">
                                            <input type="radio" name="YJLX" id="YJLX1" value="基础研究" checked> 基础研究
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="YJLX" id="YJLX2" value="应用研究"> 应用研究
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="YJLX" id="YJLX3" value="试验发展"> 试验发展
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="YJLX" id="YJLX4" value="研究与试验发展成果应用"> 研究与试验发展成果应用
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="YJLX" id="YJLX5" value="技术推广与科技服务"> 技术推广与科技服务
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="YJLX" id="YJLX6" value="生产性活动"> 生产性活动
                                        </label>
                                    </td>
                                </tr>
                                <script>
                                    //在页面加载完成后
                                    $(function () {
                                        var val=$('input:radio[name="YJLX"]:checked').val();
                                        if (val=="基础研究"){
                                            $("#basic1").show();
                                            $("#basic2").show();
                                            $("#basic3").show();
                                            $("#disbasic1").hide();
                                            $("#disbasic2").hide();
                                            $("#disbasic3").hide();
                                            $("#disbasic4").hide();
                                            $("[name=‘XQJSSSLY’]").attr("value","");
                                            $("[name=‘XQJSYYHY’]").attr("value","");
                                        }else {
                                            $("#basic1").hide();
                                            $("#basic2").hide();
                                            $("#basic3").hide();
                                            $("[name=‘XKFL’]").attr("value","");
                                            $("#disbasic1").show();
                                            $("#disbasic2").show();
                                            $("#disbasic3").show();
                                            $("#disbasic4").show();

                                        }
                                        //给绑定blur事件
                                        $(":radio").click(function(){
                                            var val=$('input:radio[name="YJLX"]:checked').val();
                                            if (val=="基础研究"){
                                                $("#basic1").show();
                                                $("#basic2").show();
                                                $("#basic3").show();
                                                $("#disbasic1").hide();
                                                $("#disbasic2").hide();
                                                $("#disbasic3").hide();
                                                $("#disbasic4").hide();
                                            }else {
                                                $("#basic1").hide();
                                                $("#basic2").hide();
                                                $("#basic3").hide();
                                                $("#disbasic1").show();
                                                $("#disbasic2").show();
                                                $("#disbasic3").show();
                                                $("#disbasic4").show();

                                            }
                                        });
                                    });
                                </script>
                                <div id="basic">
                                    <tr id="basic1" class="text-center row">
                                        <td class="col-sm-2" rowspan="3">
                                            <label class=" control-label " for="XKFL1"><span style="color: red">*</span>学科分类</label>
                                        </td>
                                        <td colspan="3" >
                                            <select class="form-control" id="XKFL1" name="XKFL1">
                                                <c:forEach items="${requestScope.xkfls}" var="xkfl" varStatus="s">
                                                    <option value="${xkfl.id}">${xkfl.xkname}</option>
                                                </c:forEach>

                                            </select>
                                        </td>
                                    </tr>
                                    <script>
                                        //在页面加载完成后
                                        $(function () {
                                            //给username绑定blur事件
                                            $("#XKFL1").blur(function () {
                                                //获取username文本输入框的值
                                                var xkfl1 = $(this).val();
                                                $("#XKFL2").empty();
                                                $.ajax({
                                                    type:"POST",
                                                    url:"xkflServlet",
                                                    data:{"fatherid":xkfl1},
                                                    dataType:"json",
                                                    success:function(data){
                                                        for(var i=0;i<data.length;i++){
                                                            var $option = $("<option value='"+data[i].id+"'>"+data[i].xkname+"</option>");

                                                            $("#XKFL2").append($option);
                                                        }
                                                    }
                                                });

                                            });
                                        });
                                    </script>


                                    <tr id="basic2" class="row">
                                        <td colspan="3" >
                                            <select class="form-control" id="XKFL2" name="XKFL2">
                                            </select>
                                        </td>
                                    </tr>
                                    <script>
                                        //在页面加载完成后
                                        $(function () {
                                            //给username绑定blur事件
                                            $("#XKFL2").blur(function () {
                                                //获取username文本输入框的值
                                                var xkfl2 = $(this).val();
                                                $("#XKFL3").empty();
                                                $.ajax({
                                                    type:"POST",
                                                    url:"xkflServlet",
                                                    data:{"fatherid":xkfl2},
                                                    dataType:"json",
                                                    success:function(data){
                                                        for(var i=0;i<data.length;i++){
                                                            var $option = $("<option value='"+data[i].xkname+"'>"+data[i].xkname+"</option>");

                                                            $("#XKFL3").append($option);
                                                        }
                                                    }
                                                });

                                            });
                                        });
                                    </script>
                                    <tr id="basic3" class="row">
                                        <td colspan="3" >
                                            <select class="form-control" id="XKFL3" name="XKFL3">
                                            </select>
                                        </td>
                                    </tr>
                                </div>
                                <div id="disbasic" >
                                    <tr id="disbasic1" class="row">
                                        <td class="text-center">
                                            <label for="XQJSSSLY1">
                                                <span style="color: red">*</span>需求技术所属领域
                                            </label>
                                        </td>
                                        <td colspan="3">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY1" value="电子信息">
                                                    电子信息
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY2" value="光机电一体化">
                                                    光机电一体化
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY3" value="生物技术与制药">
                                                    生物技术与制药
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY4" value="新材料及应用">
                                                    新材料及应用
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY5" value="现代农业">
                                                    现代农业
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY6" value="新能源与高效节能">
                                                    新能源与高效节能
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY7" value="资源与环境">
                                                    资源与环境
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY8" value="高技术服务业">
                                                    高技术服务业
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY9" value="海洋">
                                                    海洋
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY10" value="社会公共事业">
                                                    社会公共事业
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY11" value="医疗卫生">
                                                    医疗卫生
                                                </label>
                                            </div>
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="XQJSSSLY[]" id="XQJSSSLY12" value="其它">
                                                    其它
                                                </label>
                                            </div>
                                            <div class="input-sm">
                                                <input type="text"class="form-control" placeholder="如果选择其它，请填写">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr id="disbasic2" class="text-center row">
                                        <td class="col-sm-2" rowspan="3">
                                            <label class=" control-label " for="XQJSYYHY1"><span style="color: red">*</span>需求技术应用行业</label>
                                        </td>
                                        <td colspan="3" >
                                            <select class="form-control" id="XQJSYYHY1" name="XQJSYYHY1">
                                                <c:forEach items="${requestScope.gmjjfls}" var="gmjjfl" varStatus="s">
                                                    <option value="${gmjjfl.id}">${gmjjfl.flname}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                        <script>
                                            //在页面加载完成后
                                            $(function () {
                                                //给username绑定blur事件
                                                $("#XQJSYYHY1").blur(function () {
                                                    //获取username文本输入框的值
                                                    var gmjjfl1 = $(this).val();
                                                    $("#XQJSYYHY2").empty();
                                                    $.ajax({
                                                        type:"POST",
                                                        url:"gmjjflServlet",
                                                        data:{"lastid":gmjjfl1},
                                                        dataType:"json",
                                                        success:function(data){
                                                            for(var i=0;i<data.length;i++){
                                                                var $option = $("<option value='"+data[i].id+"'>"+data[i].flname+"</option>");

                                                                $("#XQJSYYHY2").append($option);
                                                            }
                                                        }
                                                    });

                                                });
                                            });
                                        </script>
                                    </tr>
                                    <tr id="disbasic3" class="row">
                                        <td colspan="3" >
                                            <select class="form-control" id="XQJSYYHY2" name="XQJSYYHY2">
                                            </select>
                                        </td>
                                    </tr>
                                    <script>
                                        //在页面加载完成后
                                        $(function () {
                                            //给username绑定blur事件
                                            $("#XQJSYYHY2").blur(function () {
                                                //获取username文本输入框的值
                                                var gmjjfl2 = $(this).val();
                                                $("#XQJSYYHY3").empty();
                                                $.ajax({
                                                    type:"POST",
                                                    url:"gmjjflServlet",
                                                    data:{"lastid":gmjjfl2},
                                                    dataType:"json",
                                                    success:function(data){
                                                        for(var i=0;i<data.length;i++){
                                                            var $option = $("<option value='"+data[i].flname+"'>"+data[i].flname+"</option>");

                                                            $("#XQJSYYHY3").append($option);
                                                        }
                                                    }
                                                });

                                            });
                                        });
                                    </script>
                                    <tr id="disbasic4" class="row">
                                        <td colspan="3" >
                                            <select class="form-control" id="XQJSYYHY3" name="XQJSYYHY3">
                                            </select>
                                        </td>
                                    </tr>
                                </div>


                            </table>
                            <div class="col-sm-2 col-sm-offset-5">
                                <input type="reset" class="btn btn-info" value="重置">
                            </div>
                            <div class="col-sm-2 ">
                                <input type="submit" class="btn btn-info" value="保存并提交">
                            </div>
                        </form>

                    </div>


                </div>
                <!--中间部分-->
            </div>
        </div>
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
