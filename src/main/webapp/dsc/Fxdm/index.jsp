<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0024)http://www.zuidaima.com/ -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="description" content="最代码 www.zuidaima.com 最全面,最专业的源代码分享网站,近万名用户分享超过数万份高质量的java/jquery/bootstrap/html/css源代码">
    <title>分享代码-最代码</title>
    <meta name="keywords" content="代码,代码分享,代码例子,源码,java代码，javascript代码,最代码,程序">
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
    <script src="/js/summernote-zh-CN.js"></script>

<link rel="stylesheet" type="text/css" href="index.css" media="all">
    <%--<jsp:include page="/common/mystyle.jsp"></jsp:include>--%>
</head>
<body>
<div class="header">
    
</div>
<div class="text-center">
<!-- 718 -->


</div>
<div class="main container margin_top10 width_998">
    <div class="row project">
        <div class="col-9 left_bar">
            <div class="data_list">
                <div class="data_list_title">发表博客</div>
                <div class="margin_top10">
                    <span class="error"></span>
                </div>
                <<div class="margin_top10">
                <form id="blog" class="project" method="post" enctype="multipart/form-data">
                    <div class="input_item_title"><span class="must_input">*</span>预扣牛币数1(胡乱提交不返回，审核通过返回，防止垃圾博客)</div>
                    <input id="niubi" name="niubi" class="col-12" type="text" value="-1" disabled="disabled">
                    <div class="input_item_title"><span class="must_input">*</span>标题</div>
                    <input id="titlee" name="title" class="col-12" type="text" value="111">
                    <div class="input_item_title margin_top10"><span class="must_input">*</span>描述</div>
                    <div id="summernote">

                    </div>

                    <br clear="all">
                    <div class="input_item_title margin_top10"><span class="must_input">*</span>话题(请选择下面的话题，只能选一个)</div>
                    <input id="topics" name="topics" value="" class="topics col-12" readonly="readonly">
                </form>
            </div>



                <div id="jzuid"></div>


						<div class="upload margin_top10 input_item_title">
							代码(只支持java,zip文件,非必须)
						</div>
						<div class="upload margin_top10 input_item_title select_file col">
							<input id="file" name="file" value="" size="20" type="file">
							<a href="javascript:void(0)">选择源码</a>
						</div>
						<br clear="all">
						<div class="margin_top10">
							<span class="select_file_name"></span>
						</div>
						<br clear="all">
						<div class="post_project">
							<a href="javascript:fabiao()" id="create_submit">发表</a>
						</div>
						<br clear="all">
                <input type="hidden" id="uid"/>
					</form>
				</div>
			</div>
		</div>
<div class="col-3 right_bar">
    
</div>
	</div>

    </div>
<div id="ajax-modal" class="modal fade" style="display: none;"></div>
<div class="footer margin_top10">
    <div class="container">
        
    </div>
</div>

</body>
<script>
    $(function() {
        $.ajax({
            url: "<%=request.getContextPath()%>/fxdm/queryfx",
            type:"post",
            dataType:"json",
            success:function (result) {
                var arr="";
                for(var i=0;i<result.length;i++) {
                    var array=result[i].managesList;

                    arr += "<div class='margin_top5 margin_bottom10' id='"+result[i].zname+"'>"+result[i].zname+"</div>"

                    for(var y=0;y<array.length;y++){
                        arr += "<div class='datas row'>";
                        arr += " <a href='javascript:toEidt("+array[y].zid+",\""+array[y].zname+"\");' class='topic col-3' id='+array[y].zid+'>"+array[y].zname+"</a> ";
                        arr += "</div>"
                    }

                }
                $("#jzuid").html(arr)

            }

        })
    })


    function toEidt(id,name){
       $("#topics").val(name);
        $("#uid").val(id);
        alert($("#uid").val())

    }





    $(document).ready(function() {
        $('#summernote').summernote();
    });
    $('#summernote').summernote({
        width: 710,
        height: 130,                 // 定义编辑框高度
        minHeight: 200,             // 定义编辑框最低的高度
        maxHeight: 600,             // 定义编辑框最高德高度
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

        ],})
    function fabiao(){
        var title=$("#titlee").val();
        alert(title);
        var btext = $('#summernote').summernote('code');
        alert(summernote);
        var topics = $("#uid").val();
        alert(topics);
        $.ajax({
            url: "<%=request.getContextPath()%>/fxdm/addfx",
            type: "post",
            data: {"title": title, "btext": btext,"topics":topics},
            success: function(data) {
                alert("发表成功");
                location.href="<%=request.getContextPath()%>/fxdm/toquery";
            },
            error:function(){
                alert("发表失败");
            }
        });
    }
</script>

</html>
