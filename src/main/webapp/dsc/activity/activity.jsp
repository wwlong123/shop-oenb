<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0024)http://www.zuidaima.com/ -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
    <!DOCTYPE html>
<head>
    <meta charset="UTF-8"/>
    <title>Krajee JQuery Plugins - &copy; Kartik</title>


    <jsp:include page="/common/mystyle.jsp"></jsp:include>

</head>
<body>
<div  style="width: 300px; height: 300px;">
    <form class="form" action="#" method="post" enctype="multipart/form-data"  id="pollutionForm">
        <!-- 注意事项：Input type类型为file class为样式 id随意 name随意
             multiple（如果是要多图上传一定要加上，不加的话每次只能选中一张图）-->
        图片：<input type="file" class="file"  id="img" multiple name="images"><br>
    </form>
    <button ONCLICK="sunday()" ></button>
</div>

<script>

    var imageData = []; //多图上传返回的图片属性接受数组  这里是因为我在做表单其他属性提交的时候使用，在这里我没有将别的input写出来

    $("#img").fileinput({
        language : 'zh',
        uploadUrl : "<%=request.getContextPath()%>/file/shangchuan ",
        showUpload: true, //是否显示上传按钮
        showRemove : true, //显示移除按钮
        showPreview : true, //是否显示预览
        showCaption: false,//是否显示标题
        autoReplace : true,
        minFileCount: 0,
        uploadAsync: true,
        maxFileCount: 10,//最大上传数量
        browseOnZoneClick: true,
        msgFilesTooMany: "选择上传的文件数量 超过允许的最大数值！",
        enctype: 'multipart/form-data',
        // overwriteInitial: false,//不覆盖已上传的图片
        allowedFileExtensions : [ "jpg", "png", "gif" ],
        browseClass : "btn btn-primary", //按钮样式
        previewFileIcon : "<i class='glyphicon glyphicon-king'></i>",
    }).on("fileuploaded", function(e, data) {//文件上传成功的回调函数，还有其他的一些回调函数，比如上传之前...
        console.log(data);
        var res = data.response;
        console.log(res)
        imageData.push({
            "path": res.data.path,
            "date":res.data.date
        });
        console.log(imageData);
    });
    function sunday(){
        console.log($("#aaa").val);
        alert($("#aaa").val);
            }
</script>


</body>

</html>