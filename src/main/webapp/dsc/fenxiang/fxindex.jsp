<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2018-10-31
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/common/mystyle.jsp"></jsp:include>

<head>
    <title>后台数据审核</title>
</head>
<body>
<table id="redistab"></table>
<script type="text/javascript">
    $(function() {
        $("#redistab").bootstrapTable({
            url: "<%=request.getContextPath()%>/suppt/querySuppt",
            method: "post",
            striped: true,
            clickToSelect: true,
            //只允许选中一行
            singleSelect: true,
            //选中行是不选中复选框或者单选按钮
            clickToSelect: true,
            showToggle: true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            uniqueId: "zid",                 //每一行的唯一标识，一般为主键列
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,     //  最少留两列
            detailView: false,                  //是否显示父子表
            //发送到服务器的数据编码类型
            contentType: 'application/x-www-form-urlencoded;charset=UTF-8',   //数据编码纯文本  offset=0&limit=5
            toolbar: '#tabToolBar',   //  工具定义位置
            columns: [
                {
                    field: 'zid', title: '序号', width: 50,
                    formatter: function (value, row, index) {   //  格式化  当前单元格内容
                        return "<input type='checkbox' value=" + value + " name='chk'/>";
                    }
                },
                {field: 'ztitle', title: '标题', width: 100},
                {field: 'zshowop', title: '描述', width: 100},
                {field: 'maxname', title: '编程语言基础', width: 100},
                {field: 'zfile', title: '上传文件', width: 100},
                {field: 'minname', title: '技术支持', width: 100},
                {field: 'id', title: '操作', width: 100,
                    formatter: function (value, row, index) {
                        //通过formatter可以自定义列显示的内容
                        //value：当前field的值，即id
                        //row：当前行的数据
                        var a = "<input type='button' value='审核' onclick='jia("+row.zid+")'>";
                        return a;
                    }
                }
            ],
            queryParams:function(params){
                var whereParams={
                    "pageSize":params.limit,
                    "start":params.offset,
                }
                return whereParams;
            } ,
            search:true,

            //分页方式   后台请求的分页方式
            sidePagination:'client',
            pagination: true,                   //是否显示分页（*）
            pageNum:1,                       //每页的记录行数（*）
            pageSize:6,                       //每页的记录行数（*）
            pageList:[2,4,6],        //可供选择的每页的行数（*）
        })

    })
    function  jia(id) {
           $.ajax({
               url: '<%=request.getContextPath()%>/suppt/updateSuppt',
               type:'post',
               data:{id:id},
               success:function (data) {

                   location.reload()
               },
               error:function (){
                   alert("系统错误，请使用debug调试 ！！！");
               }
                })
    }
</script>

</body>
</html>
