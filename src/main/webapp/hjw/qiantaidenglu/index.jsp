<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <meta name="description" content="最代码 www.zuidaima.com 最全面,最专业的源代码分享网站,近万名用户分享超过数万份高质量的java/jquery/bootstrap/html/css源代码" />
  <title>登录-最代码</title>
  <meta name="keywords" content="代码,代码分享,代码例子,源码,java代码，javascript代码,最代码,程序" />
  <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
  <link href="https://adservice.google.com/adsid/integrator.js?domain=www.zuidaima.com" rel="preload" /> 
  <link rel="stylesheet" type="text/css" href="index.css" media="all" />
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/default/easyui.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/icon.css">
  <script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath() %>/easyui/util-js.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>
 </head> 
 <body>
  <div class="header"></div>
  <div class="main container margin_top10 width_998">
   <div class="data_list user">
    <div class="data_list_title">
     欢迎登录最代码
    </div>
    <form action="http://www.zuidaima.com/user/login.htm" method="post" id="formids">
     <div class="margin_top10">
      <span class="error"></span>
     </div>
     <div class="margin_top10">
      邮&nbsp;&nbsp;&nbsp;箱:
      <input value="" name="usereamil" id="account" data_name="邮箱" placeholder="邮箱" class="form-control col-6" type="text" />
     </div>
     <div class="margin_top10">
      密&nbsp;&nbsp;&nbsp;码:
      <input name="userpass" id="password" data_name="密码" placeholder="密码" value="" class="form-control col-6" type="password" />
     </div>
     <div class="margin_top10">
      <label class="form-check-label"><input id="rememberme" name="rememberme" checked="checked" type="checkbox" />记住我</label>
     </div>
     <div class="margin_top10 row">
      <a class="col-2" href="javascript:denglua()" id="login">登录</a>
      <a class="col-2 find_pwd" href="http://www.zuidaima.com/user/find.htm">忘记密码？</a>
     </div>
    </form>
    <script type="text/javascript">
        function denglua(){
            $.ajax({
                url: "<%=request.getContextPath() %>/user/userpas",
                type: "post",
                data: $("#formids").serialize(),
                success: function(data){
                    alert(data)
                    //路径自己写   猪！！！！！！！！！！！！！
                    if (data==1){
                        location.href = "abc.jsp";
                    }else{
                        alert("代码错误")
                    }

                }
            })
        }
    </script>



    <br clear="all" />
    <div class="oauth_sign" style="display: none;">
     <div class="data_list_title">
      社交帐号登录
     </div>
     <a href="http://www.zuidaima.com/oauth/qq/login.htm"><i class="fa fa-qq"></i></a>
    </div>
   </div>
  </div>
  <div id="floatPanel">
   <div style="" class="popPanel">
    <div class="popPanel-inner">
     <div class="qrcodePanel">
      <img src="weixin.jpg" alt="&gt;扫描二维码关注最代码为好友" />扫描二维码关注最代码为好友
     </div>
     <div class="arrowPanel">
      <div class="arrow01"></div>
      <div class="arrow02"></div>
     </div>
    </div>
   </div>
  </div>
  <div id="ajax-modal" class="modal fade" style="display: none;"></div>
  <div class="footer margin_top10">
   <div class="container">
    <div>
     <a href="http://www.zuidaima.com/help.htm" rel="nofollow">帮助</a>|
     <a href="http://www.zuidaima.com/contact.htm" rel="nofollow">联系我</a>|
     <a href="http://www.zuidaima.com/partner.htm">友情链接</a>|
     <a href="http://www.zuidaima.com/sitemap.xml" target="_top">网站地图</a>|
     <a href="http://www.zuidaima.com/share/rss.htm" target="_top">RSS订阅分享源代码</a>|
     <a href="http://www.zuidaima.com/question/rss.htm" target="_top">RSS订阅问答</a>|
     <a href="http://www.zuidaima.com/share.htm">最新分享源代码</a>|
     <a href="http://www.zuidaima.com/question.htm">最新问答</a>|
     <!--            <a rel="nofollow" target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=727c073145e93bd3ca3f3cf26fb0da62b6c92376bf4dafbb03accc738c1d017e"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="最代码官方群1" title="最代码官方群1"></a>-->
     <a rel="nofollow" target="_top" href="http://shang.qq.com/wpa/qunwpa?idkey=d3ef6d04eaad4a3ca96a76511b63e64914965b7d88fb05c3be81ce9d670b20e4"><img src="group.png" alt="最代码官方群9" title="最代码官方群9" border="0" /></a>
     <a rel="nofollow" target="_top" href="http://shang.qq.com/wpa/qunwpa?idkey=97f0cf2b725ec7f018bcbe3c9f4fcb807ea7efc93d4de77d91f55046d7741d9b"><img src="group.png" alt="最代码官方群10" title="最代码官方群10" border="0" /></a>
    </div>
   </div>
  </div>  
 </body>
</html>