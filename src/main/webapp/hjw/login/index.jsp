<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
	<%@ page contentType="text/html;charset=UTF-8" language="java" %>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>login</title>
	<link rel="stylesheet" type="text/css" href="css/normalize.css" />
	<link rel="stylesheet" type="text/css" href="css/demo.css" />
	<!--必要样式-->
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<script src="js/html5.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/icon.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/util-js.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>
	<!--[if IE]>
	<![endif]-->
</head>
<body>
<div class="container demo-1">
	<div class="content">
		<div id="large-header" class="large-header">
			<canvas id="demo-canvas"></canvas>
			<div class="logo_box">
				<h3>欢迎你</h3>
				<form id="formid" method="post">
					<div class="input_outer">
						<span class="u_user"></span>
						<input name="username" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
					</div>
					<div class="input_outer">
						<span class="us_uer"></span>
						<input name="userpas" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
					</div>
					<div class="mb2"><a class="act-but submit" href="javascript:loginUser()" style="color: #FFFFFF">登录</a></div>
				</form>
			</div>
		</div>
	</div>
</div><!-- /container -->
<script src="js/TweenLite.min.js"></script>
<script src="js/EasePack.min.js"></script>
<script src="js/rAF.js"></script>
<script src="js/demo-1.js"></script>
<div style="text-align:center;">
</div>
<script type="text/javascript">
    function loginUser() {
        alert("ss")
        $.ajax({
            url: "/login/selectuser",
            type: "post",
            data: $("#formid").serialize(),
            success: function(data){
                alert(data)
             /*  if (data==1){*/
                   location.href = "trees.jsp";
			   /*}else{
                   alert("密码错误")
			   }*/
            }
        })
    }
</script>
</body>
</html>