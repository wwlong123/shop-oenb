<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<%@ page contentType="text/html;charset=UTF-8" language="java" %>

    
    <meta name="description" content="最代码 www.zuidaima.com 最全面,最专业的源代码分享网站,近万名用户分享超过数万份高质量的java/jquery/bootstrap/html/css源代码">
    <title>注册-最代码</title>
    <meta name="keywords" content="代码,代码分享,代码例子,源码,java代码，javascript代码,最代码,程序">
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon">

	<link rel="stylesheet" type="text/css" href="index.css" media="all">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/icon.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/util-js.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<div class="header">
    
</div>
    <div class="main container margin_top10 width_998">
	<div class="data_list user">
		<div class="data_list_title">
			欢迎加入最代码
		</div>
		<form action="http://www.zuidaima.com/user/create.htm" method="post" id="formid">
			<div class="alert alert-warning margin_top10">
			  <button type="button" class="close" data-dismiss="alert">×</button>
			  <strong>请勿用gmail或hotmail等国外邮箱,否则被墙无法激活!</strong>
			</div>
			<div class="margin_top10">
				<span class="error"></span>
			</div>
			<div class="control-group">
				<label class="control-label" for="name">用户名:</label><input value="" name="username" id="username" data_name="用户名" placeholder="用户名" class="form-control col-4" type="text">
			</div>
			<div class="margin_top10">
				<label class="control-label" for="email">邮箱(163邮箱被屏蔽，请使用qq邮箱):</label><input value="" name="usereamil" id="usereamil" data_name="邮箱" placeholder="邮箱" class="form-control col-4" type="text">
			</div>
			<div class="margin_top10">
				<label class="control-label" for="password">密码:</label><input name="userpass" id="userpass" data_name="密码" placeholder="密码" class="form-control col-4" type="password">
			</div>
			<div class="margin_top10">
				<img src="data:image/png;base64,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">
				<div class="margin_top10">
				<input value="" name="regcode" id="captcha_chk" placeholder="请输入上图验证码" class="form-control col-4" type="text">
				</div>
			</div>
			<div class="margin_top10 post" id="create">
				<a class="col-2" href="javascript:xingzenga()" id="send_mail">发送验证邮件</a>
			</div>
		</form>
		<br clear="all">
	</div>
    </div>
<div id="ajax-modal" class="modal fade" style="display: none;"></div>

<script type="text/javascript">
	function xingzenga(){
    $.ajax({
        url: "<%=request.getContextPath() %>/user/adduser",
        type: "post",
        data: $("#formid").serialize(),
		datatype:"json",
        success: function(data){
            alert(data)
              if (data==1){
                  alert("新增成功")
            }else{
                alert("验证码错误")
            }
        }
    })
	}
</script>
</body>
</html>
