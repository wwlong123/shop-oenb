<%--
  Created by IntelliJ IDEA.
  User: 建伟
  Date: 2018/11/1
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>
<jsp:include page="/common/mystyle.jsp"></jsp:include>
<body>
<table id="dg" class="table-responsive"></table>
<script type="text/javascript">
    $('#dg').bootstrapTable({
        url:'<%=request.getContextPath() %>/partner/selectpartner',
        columns:[[
            {field:'id',title:'合作人ID',width:100,align:'center'},
            {field:'parname',title:'合作人',width:100,align:'center'},
            {field:'parcompany',title:'合作公司',width:100,align:'center'},
            {field:'parrelation',title:'联系方式',width:100,align:'center'},
            {field:'startdate',title:'开始时间',width:100,align:'center',
                formatter:function(value,row,index) {//value 当前字段值  row当前行的数据  index当前行
                    var simfomat = new Date();
                    simfomat.setTime(value);   //转换时间
                    return simfomat.toLocaleDateString();
                }
            },
            {field:'enddate',title:'结束时间',width:100,align:'center',
                formatter:function(value,row,index) {//value 当前字段值  row当前行的数据  index当前行
                    var simfomat = new Date();
                    simfomat.setTime(value);   //转换时间
                    return simfomat.toLocaleDateString();
                }
            },
            {field:'parstate',title:'合作关系',width:100,align:'center'},
            {field:'parimge',title:'广告',width:100,align:'center'},
            {field:'caozuo',title:'操作',width:100,align:'center',
                formatter:function(value,row,index) {
                    return "<button type='button' class='btn btn-default btn-sm'>操作</button>";
                }
            },
        ]]
    });
</script>
</body>
</html>
