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
<button type='button' class='btn btn-default btn-sm' onclick='tankuang()'>新  增</button>
<table id="dg" class="table-responsive"></table>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            </div>
            <div class="modal-body">
                <form id="form">
                    <div class="form-group">
                        <label for="name" style="align-content: center">合作人</label>
                        <input type="text" class="form-control" name="parname" id="parname" placeholder="请输入名称">
                        <label for="name" style="align-content: center">合作公司</label>
                        <input type="text" class="form-control" name="parcompany" id="parcompany" placeholder="请输入名称">
                        <label for="name" style="align-content: center">联系方式</label>
                        <input type="text" class="form-control" name="parrelation" id="parrelation" placeholder="请输入名称">
                        <label for="name" style="align-content: center">开始时间</label>
                        <input type="date" class="form-control" name="startdate" id="startdate" placeholder="请输入名称">
                        <label for="name" style="align-content: center">结束时间</label>
                        <input type="date" class="form-control" name="enddate" id="enddate" placeholder="请输入名称">
                        <label for="name" style="align-content: center">广告</label>
                        <input type="text" class="form-control" name="parimge" id="parimge" placeholder="请输入名称">
                        <input type="hidden" name="userid" id="zpid">
                        <input type="hidden" name="parstate" id="parstate" value="1">
                    </div>
                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="addpartner()">提交</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>

<script type="text/javascript">
    $('#dg').bootstrapTable({
        url: '<%=request.getContextPath() %>/partner/selectpartner',
        columns: [[
            {field: 'id', title: '合作人ID', width: 100, align: 'center'},
            {field: 'parname', title: '合作人', width: 100, align: 'center'},
            {field: 'parcompany', title: '合作公司', width: 100, align: 'center'},
            {field: 'parrelation', title: '联系方式', width: 100, align: 'center'},
            {field: 'startdate', title: '开始时间', width: 100, align: 'center'},
            {field: 'enddate', title: '结束时间', width: 100, align: 'center'},
            {field: 'parstate', title: '合作关系', width: 100, align: 'center',
                formatter: function (value, row, index) {
                    return value == 1 ? "合作" : "解约合作";
                }
            },
            {field: 'parimge', title: '广告', width: 100, align: 'center'},
            {
                field: 'caozuo', title: '操作', width: 100, align: 'center',
                formatter: function (value, row, index) {
                    arr = "<button type='button' class='btn btn-default btn-sm' onclick='delpartner("+row.id+")'>删  除</button>";
                    return arr;
                }
            }
        ]]
    })

    function tankuang(){
        $("#myModal").modal()
    }
    function addpartner() {
        $.ajax({
            url:"<%=request.getContextPath() %>/partner/addpartner",
            type:"post",
            data:$("#form").serialize(),
            success:function(){
                $('#dg').bootstrapTable('refresh');
                alert("恭喜保存成功")
            }
        })
    }

    function delpartner(id) {
        $.ajax({
            url:"<%=request.getContextPath() %>/partner/delpartner",
            type:"post",
            data:{"userid":id},
            success:function(){
                $('#dg').bootstrapTable('refresh');
                alert("恭喜删除成功")
            }
        })
    }
</script>
</body>
</html>
