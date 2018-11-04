<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <%@ include file="/common/mystyle.jsp" %>
</head>
<body>

<button type="button" class="btn btn-error" onclick="addMongo()">新增</button>
<table id="table"></table>

<script type="text/javascript">
    $(function (){
        $("#table").bootstrapTable({
            url:"<%=request.getContextPath()%>/cearch/selectcearch",
            method:"post",
            striped: true,  	// 斑马线效果     默认false
            //只允许选中一行
            singleSelect:true,
            //选中行是不选中复选框或者单选按钮
            clickToSelect:true,
            showToggle:true,   //是否显示详细视图和列表视图的切换按钮
            cardView: false,      //是否显示详细视图
            uniqueId: "zids",  //每一行的唯一标识，一般为主键列
            showColumns: true,      //是否显示所有的列
            showRefresh: true,       //是否显示刷新按钮
            minimumCountColumns: 2,     //  最少留两列
            detailView: false,                  //是否显示父子表
            //发送到服务器的数据编码类型
            contentType:'application/x-www-form-urlencoded;charset=UTF-8',   //数据编码纯文本  offset=0&limit=5

            columns:[
                {field:'checkbox',checkbox:true},
                {field:'zids',title:'ID',widht:50},
                {field:'ztext',title:'书籍名称',widht:50},
                {field:'caozuo',title:'操作',widht:50,
                    formatter:function(value,row,index){
                        return  arr ="<input type='button' onclick='deleteBook(\""+row.zids+"\")' class='btn btn-primary'  value='删除'>";
                    }}
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
            searchOnEnterKey:true,
            //分页方式   后台请求的分页方式
            sidePagination:'server',
            pagination: true,                   //是否显示分页（*）
            pageNum: 1,                       //每页的记录行数（*）
            pageSize: 2,                       //每页的记录行数（*）
            pageList: [2, 6, 9,12],        //可供选择的每页的行数（*）

        });

    })

    //添加跳转页面
    function  addMongo(){
        //  复选框  ID
        dialog("<%=request.getContextPath()%>/cearch/tomongodialog","<%=request.getContextPath()%>/cearch/savecaerch","新增图书");
    }
    //添加dialog弹框
    function  dialog(HTMLurl,submitUrl,title){

        var dialog = bootbox.dialog({
            title: title,
            message: getJspHtml(HTMLurl),   //调用方法
            buttons:{
                "save":{
                    label: '保存',
                    //自定义样式
                    className: "btn-success",
                    callback: function() {
                        $.ajax({
                            url:submitUrl,
                            type:'post',
                            data:$("#formid").serialize(),
                            success:function(data){
                                bootbox.alert("保存成功");

                            },
                            error:function(){
                                bootbox.alert("ajax失败");
                            }
                        });
                    }
                },
                "unSave":{
                    label: '取消',
                    //自定义样式
                    className: "btn-info",
                    callback: function() {
                        // return false;  //dialog不关闭
                    }
                }
            }
        });

    }
    /*
    *发送ajax请求获取jsp页面内容
    */
    function getJspHtml(urlStr){
        var  jspHtml = "";
//	 async  (默认: true) 默认设置下，所有请求均为异步请求。如果需要发送同步请求，请将此选项设置为 false。
//注意，同步请求将锁住浏览器，用户其它操作必须等待请求完成才可以执行。
        $.ajax({
            url:urlStr,
            type:'post',
            //同步的ajax
            async:false,
            success:function(data){
                //alert(data);//data--addProduct.jsp页面内容
                jspHtml = data;
            },
            error:function(){
                bootbox.alert("ajax失败");
            }
        });
        return jspHtml;
    }
    function deleteBook(id){
        $.ajax({
            url:"<%=request.getContextPath()%>/cearch/deletech",
            type:"post",
            data:{"id":id},
            success:function(){
                alert("删除成功")
                location.reload(true);
            }
        })



    }





</script>

</body>
</html>