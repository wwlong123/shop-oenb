<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="/common/mystyle.jsp" %>

</head>
<body>
<table id="table"></table>
<script type="text/javascript">
    $(function (){
        $("#table").bootstrapTable({
            url:"<%=request.getContextPath()%>/pinglun/selectcearch",
            method:"post",
            striped: true,  	// 斑马线效果     默认false
            //只允许选中一行
            singleSelect:true,
            //选中行是不选中复选框或者单选按钮
            clickToSelect:true,
            showToggle:true,   //是否显示详细视图和列表视图的切换按钮
            cardView: false,      //是否显示详细视图
            uniqueId: "id",  //每一行的唯一标识，一般为主键列
            showColumns: true,      //是否显示所有的列
            showRefresh: true,       //是否显示刷新按钮
            minimumCountColumns: 2,     //  最少留两列
            detailView: false,                  //是否显示父子表
            //发送到服务器的数据编码类型
            contentType:'application/x-www-form-urlencoded;charset=UTF-8',   //数据编码纯文本  offset=0&limit=5

            columns:[
                {field:'checkbox',checkbox:true},
                {field:'username',title:'用户',widht:50},
                {field:'z_zan',title:'赞',widht:50},
                {field:'z_cai',title:'踩',widht:50},
                {field:'testarea',title:'发表心情',widht:50},
                {field:'tdate',title:'发表时间',widht:50},
                {field:'caozuo',title:'操作',widht:50,
                    formatter:function(value,row,index){
                    var aar="<a href='' class='glyphicon glyphicon-thumbs-up' ></a>";
                    return aar;
                    }
                }
            ],
            //传递参数（*）
            queryParams:function(params){
                var bb={
                    /*
                        分页  自定义的参数         默认传 limit（展示几条）    offset（从第几条开始    起始条数）
                    */
                    "pageSize":params.limit,
                    "start":params.offset,

                }
                return bb;
            },

            ///前台--排序字段
            //sortName:'proPrice',
            //sortOrder:'desc',
            //前台--搜索框
            search:true,
            //启动回车键做搜索功能
            /*searchOnEnterKey:true,
            //分页方式   后台请求的分页方式
            sidePagination:'server',
            pagination: true,                   //是否显示分页（*）
            pageNum: 1,                       //每页的记录行数（*）
            pageSize: 2,                       //每页的记录行数（*）
            pageList: [2, 6, 9,12],        //可供选择的每页的行数（*）*/
        });

    })

</script>

</body>
</html>
