<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
    <style type="text/css">
        .table th, .table td {
            text-align: center;
            vertical-align: middle!important;
        }
        body {padding-top:55px;}
        .nav-tabs {position: relative;border-bottom:0px;}
        .nav-tabs li{position: relative;margin-bottom:0px;}
        .nav-tabs li>a:hover{background-color: white;color: #32c5d2;}
        .nav-tabs>li.active>a{color: #32c5d2!important;}
        .nav-tabs li>a{border:0px!important;cursor:pointer!important;color: #888;
            font-size:13px!important;}
        .qiyu-addtabas-custom{border:0px;}
        .qiyu-addtabs-vertical-line{margin-left:-18px;margin-right: 12px;}




    </style>
</head>
<%@ include file="/common/mystyle.jsp"%>
<body>
<!--导航条  -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <!--定义在容器顶部  -->
    <div class="container-fluid">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- Brand and toggle get grouped for better mobile display -->
        <!-- 头部信息 -->
        <div class="navbar-header">
            <a class="navbar-brand glyphicon glyphicon-globe" href="#" id="menu-toggle">
                金科任务流程系统
            </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active "><a href="#" class="glyphicon glyphicon-shopping-cart">&nbsp招标采购 <span class="sr-only">(current)</span></a></li>
                <li><a href="#" class="glyphicon glyphicon-grain">&nbsp师资团队</a></li>
                <li><a href="#" class="glyphicon glyphicon-sunglasses">&nbsp明星学员</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle glyphicon glyphicon-text-color" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">java课程 <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#" class="glyphicon glyphicon-cloud">云计算</a></li>
                        <li><a href="#" class="glyphicon glyphicon-th">云应用</a></li>
                        <li><a href="#" class="glyphicon glyphicon-info-sign">云服务</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#" class="glyphicon glyphicon-cloud-upload">大数据</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#" class="glyphicon glyphicon-cloud-download">数据挖掘</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>

            <!-- 右边的    导航 按钮 -->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Link</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">Separated link</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- ============================导航结束==================================-->
<div class="row">
    <div class="col-md-12">
    </div>
</div>
<div class="col-md-3"  style="height: 3000px;">



    <div class="list-group">
        <a href="#userid" class="list-group-item active" data-toggle="collapse" data-parent="#accordion">
            <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
            <span class="badge">14</span>
            系统管理机制</a>
        <!-- tree 的插件 -->
        <div id="treeDiv"></div>

    </div>
    <a href="#pingtaiid" class="list-group-item" data-toggle="collapse" data-parent="#accordion">自定义流程
        <span class="glyphicon glyphicon-tree-deciduous" aria-hidden="true"></span>
        <span class="badge">6</span>
    </a>
    <div  id="pingtaiid"  class="nav collapse">
        <a href="javascript:tableSelect()" class="list-group-item list-group-item-success">自定义属性</a>
        <a href="javascript:colmd()" class="list-group-item list-group-item-info">创建流程</a>
        <a href="javascript:selectTable()" class="list-group-item list-group-item-warning">待审批</a>
        <a href="javascript:jiazaiTable()" class="list-group-item list-group-item-warning">我审批后的数据</a>
        <a href="javascript:selectFlow()"  class="list-group-item list-group-item-danger">添加申请</a>
    </div>
    <a href="#logsid" class="list-group-item" data-toggle="collapse" data-parent="#accordion">工作日志
        <span class="badge">15</span>
        <span class="glyphicon glyphicon-subscript" aria-hidden="true"></span>
    </a>
    <div  id="logsid"  class="nav collapse">
        <a href="#" class="list-group-item list-group-item-success">新增日志</a>
        <a href="#" class="list-group-item list-group-item-info">个人日志</a>
        <a href="#" class="list-group-item list-group-item-warning">共享日志</a>
    </div>
</div>
<div class="col-md-8"  id="colmd8"   style="height: 3000px;" >
    <!--   选项卡    -->
    <!-- Nav tabs -->
    <ul id="tabs" class="nav nav-tabs" role="tablist">
        <li role="presentation" class="active">
            <a href="#home" aria-controls="home" role="tab" data-toggle="tab">欢迎</a></li>
    </ul>
    <!-- 选项卡  内容 -->
    <!-- Tab panes -->
    <div class="tab-content" style="height:5000px">
        <div role="tabpanel" style="" class="tab-pane active " id="home">后台管理系统</div>
    </div>
</div>

</body>

<script >
    $(function(){
            $.ajax({
                url : "<%=request.getContextPath() %>/login/selectTree", //所需要的列表接口地址
                type : "post",
                dataType : "json",
                success : function(data) {
                    //渲染树插件 treeview()
                    $("#treeDiv").treeview({
                        //data属性 树节点信息 json数组
                        data: data,
                        //tree默认展开的节点级别默认为2
                        levels: 0,
                        //含有子节点的图标
                        collapseIcon:'glyphicon glyphicon-star-empty',
                        //没有子节点的图标
                        emptyIcon:'glyphicon glyphicon-usd',
                        //背景颜色
                        //backColor: 'green'
                        //是否显示复选框
                        showCheckbox:true,
                        //是否允许选中多个节点
                        //multiSelect:true,
                        //启用节点的超链接功能默认为false,节点需指定href属性
                        enableLinks:true,
                        //事件当节点选中时
                        onNodeSelected:function(event,node){
                            //动态向 nav-tabs 导航标签添加tab选项卡
                            //addTabs方法  add() 添加tab  close()关闭tab  closeAll() 关闭全部tab
                            if(null !=  node.url){
                                $.addtabs.add({
                                    id:node.id,
                                    title:node.text,
                                    url:node.url,
                                })
                            }

                        }
                    })
                }
            });
        })

</script>

</html>
