<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/31 0031
  Time: 下午 3:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>博客</title>
    <link href="http://www.zuidaima.com/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link href="../bokejs/shCore-min.css" type="text/css" rel="stylesheet">
    <link href="../bokejs/bootstrap.min.css" rel="stylesheet">
    <link href="../bokejs/font-awesome.min.css" rel="stylesheet">
    <link href="../bokejs/zuidaima.css" rel="stylesheet">
    <script src="../bokejs/hm.js.下载"></script>
    <script src="../bokejs/f(5).txt"></script><script src="../bokejs/ca-pub-2303958443489176.js.下载"></script>
    <script src="../bokejs/ckeditor.js.下载">
     </script><style>.cke{visibility:hidden;}</style>
    <script src="../bokejs/jquery.1.10.2.min.js.下载"></script>
    <script src="../bokejs/zuidaima.js.下载"></script>
    <link rel="preload" href="../bokejs/f(6).txt" as="script">
    <script type="text/javascript" src="../bokejs/f(6).txt"></script>
    <link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20181024/r20180604/show_ads_impl.js" as="script">
    <script type="text/javascript" src="../bokejs/config.js.下载"></script><link rel="stylesheet" type="text/css" href="../bokejs/editor.css">
    <script type="text/javascript" src="../bokejs/styles.js.下载"></script>
    <script type="text/javascript" src="../bokejs/plugin.js.下载"></script>
    <script type="text/javascript" src="../bokejs/plugin.js(1).下载"></script>
    <script type="text/javascript" src="../bokejs/plugin.js(2).下载"></script>
    <script type="text/javascript" src="../bokejs/plugin.js(3).下载"></script>
    <script type="text/javascript" src="../bokejs/plugin.js(4).下载"></script>
    <script type="text/javascript" src="../bokejs/plugin.js(5).下载"></script>
    <script type="text/javascript" src="../bokejs/zh-cn.js(1).下载"></script>
    <script type="text/javascript" src="../bokejs/zh-cn.js(2).下载"></script>
    <script type="text/javascript" src="../bokejs/zh-cn.js(3).下载"></script>
    <script type="text/javascript" src="../bokejs/en.js.下载"></script>
    <script type="text/javascript" src="../bokejs/zh-cn.js(4).下载"></script>
    <style id="cke_ui_color" type="text/css"></style>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <script src="/js/summernote-zh-CN.js"></script>
</head>
<body >
<div class="main container margin_top10 width_998">
    <div class="row project">
        <div class="col-9 left_bar">
            <div class="data_list">
                <div class="data_list_title">发表博客</div>
                <div class="margin_top10">
                    <span class="error"></span>
                </div>
                <div class="margin_top10">
                    <form id="blog" class="project" method="post" enctype="multipart/form-data">
                        <div class="input_item_title"><span class="must_input">*</span>预扣牛币数1(胡乱提交不返回，审核通过返回，防止垃圾博客)</div>
                        <input id="niubi" name="niubi" class="col-12" type="text" value="-1" disabled="disabled">
                        <div class="input_item_title"><span class="must_input">*</span>标题</div>
                        <input id="titlee" name="title" class="col-12" type="text" value="">
                        <div class="input_item_title margin_top10"><span class="must_input">*</span>描述</div>
                        <div id="summernote">
                         </div>
                        <br clear="all">
                        <div class="post_project">
                            <a href="javascript:fabiao(0)">发表</a>
                        </div>
                        <br clear="all">
                    </form>
                </div>
            </div>
        </div>
        <div class="col-3 right_bar">
            <div class="data_list">
                <div class="data_list_title">
                    <img src="../bokejs/heart_ico.png">推荐心情
                </div>
                <div class="margin_top10">
                    成功源于积累，请做好每天的积累
                </div>
            </div>
            <div class="data_list margin_top10">
                <div class="data_list_title">
                    <img src="../bokejs/heart_ico.png">博客说明
                </div>
                <div class="margin_top10">
                    <ul>
                        <li class="alert alert-info">关于技术，工作的博客文章都可以提交</li>
                        <li class="alert alert-info">转载的博客不通过</li>
                        <li class="alert alert-info">非技术博客不通过</li>
                        <li class="alert alert-info">博客内容200字以内的不通过</li>
                        <li class="alert alert-info">博客内容请严格保证格式美观，比如代码，图片，文字</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body >
    <script>
        //绑定beforeunload事件
        $(window).bind('beforeunload',function(){
            return '您输入的内容尚未保存，确定离开此页面吗？';
        });
    </script>
         <script>
    $(document).ready(function() {
        $('#summernote').summernote();
    });
    $('#summernote').summernote({
        width: 810,
        height: 130,                 // 定义编辑框高度
        minHeight: null,             // 定义编辑框最低的高度
        maxHeight: null,             // 定义编辑框最高德高度
        lang: 'zh-CN',
        <!--工具栏-->
        toolbar: [
            <!--字体工具-->
            ['fontname', ['fontname']], //字体系列
            ['style', ['bold', 'italic', 'underline', 'clear']], // 字体粗体、字体斜体、字体下划线、字体格式清除
            ['font', ['strikethrough']], //字体划线、字体上标、字体下标
            ['fontsize', ['fontsize']], //字体大小
            ['color', ['color']], //字体颜色
            <!--段落工具-->
            ['para', ['ul', 'ol', 'paragraph']], //无序列表、有序列表、段落对齐方式
            <!--插入工具-->
            ['hr',['hr']],//插入水平线
            ['picture',['picture']], //插入图片
            ['fullscreen',['fullscreen']], //全屏
            ['codeview',['codeview']], //查看html代码
            ['link',['link']], //插入链接

        ],
        callbacks: {
            onImageUpload: function(file) {  //图片默认以二进制的形式存储到数据库，调用此方法将请求后台将图片存储到服务器，返回图片请求地址到前端

                //将图片放入Formdate对象中
                var formData = new FormData();
                //‘picture’为后台获取的文件名，file[0]是要上传的文件
                formData.append("picture", file[0]);
                $.ajax({
                    type:'post',
                    url:'<%=request.getContextPath()%>/file/shangchuan',
                    cache: false,
                    data:formData,
                    processData: false,
                    contentType: false,

                    success: function(picture) {
                        $('#summernote').summernote('insertImage',picture);
                    },
                    error:function(){
                        alert("上传失败");
                    }
                });
            }
        }
    });
   function fabiao(){
       var title=$("#titlee").val();
       var btext = $('#summernote').summernote('code');

           $.ajax({
           url: "<%=request.getContextPath()%>/boke/saveBoke",
           type: "post",
           data: {"title": title, "btext": btext},
           success: function(data) {
            alert("发表成功");
           },
           error:function(){
               alert("发表失败");
           }
       });
   }
</script>
</html>
