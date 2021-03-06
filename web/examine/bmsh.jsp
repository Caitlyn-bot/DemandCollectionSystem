<%--
  Created by IntelliJ IDEA.
  User: 张志伟
  Date: 2020/10/27
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>部门审核</title>
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
                    <div id="collapseThree" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            <ul class="list-group">
                                <a id="xssh" class="list-group-item" href="${pageContext.request.contextPath}/examine/xssh.jsp">形式审核</a>
                                <a id="bmsh" class="list-group-item active" href="${pageContext.request.contextPath}/examine/bmsh.jsp">部门审核</a>
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
        <iframe name="hidden" style="display:none;"></iframe>
        <!--中间部分-->
        <div id="content">
            <!--页面中心内容-->
            <div class="col-sm-10">

                <!--中心内容-->
                <!--标签页-->
                <div>
                    <form class="form-inline" target="hidden" id="searchForm">
                        <div class="form-group">
                            <label for="sJGMC">机构全称</label>
                            <input type="text" class="form-control" id="sJGMC" name="sJGMC" placeholder="机构全称">
                        </div>
                        <div class="form-group">
                            <label for="sJSXQMC">技术需求名称</label>
                            <input type="text" class="form-control" id="sJSXQMC" name="sJSXQMC" placeholder="技术需求名称">
                        </div>
                        <br>
                        <div class="form-group">
                            <label for="sSZDY">所在地域</label>
                            <select class="form-control" id="sSZDY" name="sSZDY">
                                <option value=""></option>
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
                        </div>

                        <div class="form-group">
                            <label for="sGKGLBM">归口管理部门</label>
                            <select class="form-control " id="sGKGLBM" name="sGKGLBM">
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
                        </div>
                        <div class="form-group">
                            <label for="sJGSX">机构属性</label>
                            <select class="form-control " id="sJGSX" name="sJGSX">
                                <option value=""></option>
                                <option value="企业">企业</option>
                                <option value="高等院校">高等院校</option>
                                <option value="研究机构">研究机构</option>
                                <option value="其它">其它</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="sYJLX">科技活动类型</label>
                            <select class="form-control " id="sYJLX" name="sYJLX">
                                <option value=""></option>
                                <option value="基础研究">基础研究</option>
                                <option value="应用研究">应用研究</option>
                                <option value="试验发展">试验发展</option>
                                <option value="研究与试验发展成果应用">研究与试验发展成果应用</option>
                                <option value="技术推广与科技服务">技术推广与科技服务</option>
                                <option value="生产性活动">生产性活动</option>
                            </select>
                        </div>
                        <button onclick=" search();"  class="btn btn-default">搜索 </button>
                        <script>
                            function search() {
                                var sJGMC=$("#sJGMC").val();
                                var sJSXQMC = $("#sJSXQMC").val();
                                var sSZDY = $("#sSZDY").val();
                                var sGKGLBM = $("#sGKGLBM").val();
                                var sJGSX = $("#sJGSX").val();
                                var sYJLX = $("#sYJLX").val();
                                $("#showtable tr:not(:first)").empty();
                                $.ajax({
                                    type:"POST",
                                    url:"${pageContext.request.contextPath}/searchbmServlet",
                                    data:{"sJGMC":sJGMC,"sJSXQMC":sJSXQMC,"sSZDY":sSZDY
                                        ,"sGKGLBM":sGKGLBM,"sJGSX":sJGSX,"sYJLX":sYJLX},
                                    //data:$('#searchForm').serialize(),
                                    dataType:"json",
                                    success:function(data){
                                        for(var i=0;i<data.length;i++){
                                            var $option = $(
                                                "<tr class=\"text-center\">+" +
                                                "<td>"+data[i].jgmc+"</td>"+
                                                "<td>"+data[i].jsxqmc+"</td>"+
                                                "<td>"+data[i].szdy+"</td>"+
                                                "<td>"+data[i].gkglbm+"</td>"+
                                                "<td>"+data[i].jgsx+"</td>"+
                                                "<td>"+data[i].yjlx+"</td>"+
                                                "<td>"+
                                                "<a onclick=\"sh("+data[i].wjid+")\" data-toggle=\"modal\" data-target=\"#updateUserModal\" class=\"btn btn-info btn-sm\">" +
                                                "审核" +
                                                "</a>"+
                                                "</td>"+
                                                "</tr>");

                                            $("#showtable").append($option);
                                        }
                                    }
                                });
                            }
                        </script>
                        <script>
                            function sh(wjid) {
                                $.ajax({
                                    type:"POST",
                                    url:"${pageContext.request.contextPath}/queryMangeServlet",
                                    data:{"WJID":wjid},
                                    dataType:"json",
                                    success:function(data){
                                        $("#rWJID").val(data.wjid)
                                        $("#rJGMC").val(data.jgmc)
                                        $("#rGKGLBM option[value='"+data.gkglbm+"']").attr("selected",true)
                                        $("#rTXDZ").val(data.txdz)
                                        $("#rSZDY option[value='"+data.szdy+"']").attr("selected",true)
                                        $("#rDWWZ").val(data.dwwz)
                                        $("#rDZYX").val(data.dzyx)
                                        $("#rFRDB").val(data.frdb)
                                        $("#rYZBM").val(data.yzbm)
                                        $("#rLXR").val(data.lxr)
                                        $("#rGDDH").val(data.gddh)
                                        $("#rYDDH").val(data.yddh)
                                        $("#rCZ").val(data.cz)
                                        $("#rJGSX").val(data.jgsx)
                                        $("input[type='radio'][name='rJGSX'][value='" + data.jgsx + "']").attr("checked",true);
                                        $("#rJGJJ").val(data.jgjj)
                                        $("#rJSXQMC").val(data.jsxqmc)
                                        $("#rQSXQNF").val(data.qsxqnf)
                                        $("#rJZXQNF").val(data.jzxqnf)
                                        var zdkjxqgs=data.zdkjxqgs.split('///')
                                        $("#rZDKJXQGS1").val(zdkjxqgs[0])
                                        $("#rZDKJXQGS2").val(zdkjxqgs[1])
                                        $("#rZDKJXQGS3").val(zdkjxqgs[2])
                                        var gjz=data.gjz.split('///')
                                        $("#rGJZ1").val(gjz[0])
                                        $("#rGJZ2").val(gjz[1])
                                        $("#rGJZ3").val(gjz[2])
                                        $("#rGJZ4").val(gjz[3])
                                        $("#rGJZ5").val(gjz[4])
                                        $("#rNTRZJE").val(data.ntrzje)
                                        $("input[type='radio'][name='rJSXQHZMS'][value='" + data.yjlx + "']").attr("checked",true);
                                        $("#rQTJSMS").val(data.qtjsms)
                                        $("input[type='radio'][name='rYJLX'][value='" + data.yjlx + "']").attr("checked",true);
                                        if (data.yjlx=="基础研究"){
                                            $("#rbasic1").show();
                                            $("#rbasic2").show();
                                            $("#rbasic3").show();
                                            $("#rdisbasic1").hide();
                                            $("#rdisbasic2").hide();
                                            $("#rdisbasic3").hide();
                                            $("#rdisbasic4").hide();
                                            $("[name=‘XQJSSSLY’]").attr("value","");
                                            $("[name=‘XQJSYYHY’]").attr("value","");
                                        }else {
                                            $("#rbasic1").hide();
                                            $("#rbasic2").hide();
                                            $("#rbasic3").hide();
                                            $("#rdisbasic1").show();
                                            $("#rdisbasic2").show();
                                            $("#rdisbasic3").show();
                                            $("#rdisbasic4").show();

                                        }
                                        $("#rXKFL").val(data.xkfl)
                                        var xqjsssly=data.xqjsssly.split('///')

                                        for(var j=0;j<xqjsssly.length;j++){
                                            $("input[name='XQJSSSLY[]'][value="+xqjsssly[j]+"]").prop("checked",true);
                                        }
                                        $("#rXQJSYYHY").val(data.xqjsyyhy)
                                    }
                                });
                            }
                        </script>
                    </form>

                    <!--用户表格-->
                    <table id="showtable" class="table table-bordered table-hover table-striped">
                        <tr>
                            <th class="text-center">机构全称</th>
                            <th class="text-center">技术需求名称</th>
                            <th class="text-center">所在地域</th>
                            <th class="text-center">归口管理部门</th>
                            <th class="text-center">机构属性</th>
                            <th class="text-center">科技活动类型</th>
                            <th class="text-center">操作</th>
                        </tr>

                    </table>


                </div>
                <!--中间部分-->
            </div>
        </div>
    </div>
</div>
<!--页面中心内容-->
<!--形式审核的对话框-->
<div class="modal fade" id="updateUserModal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">编辑需求信息</h4>
            </div>
            <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/bmshServlet">

                <div class="modal-body">
                    <input type="hidden" name="rWJID" id="rWJID">
                    <strong>请注意：其中带<span style="color: red">*</span>的为必填项</strong>
                    <table class="table table-bordered" id="shenhetable">
                        <tr class="text-center row">
                            <td class="col-sm-2">
                                <label class=" control-label " for="rJGMC"><span style="color: red">*</span>机构全称</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rJGMC" name="rJGMC" type="text" placeholder="机构全称"/>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rJGMC").blur(function () {
                                        var rJGMC=$.trim(this.value);
                                        if (rJGMC==""){
                                            alert("机构全称不可以为空")
                                            $("#rJGMC")[0].focus()
                                        }

                                    });
                                });
                            </script>

                            <td class="col-sm-2">
                                <label class="control-label" for="rGKGLBM">归口管理部门</label>
                            </td>
                            <td class="col-sm-4">
                                <select class="form-control " id="rGKGLBM" name="rGKGLBM">
                                    <option value=" "></option>
                                    <%
                                        String rgkbm[] = { "保定国家高新技术产业开发区", "保定市科技局", "沧州市科技局", "承德国家高新技术产业开发区", "承德市科技局", "定州市科技局", "邯郸市科技局",
                                                "河北出入境检验检疫局", "河北钢铁集团有限公司", "河北行政学院", "河北省机构编制委员会办公室", "衡水市科技局", "廊坊市科技局", "秦皇岛市科技局", "省安全生产监督管理局",
                                                "省财政厅", "省档案局", "省地震局", "省发改委", "省法院", "省妇联", "省工商行政管理局", "省工业和信息化厅", "省公安厅", "省供销合作社 ", "省广播电视局",
                                                "省国防科技工业局", "省国家安全厅", "省国土资源厅", "省国资委", "省环保厅", "省计生委", "省检察院", "省交通厅", "省教育厅", "省科技厅", "省科协",
                                                "省科学院", "省林业厅", "省旅游局", "省民政厅", "省农科院", "省农业厅", "省气象局", "省人力资源和社会保障厅", "省人民政府外事办公室", "省商务厅",
                                                "省社会科学院", "省社科联", "省审计厅", "省食品药品监督管理局", "省水利厅", "省司法厅", "省体育局", "省统计局", "省委办公厅", "省委宣传部", "省委组织部",
                                                "省卫生厅", "省文化厅", "省物价局", "省新闻出版广电局", "省信访局", "省盐务局", "省政府办公厅", "省政府法制办", "省政府研究室", "省质量技术监督局",
                                                "省中小企业局", "省中医药管理局", "省住房和城乡建设厅", "省总工会", "石家庄国家高新技术产业开发区", "石家庄市科技局", "唐山国家高新技术产业开发区", "唐山市科技局",
                                                "团省委", "辛集市科技局", "邢台市科技局", "燕郊国家高新技术产业开发区", "张家口市科技局", "中共河北省委党校" };
                                        for (int i = 0; i < rgkbm.length; i++) {
                                            String val = rgkbm[i];
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
                                <label class=" control-label " for="rTXDZ"><span style="color: red">*</span>通讯地址</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rTXDZ" name="rTXDZ" type="text" placeholder="通讯地址"/>
                            </td>
                            <script>
                                $(function () {
                                    //给username绑定blur事件
                                    $("#rTXDZ").blur(function () {
                                        var rTXDZ=$.trim(this.value);
                                        if (rTXDZ==""){
                                            alert("通讯地址不可以为空")
                                            $("#rTXDZ")[0].focus()
                                        }

                                    });
                                });
                            </script>

                            <td class="col-sm-2">
                                <label class="control-label" for="rSZDY"><span style="color: red">*</span>所在地域</label>
                            </td>
                            <td class="col-sm-4">
                                <select class="form-control" id="rSZDY" name="rSZDY">
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
                                <label class=" control-label " for="rDWWZ">网址</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rDWWZ" name="rDWWZ" type="text" placeholder="单位网址"/>
                            </td>

                            <td class="col-sm-2">
                                <label class="control-label" for="rDZYX"><span style="color: red">*</span>电子信箱</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rDZYX" name="rDZYX" type="email" placeholder="电子信箱"/>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rDZYX").blur(function () {
                                        var rDZYX=$.trim(this.value);
                                        if (rDZYX==""){
                                            alert("电子信箱不可以为空")
                                            $("#rDZYX")[0].focus()
                                        }

                                    });
                                });
                            </script>
                        </tr>
                        <tr class="text-center row">
                            <td class="col-sm-2">
                                <label class=" control-label " for="rFRDB"><span style="color: red">*</span>法人代表</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rFRDB" name="rFRDB" type="text" placeholder="法人代表"/>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rFRDB").blur(function () {
                                        var rFRDB=$.trim(this.value);
                                        if (rFRDB==""){
                                            alert("法人代表不可以为空")
                                            $("#rFRDB")[0].focus()
                                        }

                                    });
                                });
                            </script>

                            <td class="col-sm-2">
                                <label class="control-label" for="rYZBM">邮政编码</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rYZBM" name="rYZBM" type="text" placeholder="邮政编码"/>

                            </td>
                        </tr>
                        <tr class="text-center row">
                            <td class="col-sm-2">
                                <label class=" control-label " for="rLXR"><span style="color: red">*</span>联 系 人</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rLXR" name="rLXR" type="text" placeholder="联 系 人"/>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rLXR").blur(function () {
                                        var rLXR=$.trim(this.value);
                                        if (rLXR==""){
                                            alert("联系人不可以为空")
                                            $("#rLXR")[0].focus()
                                        }

                                    });
                                });
                            </script>

                            <td class="col-sm-2">
                                <label class="control-label" for="rGDDH">固定电话</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rGDDH" name="rGDDH" type="text" placeholder="固定电话"/>
                            </td>
                        </tr>
                        <tr class="text-center row">
                            <td class="col-sm-2">
                                <label class=" control-label " for="rYDDH"><span style="color: red">*</span>手  机</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rYDDH" name="rYDDH" type="text" placeholder="移动电话"/>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rYDDH").blur(function () {
                                        var rYDDH=$.trim(this.value);
                                        if (rYDDH==""){
                                            alert("移动电话不可以为空")
                                            $("#rYDDH")[0].focus()
                                        }

                                    });
                                });
                            </script>

                            <td class="col-sm-2">
                                <label class="control-label" for="rCZ">传真</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" id="rCZ" name="rCZ" type="text" placeholder="传真"/>
                            </td>
                        </tr>
                        <tr class=" row">
                            <td class="col-sm-2 text-center" >
                                <label class="control-label" for="rJGSX1"><span style="color: red">*</span>机构属性</label>
                            </td>
                            <td colspan="3" >
                                <label class="radio-inline">
                                    <input type="radio" name="rJGSX" id="rJGSX1" value="企业" checked> 企业
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rJGSX" id="rJGSX2" value="高等院校"> 高等院校
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rJGSX" id="rJGSX3" value="研究机构"> 研究机构
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rJGSX" id="rJGSX4" value="其他"> 其他
                                </label>
                            </td>
                        </tr>
                        <tr class="text-center row">
                            <td >
                                <label class="control-label" for="rJGJJ">
                                    <span style="color: red">*</span>机构简介
                                    <br>
                                    <div class="text-center">
                                        <span id="rJGJJtip" >0</span>/500
                                    </div>
                                </label>
                            </td>
                            <td colspan="3">
                                <textarea class="form-control" rows="8" name="rJGJJ" id="rJGJJ" placeholder="主要包括基本情况、现有研究基础等，限500字以内"></textarea>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rJGJJ").blur(function () {
                                        var rJGJJ=$.trim(this.value);
                                        if (rJGJJ==""){
                                            alert("机构简介不可以为空")
                                            $("#rJGJJ")[0].focus()
                                        }

                                    });
                                    $("#rJGJJ").keyup(function(){
                                        var len = $(this).val().length;
                                        if(len > 500){
                                            alert("字数不可以超过500");
                                            $("#rJGJJ")[0].focus();
                                        }
                                        $("#rJGJJtip").text(len);
                                    });
                                });
                            </script>
                        </tr>
                        <tr class="text-center row">
                            <td class="col-sm-2">
                                <label class=" control-label " for="rJSXQMC"><span style="color: red">*</span>技术需求名称</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="form-control" name="rJSXQMC" id="rJSXQMC" type="text" placeholder="技术需求名称"/>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rJSXQMC").blur(function () {
                                        var rJSXQMC=$.trim(this.value);
                                        if (rJSXQMC==""){
                                            alert("技术需求名称不可以为空")
                                            $("#rJSXQMC")[0].focus()
                                        }

                                    });
                                });
                            </script>
                            <td class="col-sm-2">
                                <label class="control-label" for="rJZXQNF"><span style="color: red">*</span>需求时限</label>
                            </td>
                            <td class="col-sm-4">
                                <input class="" name="rQSXQNF" id="rQSXQNF" type="text" placeholder="起始年份"/>年
                                <br>
                                至
                                <br>
                                <input class="" name="rJZXQNF" id="rJZXQNF" type="text" placeholder="截止年份"/>年
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rQSXQNF").blur(function () {
                                        var rQSXQNF=$.trim(this.value);
                                        if (rQSXQNF==""){
                                            alert("起始年份不可以为空")
                                            $("#rQSXQNF")[0].focus()
                                        }

                                    });
                                    $("#rJZXQNF").blur(function () {
                                        var rJZXQNF=$.trim(this.value);
                                        if (rJZXQNF==""){
                                            alert("截止年份不可以为空")
                                            $("#rJZXQNF")[0].focus()
                                        }

                                    });
                                });
                            </script>
                        </tr>
                        <tr class="text-center row">
                            <td>
                                <label class="control-label" for="rZDKJXQGS1">
                                    <span style="color: red">*</span><strong style="color: orangered">技术需求概述</strong>主要问题
                                    <br>
                                    <div class="text-center">
                                        <span id="rZDKJXQGS1tip" >0</span>/500
                                    </div>

                                </label>
                            </td>
                            <td colspan="3">
                                <textarea class="form-control" rows="8" name="rZDKJXQGS1" id="rZDKJXQGS1" placeholder="需要解决的重大技术问题，限500字以内"></textarea>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rZDKJXQGS1").blur(function () {
                                        var rZDKJXQGS1=$.trim(this.value);
                                        if (rZDKJXQGS1==""){
                                            alert("需要解决的重大技术问题不可以为空")
                                            $("#rZDKJXQGS1")[0].focus()
                                        }

                                    });
                                    $("#rZDKJXQGS1").keyup(function(){
                                        var len = $(this).val().length;
                                        if(len > 500){
                                            alert("字数不可以超过500");
                                            $("#rZDKJXQGS1")[0].focus();
                                        }
                                        $("#rZDKJXQGS1tip").text(len);
                                    });
                                });
                            </script>
                        </tr>

                        <tr class="text-center row">
                            <td>
                                <label class="control-label" for="rZDKJXQGS2">
                                    <span style="color: red">*</span><strong style="color: orangered">技术需求概述</strong>技术关键
                                    <div class="text-center">
                                        <span id="rZDKJXQGS2tip" >0</span>/500
                                    </div>
                                </label>
                            </td>
                            <td colspan="3">
                                <textarea class="form-control" rows="8" name="rZDKJXQGS2" id="rZDKJXQGS2" placeholder="所需的关键技术、主要指标，限500字以内"></textarea>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rZDKJXQGS2").blur(function () {
                                        var rZDKJXQGS2=$.trim(this.value);
                                        if (rZDKJXQGS2==""){
                                            alert("技术需求概述技术关键不可以为空")
                                            $("#rZDKJXQGS2")[0].focus()
                                        }

                                    });
                                    $("#rZDKJXQGS2").keyup(function(){
                                        var len = $(this).val().length;
                                        if(len > 500){
                                            alert("字数不可以超过500");
                                            $("#rZDKJXQGS2")[0].focus();
                                        }
                                        $("#rZDKJXQGS2tip").text(len);
                                    });
                                });
                            </script>
                        </tr>
                        <tr class="text-center row">
                            <td>
                                <label class="control-label" for="rZDKJXQGS3">
                                    <span style="color: red">*</span><strong style="color: orangered">技术需求概述</strong>预期目标
                                    <div class="text-center">
                                        <span id="rZDKJXQGS3tip" >0</span>/500
                                    </div>
                                </label>
                            </td>
                            <td colspan="3">
                                <textarea class="form-control" rows="8" name="rZDKJXQGS3" id="rZDKJXQGS3" placeholder="技术创新性、经济社会效益，限500字以内"></textarea>
                            </td>
                            <script>
                                $(function () {
                                    //给绑定blur事件
                                    $("#rZDKJXQGS3").blur(function () {
                                        var rZDKJXQGS3=$.trim(this.value);
                                        if (rZDKJXQGS3==""){
                                            alert("技术需求概述预期目标不可以为空")
                                            $("#rZDKJXQGS3")[0].focus()
                                        }

                                    });
                                    $("#rZDKJXQGS3").keyup(function(){
                                        var len = $(this).val().length;
                                        if(len > 500){
                                            alert("字数不可以超过500");
                                            $("#rZDKJXQGS3")[0].focus();
                                        }
                                        $("#rZDKJXQGS3tip").text(len);
                                    });
                                });
                            </script>
                        </tr>
                        <tr class=" row">
                            <td class="text-center">
                                <label class="control-label" for="rGJZ1">
                                    <span style="color: red">*</span>关键字
                                </label>
                            </td>
                            <td colspan="3">
                                <input type="text" name="rGJZ1" id="rGJZ1">
                                <input type="text" name="rGJZ2" id="rGJZ2" disabled>
                                <input type="text" name="rGJZ3" id="rGJZ3" disabled>
                                <input type="text" name="rGJZ4" id="rGJZ4" disabled>
                                <input type="text" name="rGJZ5" id="rGJZ5" disabled>
                            </td>
                            <script>
                                //给绑定blur事件
                                $("#rGJZ1").blur(function () {
                                    var rGJZ1=$.trim(this.value);
                                    if (rGJZ1==""){
                                        alert("关键字一不可以为空")
                                        $("r#GJZ1")[0].focus()
                                    }else{
                                        $("#rGJZ2").attr("disabled", false);
                                    }

                                });
                                //给绑定blur事件
                                $("#rGJZ2").blur(function () {
                                    var rGJZ2=$.trim(this.value);
                                    if (rGJZ2!=""){
                                        $("#rGJZ3").attr("disabled", false);
                                    }
                                });
                                //给绑定blur事件
                                $("#rGJZ3").blur(function () {
                                    var rGJZ3=$.trim(this.value);
                                    if (rGJZ3!=""){
                                        $("#rGJZ4").attr("disabled", false);
                                    }
                                });
                                //给绑定blur事件
                                $("#rGJZ4").blur(function () {
                                    var rGJZ4=$.trim(this.value);
                                    if (rGJZ4!=""){
                                        $("#rGJZ5").attr("disabled", false);
                                    }
                                });

                            </script>
                        </tr>
                        <tr class=" row">
                            <td class="text-center">
                                <label class="control-label" for="rNTRZJE">
                                    拟投入资金总额
                                </label>
                            </td>
                            <td colspan="2">
                                <input class="form-control" type="text" name="rNTRZJE" id="rNTRZJE">
                            </td>
                            <td>
                                万元
                            </td>
                        </tr>
                        <tr class=" row">
                            <td class="col-sm-2 text-center" rowspan="2" >
                                <label class="control-label" for="rJSXQHZMS1">
                                    <span style="color: red">*</span>技术需求解决方式
                                </label>
                            </td>
                            <td colspan="3" >
                                <label class="radio-inline">
                                    <input type="radio" name="rJSXQHZMS" id="rJSXQHZMS1" value="独立研发" checked> 独立研发
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rJSXQHZMS" id="rJSXQHZMS2" value="委托研发"> 委托研发
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rJSXQHZMS" id="rJSXQHZMS3" value="合作研发"> 合作研发
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rJSXQHZMS" id="rJSXQHZMS4" value="其他"> 其他
                                </label>
                            </td>
                        </tr>
                        <tr class=" row">
                            <td class="text-center">
                                合作意向单位
                            </td>
                            <td>
                                <input  class="form-control" name="rQTJSMS" type="text">
                            </td>
                            <td>
                                (选填)
                            </td>
                        </tr>
                        <tr class=" row">
                            <td class="col-sm-2 text-center" >
                                <label class="control-label" for="rYJLX1"><span style="color: red">*</span>科技活动类型</label>
                            </td>
                            <td colspan="3" >
                                <label class="radio-inline">
                                    <input type="radio" name="rYJLX" id="rYJLX1" value="基础研究" checked> 基础研究
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rYJLX" id="rYJLX2" value="应用研究"> 应用研究
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rYJLX" id="rYJLX3" value="试验发展"> 试验发展
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rYJLX" id="rYJLX4" value="研究与试验发展成果应用"> 研究与试验发展成果应用
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rYJLX" id="rYJLX5" value="技术推广与科技服务"> 技术推广与科技服务
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rYJLX" id="rYJLX6" value="生产性活动"> 生产性活动
                                </label>
                            </td>
                        </tr>
                        <script>
                            //在页面加载完成后
                            $(function () {
                                var val=$('input:radio[name="rYJLX"]:checked').val();
                                if (val=="基础研究"){
                                    $("#rbasic1").show();
                                    $("#rbasic2").show();
                                    $("#rbasic3").show();
                                    $("#rdisbasic1").hide();
                                    $("#rdisbasic2").hide();
                                    $("#rdisbasic3").hide();
                                    $("#rdisbasic4").hide();
                                    $("[name=‘rXQJSSSLY’]").attr("value","");
                                    $("[name=‘rXQJSYYHY’]").attr("value","");
                                }else {
                                    $("#rbasic1").hide();
                                    $("#rbasic2").hide();
                                    $("#rbasic3").hide();
                                    $("[name=‘rXKFL’]").attr("value","");
                                    $("#rdisbasic1").show();
                                    $("#rdisbasic2").show();
                                    $("#rdisbasic3").show();
                                    $("#rdisbasic4").show();

                                }
                                //给绑定blur事件
                                $(":radio").click(function(){
                                    var val=$('input:radio[name="rYJLX"]:checked').val();
                                    if (val=="基础研究"){
                                        $("#rbasic1").show();
                                        $("#rbasic2").show();
                                        $("#rbasic3").show();
                                        $("#rdisbasic1").hide();
                                        $("#rdisbasic2").hide();
                                        $("#rdisbasic3").hide();
                                        $("#rdisbasic4").hide();
                                    }else {
                                        $("#rbasic1").hide();
                                        $("#rbasic2").hide();
                                        $("#rbasic3").hide();
                                        $("#rdisbasic1").show();
                                        $("#rdisbasic2").show();
                                        $("#rdisbasic3").show();
                                        $("#rdisbasic4").show();

                                    }
                                });
                            });
                        </script>
                        <div id="rbasic">
                            <tr id="rbasic1" class="text-center row">
                                <td class="col-sm-2" >
                                    <label class=" control-label " for="rXKFL"><span style="color: red">*</span>学科分类</label>
                                </td>
                                <td colspan="3" >
                                    <input type="text" class="form-control" name="XKFL" id="rXKFL">
                                </td>
                            </tr>
                        </div>
                        <div id="rdisbasic" >
                            <tr id="rdisbasic1" class="row">
                                <td class="text-center">
                                    <label for="rXQJSSSLY1">
                                        <span style="color: red">*</span>需求技术所属领域
                                    </label>
                                </td>
                                <td colspan="3">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY1" value="电子信息">
                                            电子信息
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY2" value="光机电一体化">
                                            光机电一体化
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY3" value="生物技术与制药">
                                            生物技术与制药
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY4" value="新材料及应用">
                                            新材料及应用
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY5" value="现代农业">
                                            现代农业
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY6" value="新能源与高效节能">
                                            新能源与高效节能
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY7" value="资源与环境">
                                            资源与环境
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY8" value="高技术服务业">
                                            高技术服务业
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY9" value="海洋">
                                            海洋
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY10" value="社会公共事业">
                                            社会公共事业
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY11" value="医疗卫生">
                                            医疗卫生
                                        </label>
                                    </div>
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="XQJSSSLY[]" id="rXQJSSSLY12" value="其它">
                                            其它
                                        </label>
                                    </div>
                                    <div class="input-sm">
                                        <input type="text"class="form-control" placeholder="如果选择其它，请填写">
                                    </div>
                                </td>
                            </tr>
                            <tr id="rdisbasic2" class="text-center row">
                                <td class="col-sm-2" rowspan="">
                                    <label class=" control-label " for="rXQJSYYHY"><span style="color: red">*</span>需求技术应用行业</label>
                                </td>
                                <td colspan="3" >
                                    <input type="text" class="form-control" name="XQJSYYHY" id="rXQJSYYHY">
                                </td>
                            </tr>

                        </div>
                        <tr class="row">
                            <td class="col-sm-2 text-center"  >
                                <label class="control-label" for="BMSFSH">
                                    <span style="color: red">审核意见</span>
                                </label>
                            </td>
                            <td colspan="3">
                                <select class="form-control " id="BMSFSH" name="BMSFSH">
                                    <option value="0">不通过</option>
                                    <option value="1">通过</option>
                                </select>
                            </td>
                        </tr>
                        <tr class="text-center row">
                            <td >
                                <label class="control-label" for="BMSHTYJ">
                                    <span style="color: red">部门审核意见</span>
                                    <br>
                                </label>
                            </td>
                            <td colspan="3">
                                <textarea class="form-control" rows="8" name="BMSHTYJ" id="BMSHTYJ" placeholder="部门审核意见"></textarea>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">确认审核</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消审核</button>
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
