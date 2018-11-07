<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0024)http://www.zuidaima.com/ -->
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

    <meta name="description" content="最代码 www.zuidaima.com 最全面,最专业的源代码分享网站,近万名用户分享超过数万份高质量的java/jquery/bootstrap/html/css源代码">
    <title>设置资料-最代码</title>
    <meta name="keywords" content="代码,代码分享,代码例子,源码,java代码，javascript代码,最代码,程序">
    <link href="http://www.zuidaima.com/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link href="/updateUser_files/shCore-min.css" type="text/css" rel="stylesheet">
    <link href="/updateUser_files/bootstrap.min.css" rel="stylesheet">
    <link href="/updateUser_files/font-awesome.min.css" rel="stylesheet">
    <link href="/updateUser_files/zuidaima.css" rel="stylesheet">
    <script src="/updateUser_files/f(6).txt"></script><script src="/updateUser_files/ca-pub-2303958443489176.js.下载"></script><script src="/updateUser_files/hm.js.下载"></script><script src="/updateUser_files/ckeditor.js.下载"></script><style>.cke{visibility:hidden;}</style>
    <script src="/updateUser_files/jquery.1.10.2.min.js.下载"></script>
    <script src="/updateUser_files/zuidaima.js.下载"></script>
    <!-- 引入上传文件 插件 -->
    <script type="text/javascript" src="/uploadify/jquery.uploadify.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/uploadify/uploadify.css" />

<link rel="preload" href="/updateUser_files/f(7).txt" as="script"><script type="text/javascript" src="/updateUser_files/f(7).txt"></script><link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20181031/r20180604/show_ads_impl.js" as="script"></head>
<body style="">
<div class="header">
    <div class="navbar navbar-expand-md navbar-dark navbar-fixed-top fixed-top">
        <div class="container">
            <a href="http://www.zuidaima.com/" title="最代码网站"><img src="/updateUser_files/logo.png" alt="最代码网站"></a>
            <div class="collapse navbar-collapse nav_wrap">
                <ul class="navbar-nav">
                     <li class="nav-item"><a id="nav_index" class="nav-link youarehere" href="http://www.zuidaima.com/">首页</a></li>
                    <li class="nav-item"><a id="nav_share" class="nav-link" href="http://www.zuidaima.com/share.htm">代码</a></li>
                    <li class="nav-item"><a id="nav_question" class="nav-link" href="http://www.zuidaima.com/question.htm">问答</a></li>
                    <li class="nav-item"><a id="nav_blog" class="nav-link" href="http://www.zuidaima.com/blog.htm">博客</a></li>
                    <li class="nav-item"><a id="nav_activity" class="nav-link" href="http://www.zuidaima.com/activity.htm">活动</a></li>
                    <li class="nav-item"><a id="nav_event" class="nav-link" href="http://www.zuidaima.com/event.htm">动态</a></li>
                    <li class="nav-item">
                        <div id="search_box">
                            <input type="text" id="search" placeholder="搜索您要的代码" value="搜索您要的代码" />
                            <a href="#" > 🔍 </a>
                        </div></li>
                </ul>
            </div>
            <div class="collapse navbar-collapse nav_wrap justify-content-end">
                <ul class="navbar-nav">

                   <c:if test="${login.userid ==null}">
                        <li class="nav-item"><a href="<%=request.getContextPath() %>/hjw/qiantaidenglu/index.jsp" class="nav-link">登录</a></li>
                        <li class="nav-item"><a href="<%=request.getContextPath() %>/hjw/frontlogin/zhuce.jsp" class="nav-link">注册</a></li>
                    </c:if>
                    <c:if test="${login.userid != null}">
                        <li class="nav-item dropdown my_box"><a href="javascript:void(0)" class="nav-link" data-toggle="dropdown" style="color:#FFFF00">发表</a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item " href="http://www.zuidaima.com/share/create.htm">✍分享代码</a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/question/create.htm">☝提出问题</a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/blog/create.htm">♒编写博客</a>
                            </div></li>
                        <li class="nav-item dropdown remind_box"><a class="nav-link" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">♚<span class="remind_count" id="remind_count" style="display:none">0</span></a>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/receive_comment.htm">✉&nbsp收到评论<span class="remind_count" id="remind_count_1" style="display:none">0</span></a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/mention.htm">❤&nbsp提到我的<span class="remind_count" id="remind_count_2" style="display:none">0</span></a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/receive_like_post.htm">☬&nbsp心情被赞<span class="remind_count" id="remind_count_3" style="display:none">0</span></a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/receive_dislike_post.htm">☹  心情被踩<span class="remind_count" id="remind_count_4" style="display:none">0</span></a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/notification.htm">♞&nbsp系统通知<span class="remind_count" id="remind_count_6" style="display:none">0</span></a>
                            </div></li>
                        <li class="nav-item dropdown my_box">
                            <a href="javascript:void(0)" class="nav-link" data-toggle="dropdown">
                                <img class="user_header_32X32" src="${login.userimge}" /></a>
                            <div class="dropdown-menu">
                                <b class="dropdown-item font-weight-bold">共有0牛币</b>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/4129825495697408.htm">☬&nbsp个人主页</a>
                                <a class="dropdown-item" href="updateUser.jsp">♝&nbsp我的后台</a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/update.htm">☸&nbsp设置资料</a>
                                <a class="dropdown-item" href="http://www.zuidaima.com/user/logout.htm">☭&nbsp退出系统</a>
                            </div></li>
                    </c:if>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="text-center">
<!-- 718 -->
<ins class="adsbygoogle my_adslot" style="display: inline-block; width: 728px; height: 90px;" data-ad-client="ca-pub-2303958443489176" data-ad-slot="2718318847" data-adsbygoogle-status="done"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent;"><ins id="aswift_0_anchor" style="display:block;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent;"><iframe width="728" height="90" frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;width:728px;height:90px;" src="/updateUser_files/saved_resource(1).html"></iframe></ins></ins></ins>
<script>
    (adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
    <div class="main container margin_top10 width_998">
	<div class="row">
<div class="col-3 left_bar">
    <div class="data_list">
        <div class="data_list_title">
            设置
        </div>
        <div class="datas">
            <ul class="user_setting_items">
                <li><a href="">个人资料</a></li>
                <li><a href="javascript:touxiang()">设置头像</a></li>
                <li><a href="javascript:password()">修改密码</a></li>
                <li><a href="javascript:saoma()">扫码关注</a></li>
            </ul>
        </div>
    </div>
    <div class="data_list margin_top10">
        <div class="data_list_title">
            我的
        </div>
        <div class="datas">
            <ul class="user_setting_items">
                <li><a href="http://www.zuidaima.com/user/withdraw.htm">提现牛币</a></li>
                <li><a href="http://www.zuidaima.com/user/my/upload_code.htm">上传代码</a></li>
                <li><a href="http://www.zuidaima.com/user/my/download_code.htm">下载代码</a></li>
                <li><a href="http://www.zuidaima.com/user/my/answer.htm">提问回答</a></li>
                <li><a href="http://www.zuidaima.com/user/my/comment/send.htm">发出评论</a></li>
            </ul>
        </div>
    </div>
</div>
        <div class="col-9 right_bar" id="pass">
            <div class="data_list">
                <div class="data_list_title">
                    设置资料
                </div>
                <div class="margin_top10">
                    <span class="error"></span>
                </div>
                <div class="margin_top10">
                    <form id="formid" name="user" action="http://www.zuidaima.com/user/update.htm" method="post" enctype="multipart/form-data">
                        <span class="input_item_title">用户名</span><br clear="123">
                        <p>
                            <input id="name" name="username" class="form-control col" type="text" value="${login.username}" data_name="用户名" placeholder="用户名">
                        </p>
                        <p>
                            <span class="input_item_title">性别</span>
                            <input style="height: 10px" id="usersex" name="usersex" type="radio" value="1">男<input style="height: 10px" id="usersex" name="usersex" type="radio" value="2">女
                        </p>
                        <span class="input_item_title">所在地</span>
                        <p>
                            <input class="col" id="usersuozaidi" name="usersuozaidi" type="text" value="" data_name="所在地" placeholder="所在地">
                        </p>
                        <span class="input_item_title">手机号码(参加活动收取快递时必填)</span>
                        <p>
                            <input type="text" name="usershoujihao" value="" class="col">
                        </p>
                        <span class="input_item_title">收件地址(参加活动时收取快递必填)</span>
                        <p>
                            <input type="text" name="userdizhi" value="" class="col">
                        </p>
                        <span class="input_item_title">真实姓名(参加活动收取快递时必填)</span>
                        <p>
                            <input type="text" name="userzsname" value="" class="col">
                        </p>
                        <span class="input_item_title">简介</span>
                        <p>
                            <textarea name="userjieji" rows="5" cols="100" class="col" data_name="简介" placeholder="简介"></textarea>
                        </p>
                        <div class="update_user margin_top10" id="update_user">
                            <a href="javascript:adduser()">更新</a>
                        </div>
                        <br clear="all">
                    </form>
				</div>
			</div>
		</div>
	</div>
    </div>
<script type="application/x-javascript">
    function adduser(){
        $.ajax({
            url:"<%=request.getContextPath() %>/user/addhoutai",
            type:"post",
            data:$("#formid").serialize(),
            success:function(){
                alert("新增成功！")
                location.reload();
            }
        })
    }
</script>
<div id="floatPanel">
    <div class="ctrolPanel">
        <a class="arrow" href="http://www.zuidaima.com/user/update.htm#"><span>顶部</span></a>
        <a rel="nofollow" class="contact" href="http://www.zuidaima.com/user/message.htm?uuid=1550463811307520" target="_blank"><span>客服</span></a>
        <a class="qrcode" href="http://www.zuidaima.com/user/update.htm#"><span>微信二维码</span></a>
        <a class="arrow" href="http://www.zuidaima.com/user/update.htm#"><span>底部</span></a>
    </div>
    <div class="popPanel" style="">
        <div class="popPanel-inner">
            <div class="qrcodePanel"><img src="/updateUser_files/weixin.jpg" alt="&gt;扫描二维码关注最代码为好友"><span>扫描二维码关注最代码为好友</span></div>
            <div class="arrowPanel">
                <div class="arrow01"></div>
                <div class="arrow02"></div>
            </div>
        </div>
    </div>
</div>
<div id="ajax-modal" class="modal fade" style="display: none;"></div>
<script src="/updateUser_files/bootstrap.min.js.下载"></script>
<script src="/updateUser_files/mustache.js.下载"></script>
<script src="/updateUser_files/shBrushs-min.js.下载"></script>
<script src="/updateUser_files/jquery.lazyload.js.下载"></script>
<script src="/updateUser_files/jquery.gifplayer.js.下载"></script>
<script async="" src="/updateUser_files/f(8).txt"></script>
<script>
    var uri=window.location.pathname+window.location.search;
    var redirect_url="";
    if(uri.indexOf("redirect_url")==-1){
        redirect_url="?redirect_url="+encodeURIComponent(uri);
    }else{
        redirect_url=window.location.search;
    }
    function login(){
        window.location='/user/login.htm'+redirect_url;
    }
    function create(){
        window.location='/user/create.htm'+redirect_url;
    }
    function logout(){
        window.location='/user/logout.htm'+redirect_url;
    }

    $(function() {
        $("img.lazy").lazyload();
        SyntaxHighlighter.all();
        Zuidaima.initizal();
        $('.gifs').gifplayer();
            setInterval("remind(4129825495697408,309473)",30000);
    });
</script>
<div class="footer margin_top10">
    <div class="container">
        <div>
            <a href="http://www.zuidaima.com/help.htm" rel="nofollow">帮助</a><span>|</span><a href="http://www.zuidaima.com/contact.htm" rel="nofollow">联系我</a><span>|</span><a href="http://www.zuidaima.com/partner.htm">友情链接</a><span>|</span><a href="http://www.zuidaima.com/sitemap.xml" target="_blank">网站地图</a><span>|</span><a href="http://www.zuidaima.com/share/rss.htm" target="_blank">RSS订阅分享源代码</a><span>|</span><a href="http://www.zuidaima.com/question/rss.htm" target="_blank">RSS订阅问答</a><span>|</span><a href="http://www.zuidaima.com/share.htm">最新分享源代码</a><span>|</span><a href="http://www.zuidaima.com/question.htm">最新问答</a><span>|</span>
            <!--
            <a rel="nofollow" target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=727c073145e93bd3ca3f3cf26fb0da62b6c92376bf4dafbb03accc738c1d017e"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="最代码官方群1" title="最代码官方群1"></a>
            -->
            <a rel="nofollow" target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=d3ef6d04eaad4a3ca96a76511b63e64914965b7d88fb05c3be81ce9d670b20e4"><img border="0" src="/updateUser_files/group.png" alt="最代码官方群9" title="最代码官方群9"></a>
            <a rel="nofollow" target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=97f0cf2b725ec7f018bcbe3c9f4fcb807ea7efc93d4de77d91f55046d7741d9b"><img border="0" src="/updateUser_files/group.png" alt="最代码官方群10" title="最代码官方群10"></a>
            <span class="pull-right">京ICP备12032064号</span>
        </div>
    </div>
</div>
<script>
    var uri=window.location.pathname+window.location.search;
    var redirect_url="";
    if(uri.indexOf("redirect_url")==-1){
        redirect_url="?redirect_url="+encodeURIComponent(uri);
    }else{
        redirect_url=window.location.search;
    }
    function login(){
        window.location='/user/login.htm'+redirect_url;
    }
    function create(){
        window.location='/user/create.htm'+redirect_url;
    }
    function logout(){
        window.location='/user/logout.htm'+redirect_url;
    }

    $(function() {
        $("img.lazy").lazyload();
        SyntaxHighlighter.all();
        Zuidaima.initizal();
        $('.gifs').gifplayer();
        setInterval("remind(4129825495697408,309473)",30000);
    });
</script>
<script type="application/x-javascript">
    function password(){
        var arr="";
        arr+='<div class="main container margin_top10 width_998">'
        arr+='<div class="row">'
        arr+='<div class="col-9 right_bar">'
        arr+='<div class="data_list">'
        arr+='<div class="data_list_title">'
        arr+='设置密码'
        arr+='</div>'
        arr+='<div class="margin_top10">'
        arr+='<span class="error"></span>'
        arr+='</div>'
        arr+=' <div class="datas margin_top10">'
        arr+=' <form id="user" name="user" action="http://www.zuidaima.com/user/update_password.htm" method="post" enctype="multipart/form-data">'
        arr+='<input name="userid" type="hidden" value="${login.userid}"/>'
        arr+=' <div class="row margin_top10">'
        arr+='<span class="input_item_title col-2">新密码</span>'
        arr+=' <input id="userpass" name="userpass" class="col-4" data_name="密码" placeholder="密码" type="password" />'
        arr+='</div>'
        arr+='<div class="update_user" id="update_password">'
        arr+=' <a href="javascript:updatea()">更新</a>'
        arr+=' </div>'
        arr+=' <br clear="all" />'
        arr+='</form>'
        arr+='</div>'
        arr+='</div>'
        arr+=' </div>'
        arr+=' </div>'
        $("#pass").html(arr)
    }

    function updatea(){
        $.ajax({
            url:"<%=request.getContextPath() %>/user/updateuser",
            type:"post",
            data:$("#user").serialize(),
            success:function(){
                alert("修改成功")
                location.reload();
            }
        })
    }

    function saoma() {
        var add="";
        add+='<div class="header"></div>'
        add+='<div class="main container margin_top10 width_998">'
        add+='<div class="row">'
        add+='<div class="col-9 right_bar">'
        add+='<div class="data_list">'
        add+='<div class="data_list_title">'
        add+='绑定微信'
        add+='</div>'
        add+='<div class="margin_top10">'
        add+='<span class="error"></span>'
        add+='</div>'
        add+='<div class="datas margin_top10">'
        add+='<div class="alert alert-error">'
        add+='<i class="fa fa-bell"></i>首次关注最代码公众号+5牛币,'
        add+='<b>请注意:取消关注-5牛币,之后再关注不会+5牛币</b>'
        add+='</div>'
        add+='<img src="weixing.bmp" heigth="150px" width="150px" />'
        add+='<script>/* Code removed by ScrapBook */'
        add+='</div>'
        add+='</div>'
        add+='</div>'
        add+='</div>'
        add+='</div>'
        $("#pass").html(add)
    }

    function touxiang() {
        var aee="";
        aee+='<div class="main container margin_top10 width_998">'
        aee+='<div class="row">'
        aee+='<div class="col-9 right_bar">'
        aee+='<div class="data_list">'
        aee+='<div class="data_list_title">'
        aee+='</div>'
        aee+='<div class="margin_top10">'
        aee+='<span class="error"></span>'
        aee+='</div>'
        aee+='<div class="datas margin_top10">'
        aee+=' <form id="usera" action="http://www.zuidaima.com/user/update_password.htm" method="post" enctype="multipart/form-data">'
        aee+='只支持jpg,png,bmp文件,20k以内文件'
        aee+='</div>'
        aee+='<div id="upload_avatar_image">'
        aee+='<input name="userid" type="hidden" value="${login.userid}"/>'
        aee+='<div class="progress col-5" style="display: none;">'
        aee+='<div class="bar" id="bar" style="width:0%;"></div>'
        aee+='</div>'
        aee+='<div class="margin_top10 input_item_title">'
        aee+='<div id="fileQueue"></div>'
        aee+='<img id="add_img" width="100" height="100"/>'
        aee+='<input type="file" id="uploadImg" name="image"/>'
        aee+='<input type="hidden" name="userimge" id="userimgeid"  size="100"/>'
        aee+='</div>'
        aee+='<br clear="all">'
        aee+='<div class="margin_top10">'
        aee+='<span class="select_file_name"></span>'
        aee+='</div>'
        aee+='<br clear="all">'
        aee+='<div class="update_user" id="update_avatar">'
        aee+='<a href="javascript:updateb()">更新</a>'
        aee+='</div>'
        aee+='<br clear="all">';
        aee+='</form>'
        aee+='</div>'
        aee+='</div>'
        aee+='</div>'
        aee+='</div>'
         $("#pass").html(aee)

        $("#uploadImg").uploadify({
            //插件自带  不可忽略的参数flash插件
            'swf': '/uploadify/uploadify.swf',
            //前台请求后台的url 不可忽略的参数
            'uploader': '/user/headImgUpload',
            //给div的进度条加背景 不可忽略
            'queueID': 'fileQueue',
            //上传文件文件名 跟file标签 name值 保持一致
            'fileObjName' : 'image',
            //给上传按钮设置文字
            'buttonText': '上传头像',
            //设置文件是否自动上传
            'auto': true,
            //可以同时选择多个文件 默认为true  不可忽略
            'multi': true,
            //上传后队列是否消失
            'removeCompleted': true,
            //队列消失时间
            'removeTimeout' : 1,
            //上传文件的个数，项目中一共可以上传文件的个数
            'uploadLimit':  -1,
            'fileTypeExts': '*.*',
            //成功回调函数 file：文件对象。data后台输出数据
            'onUploadSuccess':function(file,data,response){
                //data = eval("("+data+")");
                //alert(file.name+" 路径："+data.imagePath)
                //图片回显， 预览
                $("#add_img").attr("src",data)
                // 文本框 回填
                $("[name='userimge']").val(data)
            }

        })
    }
   function updateb(){
        $.ajax({
            url:"<%=request.getContextPath() %>/user/updatetupian",
            type:"post",
            data:{"userimge":$("#userimgeid").val()},
            success:function(){
                alert("修改成功")
                location.reload();
            }
        })
    }
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?500f123d596f6dae47e36a9a36fed240";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();

</script>

<iframe id="google_osd_static_frame_129584345322" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="/updateUser_files/saved_resource(2).html"></iframe></body><iframe id="google_shimpl" style="display: none;" src="/updateUser_files/saved_resource(3).html"></iframe></html>