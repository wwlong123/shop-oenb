<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <style type="text/css">
        body {padding-top:55px;}
    </style>
</head>
<%@ include file="/common/mystyle.jsp"%>
<body>
<!--导航条  -->
<!--定义在容器顶部  -->
<nav class="navbar-fixed-top btn-primary">
<div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <!-- 头部信息 -->
    <div class="navbar-header">
        <a class="navbar-brand glyphicon" href="#" id="menu-toggle">
            <img src="" alt="" width="200px">
            <font color="#f0ffff">金科代码 </font>
        </a>
    </div>
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        <ul class="nav navbar-nav">
            <li class="active "><a href="#" class="glyphicon">&nbsp<font color="#f0ffff">首页 </font><span class="sr-only">(current)</span></a></li>
            <li><a href="#" class="glyphicon">&nbsp<font color="#f0ffff">代码</font></a></li>
            <li><a href="#" class="glyphicon">&nbsp<font color="#f0ffff">问答</font></a></li>
            <li><a href="#" class="glyphicon">&nbsp<font color="#f0ffff">博客</font></a></li>
            <li><a href="#" class="glyphicon">&nbsp<font color="#f0ffff">动态</font></a></li>
        </ul>
        <form class="navbar-form navbar-left">
            <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
        </form>

        <!-- 右边的    导航 按钮 -->
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><font color="#f0ffff">登陆</font></a></li>
            <li><a href="#"><font color="#f0ffff">注册</font></a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->
</nav>
<!-- ============================导航结束==================================-->
<div class="row">
    <div class="col-md-3"  >
    </div>
    <div class="col-md-6"  >
        <img src="http://cms-bucket.nosdn.127.net/2018/11/01/cfcdd6a5296047ea92d15d07fe52204c.png" width="650px"  height="70px" alt="">
    </div>
    <div class="col-md-3"  >
    </div>
</div>
<div class="row">
        <div class="col-md-2"  >
        </div>
        <div class="col-md-4"  >
            <!--最热门 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title glyphicon glyphicon-align-left">最热门</h3>
                    </div>
                    <div class="panel-body" style="height: 400px;">
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                    </div>
                </div>
        </div>
    <div class="col-md-4"  >
            <!--最热门 -->
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title glyphicon glyphicon-align-left">最热门</h3>
                    </div>
                    <div class="panel-body" style="height: 400px;">
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                        <a href="#">sssssssssssssssss</a>
                    </div>
                </div>
        </div>
        <div class="col-md-2"  >
        </div>
    </div>
</body>

<script >
    $(function () {
        $('#myTab a:last').tab('show')
    })
</script>

</html>
