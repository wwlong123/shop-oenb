<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<script type="text/javascript" src="<%=request.getContextPath()%>/jquery-1.8.0.js"></script>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type">
<meta name="description" content="最代码 www.zuidaima.com 最全面,最专业的源代码分享网站,近万名用户分享超过数万份高质量的java/jquery/bootstrap/html/css源代码"><title>最代码-最全面，最专业的源代码分享网站</title>
<meta name="keywords" content="代码,代码分享,代码例子,源码,java代码，javascript代码,最代码,程序">


<link rel="preload" href="http://pagead2.googlesyndication.com/pagead/js/r20181024/r20180604/show_ads_impl.js" as="script">
<link media="all" href="/indexJsp/index.css" type="text/css" rel="stylesheet">
<link href="favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="https://adservice.google.com/adsid/integrator.js?domain=www.zuidaima.com" rel="preload">
<link rel="stylesheet" type="text/css" href="/indexJsp/index.css" media="all">
<link href="http://www.zuidaima.com/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link href="/indexJsp/shCore-min.css" type="text/css" rel="stylesheet">
<link href="/indexJsp/bootstrap.min.css" rel="stylesheet">
<link href="/indexJsp/font-awesome.min.css" rel="stylesheet">
<link href="/indexJsp/zuidaima.css" rel="stylesheet">
</head>
<body>
<div class="header">
	<div class="navbar navbar-expand-md navbar-dark navbar-fixed-top fixed-top">
		<div class="container">
			<a href="" title="最代码网站">
				<img src="logo.png" alt="最代码网站">
			</a>
		<div class="collapse navbar-collapse nav_wrap">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a id="nav_index" class="nav-link youarehere" href="http://www.zuidaima.com/">首页</a>
				</li>
				<li class="nav-item">
					<a id="nav_share" class="nav-link" href="http://www.zuidaima.com/share.htm">代码</a>
				</li>
				<li class="nav-item">
					<a id="nav_question" class="nav-link" href="http://www.zuidaima.com/question.htm">问答</a>
				</li>
				<li class="nav-item">
					<a id="nav_blog" class="nav-link" href="http://www.zuidaima.com/blog.htm">博客</a>
				</li>
				<li class="nav-item">
					<a id="nav_activity" class="nav-link" href="http://www.zuidaima.com/activity.htm">活动</a>
				</li>
				<li id="nav_buy" class="nav-item">
				<a class="nav-link" href="javascript:void(0)" style="color: rgb(255, 255, 0);" rel="nofollow" title="购买牛币">购买</a>
				</li>
					<li class="nav-item">
		<div id="search_box">
			<input id="search" placeholder="搜索您要的代码" value="搜索您要的代码" type="text">
			<i class="icon-search fa fa-search">
			</i>
		</div>
		</li>
		</ul>
		</div>
			
			
			<div class="collapse navbar-collapse nav_wrap justify-content-end">
				<ul class="navbar-nav">
					<li class="nav-item">
						<a href="http://www.zuidaima.com/user/login.htm" class="nav-link">登录</a>
					</li>
				<li class="nav-item"><a href="http://www.zuidaima.com/user/create.htm" class="nav-link">注册</a>
				</li>
				</ul>
				</div>
				</div>
				</div>
				</div>

				<div class="text-center">

				<ins class="adsbygoogle my_adslot" style="display: inline-block; width: 728px; height: 90px;" data-ad-client="ca-pub-2303958443489176" data-ad-slot="2718318847" data-adsbygoogle-status="done">

					<ins id="aswift_0_expand" style="display: inline-table; border: medium none; height: 90px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 728px; background-color: transparent;">
					<ins id="aswift_0_anchor" style="display: block; border: medium none; height: 90px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 728px; background-color: transparent;">

				<iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" id="aswift_0"				name="aswift_0" style="left: 0px; position: absolute; top: 0px; width: 728px; height: 90px;" src="/indexJsp/index_1.html" width="728" height="90" frameborder="0">
				</iframe>
				</ins>
				</ins>
				</ins>
				</div>



				<div class="main container margin_top10 width_998">
                    <form id="mood" action="http://www.zuidaima.com/mood/create.htm" method="post" enctype="multipart/form-data"><input name="rdm" value="QtlHB" type="hidden">
                        <textarea rows="5" class="col-12" name="content" id="mood_input" data_name="发表心情加1牛币(重复、乱发发现则禁言一周)">发表心情加1牛币(重复、乱发发现则禁言一周)</textarea>
                        <div class="row margin_top5"><span class="upload col select_file">

<input name="file" id="file" accept="image/*" type="file"><a href="javascript:void(0)">选择图片</a></span><div class="col" style="overflow: hidden; white-space: nowrap;"><span class="select_file_name"></span></div><span class="post_mood col"><a class="" href="javascript:void(0)" id="mood_publish">发表心情</a></span>
                        </div></form>
				<div class="row">
				<div class="col-9 left_bar">
				<div class="row">
				<div class="col-6">
				<div class="data_list">

				<div class="data_list_title">
				<img src="/indexJsp/list_ico.png" alt="最新代码">最新代码<span class="more">
				<a href="http://www.zuidaima.com/share/p1-s1.htm">更多</a></span>
				</div>
				<div class="datas">
				<ul class="project_list">
				
					<li>
						<span title="最代码官方认证分享代码" class="validated">证</span>
						<a target="_top" href="http://www.zuidaima.com/share/4121434880510976.htm" title="HTML5动态用户登录界面模板">HTML5动态用户登录界面模板</a>
						</li>
						</ul>
						</div>
						</div>
						</div>
						
						<div class="col-6 padding_left_4">
							<div class="data_list">
								<div class="data_list_title">
									<img src="/indexJsp/list_ico.png" alt="最新问答">最新问答<span class="more">
									<a href="http://www.zuidaima.com/question/p1-s1.htm">更多</a></span>
										</div>
										<div class="datas">
										<ul class="project_list">
										<li>
										<span title="最代码官方等待解决提问" class="waiting">等</span><a target="_top" href="http://www.zuidaima.com/question/4108437862943744.htm" title="关于用jquery请求参数的问题">关于用jquery请求参数的问题</a>
										</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
						<div class="col-6">
						</div>
						<div class="col-6 padding_left_4">
						</div>
						</div>
						<div class="row">
						<div class="col-6">
						</div>
						<div class="col-6 padding_left_4">
						</div>
						</div>
						<div class="row">
						<div class="col-6">
						</div>
						<div class="col-6 padding_left_4">
						</div>
						</div>
						<div class="row">
						<div class="col-6">
						</div>
						<div class="col-6 padding_left_4">
						</div>
						</div>
						<div class="row">
						<div class="col-6">
						</div>
						<div class="col-6 padding_left_4">
						</div>
						</div>

						<div class="row margin_top10">
						
						<div class="col-6">
						
						</div>
						
						<div class="col-6 padding_left_4">
						
						</div>
						</div>
						</div>
						<div class="col-3 right_bar">
						<div class="margin_bottom10"><center>分享你的代码，释放他的价值</center></div>
						
							<div class="data_list">
								<div class="data_list_title">
									<img src="/indexJsp/heart_ico.png" alt="最代码最近心情列表">最近心情</div>
				<div class="datas">
				<div class="data clear">
				<!--心情模块-->
					<c:forEach items="${list}" var="add">

				<div class="data_title">
				<span>
				<a class="name" href="<%=request.getContextPath()%>/pinglun/selectmood">${add.username}</a>&nbsp;<span title="3级,距离下次升级还差1贡献值" class="lv_sub">用户等级：${add.userdengjiid}级</span></span>
				
				<!-- <span class="time pull-right">8分钟前</span> -->
				
				</div><div class="content">${add.testarea}<div class="comments_count">
				
				<a title="0个评论" target="_top" href="http://www.zuidaima.com/mood/1579109/comment.htm" rel="nofollow"><i class="fa fa-comment">
				</i>
				</a>&nbsp;&nbsp;
				<a class="like_count like" title="${add.z_zan}个赞" content_id="testa" type="1101" href="javascript:szan('${add.id}',${add.z_count})" rel="nofollow">
				<i class="fa fa-thumbs-up">
				</i>
				<span id="like_count_1579109">
				</span>
				</a>&nbsp;&nbsp;<a class="dislike_count dislike" title="${add.z_cai}个踩" content_id="1579109" type="1201" href="javascript:scai('${add.id}',${add.z_caicount})" rel="nofollow"><i class="fa fa-thumbs-down">
				</i>
				</a>
					
				</div>
				</div>

					</c:forEach>


				<!--心情模块结束-->

				</div>
				
				<div class="data clear"></div></div></div><div class="data_list margin_top10"><div class="data_list_title"><img src="/indexJsp/cattle_ico.png" alt="最代码最多贡献用户列表">最多贡献</div><div class="datas margin_top10"><ul class="nav nav-tabs"><li class="nav-item"><a data-toggle="tab" class="nav-link active" href="#day">昨日</a></li><li class="nav-item"><a data-toggle="tab" class="nav-link" href="#week">上周</a></li><li class="nav-item"><a data-toggle="tab" class="nav-link" href="#month">上月</a></li></ul><div class="tab-content"><div class="tab-pane fade active show" id="day"><div class="datas"><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4131078345099264.htm"></a></div><div class="col-9"><div></div><div></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/3951025659119616.htm"><img src="/indexJsp/default_avatar.png" alt="RipNeverDie的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/3951025659119616.htm">RipNeverDie</a>&nbsp;<span title="5级,距离下次升级还差5贡献值" class="lv_sub">LV5</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值40,距离下次升级还差5贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div></div></div><div class="tab-pane fade" id="week"><div class="datas"><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/3992360184465408.htm"><img src="/indexJsp/default_avatar.png" alt="z_yong76的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/3992360184465408.htm">z_yong76</a>&nbsp;<span title="9级,距离下次升级还差17贡献值" class="lv_sub">LV9</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值100,距离下次升级还差17贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4101350684919808.htm"><img src="/indexJsp/default_avatar.png" alt="lxl1234的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/4101350684919808.htm">lxl1234</a>&nbsp;<span title="9级,距离下次升级还差12贡献值" class="lv_sub">LV9</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值105,距离下次升级还差12贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4108409042667520.htm"><img src="/indexJsp/default_avatar.png" alt="1234only的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/4108409042667520.htm">1234only</a>&nbsp;<span title="8级,距离下次升级还差16贡献值" class="lv_sub">LV8</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值80,距离下次升级还差16贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4107103770855424.htm"><img src="/indexJsp/default_avatar.png" alt="wangmeng20的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/4107103770855424.htm">wangmeng20</a>&nbsp;<span title="9级,距离下次升级还差12贡献值" class="lv_sub">LV9</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值105,距离下次升级还差12贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/3949736311605248.htm"><img src="/indexJsp/default_avatar.png" alt="溜溜牛的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/3949736311605248.htm">溜溜牛</a>&nbsp;<span title="10级,距离下次升级还差20贡献值" class="lv_sub">LV10</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值120,距离下次升级还差20贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/3376193136035840.htm"><img src="/indexJsp/default_avatar.png" alt="东风hank的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/3376193136035840.htm">东风hank</a>&nbsp;<span title="9级,距离下次升级还差17贡献值" class="lv_sub">LV9</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值100,距离下次升级还差17贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div></div></div><div class="tab-pane fade" id="month"><div class="datas"><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/1550463811307520.htm"><img src="/indexJsp/20170312181519534.png" alt="最代码官方的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/1550463811307520.htm">最代码官方</a>&nbsp;<span title="137级,距离下次升级还差32贡献值" class="lv_sub">LV137</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值19285,距离下次升级还差32贡献值"><img src="/indexJsp/lv_crown.png" alt="皇冠" class="lv"><img src="/indexJsp/lv_crown.png" alt="皇冠" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/2296946294343680.htm"><img src="/indexJsp/default_avatar.png" alt="FACESTRAP的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/2296946294343680.htm">FACESTRAP</a>&nbsp;<span title="20级,距离下次升级还差30贡献值" class="lv_sub">LV20</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值450,距离下次升级还差30贡献值"><img src="/indexJsp/lv_sun.png" alt="太阳" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4098754294368256.htm"><img src="/indexJsp/default_avatar.png" alt="afeng992211的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/4098754294368256.htm">afeng992211</a>&nbsp;<span title="11级,距离下次升级还差5贡献值" class="lv_sub">LV11</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值160,距离下次升级还差5贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4000786934106112.htm"><img src="/indexJsp/default_avatar.png" alt="wangdongtai的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/4000786934106112.htm">wangdongtai</a>&nbsp;<span title="15级,距离下次升级还差20贡献值" class="lv_sub">LV15</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值265,距离下次升级还差20贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/4095808120014848.htm"><img src="/indexJsp/default_avatar.png" alt="yxm38438的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/4095808120014848.htm">yxm38438</a>&nbsp;<span title="9级,距离下次升级还差2贡献值" class="lv_sub">LV9</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值115,距离下次升级还差2贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"></a></span></div></div></div><div class="data row"><div class="col-3"><a href="http://www.zuidaima.com/user/3949736311605248.htm"><img src="/indexJsp/default_avatar.png" alt="溜溜牛的gravatar头像" class="rounded-circle user_header_48X48"></a></div><div class="col-9"><div><span><a class="name" href="http://www.zuidaima.com/user/3949736311605248.htm">溜溜牛</a>&nbsp;<span title="10级,距离下次升级还差20贡献值" class="lv_sub">LV10</span></span></div><div><span class="code"><a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值120,距离下次升级还差20贡献值"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_moon.png" alt="月亮" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv"><img src="/indexJsp/lv_star.png" alt="星星" class="lv">
				</a>
				</span>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				</div>
				
				<div class="data_list margin_top10">
				<div class="data_list_title"><img src="/indexJsp/cattle_ico.png" alt="最代码牛币排行用户列表">最牛用户</div>
				
				<div class="datas margin_top10">
					<div class="datas">
									<div class="data row">
									<div class="col-3">
									<a href="http://www.zuidaima.com/user/1550463811307520.htm">
									<img src="/indexJsp/20170312181519534.png" alt="最代码官方的gravatar头像" class="rounded-circle user_header_48X48"></a>
										</div>
										<div class="col-9">
											<div>
											<span>
											<a class="name" href="http://www.zuidaima.com/user/1550463811307520.htm">最代码官方</a>&nbsp;
											<span title="137级,距离下次升级还差32贡献值" class="lv_sub">LV137</span>
											</span>
											</div>
											<div>
											<span class="code">
												<a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值19285,距离下次升级还差32贡献值">
												<img src="/indexJsp/lv_crown.png" alt="皇冠" class="lv">
												<img src="/indexJsp/lv_crown.png" alt="皇冠" class="lv">
												<img src="/indexJsp/lv_moon.png" alt="月亮" class="lv">
												<img src="/indexJsp/lv_moon.png" alt="月亮" class="lv">
												<img src="/indexJsp/lv_star.png" alt="星星" class="lv">
												</a>
												</span>
											</div>
											</div>
											</div>

	<div class="data row">
									<div class="col-3">
									<a href="http://www.zuidaima.com/user/1550463811307520.htm">
									<img src="/indexJsp/20170312181519534.png" alt="最代码官方的gravatar头像" class="rounded-circle user_header_48X48"></a>
										</div>
										<div class="col-9">
											<div>
											<span>
											<a class="name" href="http://www.zuidaima.com/user/1550463811307520.htm">最代码官方</a>&nbsp;
											<span title="137级,距离下次升级还差32贡献值" class="lv_sub">LV137</span>
											</span>
											</div>
											<div>
											<span class="code">
												<a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值19285,距离下次升级还差32贡献值">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_star.png" alt="星星" class="lv">
												</a>
												</span>
											</div>
											</div>
											</div>	<div class="data row">
									<div class="col-3">
									<a href="http://www.zuidaima.com/user/1550463811307520.htm">
									<img src="/indexJsp/20170312181519534.png" alt="最代码官方的gravatar头像" class="rounded-circle user_header_48X48"></a>
										</div>
										<div class="col-9">
											<div>
											<span>
											<a class="name" href="http://www.zuidaima.com/user/1550463811307520.htm">最代码官方</a>&nbsp;
											<span title="137级,距离下次升级还差32贡献值" class="lv_sub">LV137</span>
											</span>
											</div>
											<div>
											<span class="code">
												<a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值19285,距离下次升级还差32贡献值">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_star.png" alt="星星" class="lv">
												</a>
												</span>
											</div>
											</div>
											</div>	<div class="data row">
									<div class="col-3">
									<a href="http://www.zuidaima.com/user/1550463811307520.htm">
									<img src="/indexJsp/20170312181519534.png" alt="最代码官方的gravatar头像" class="rounded-circle user_header_48X48"></a>
										</div>
										<div class="col-9">
											<div>
											<span>
											<a class="name" href="http://www.zuidaima.com/user/1550463811307520.htm">最代码官方</a>&nbsp;
											<span title="137级,距离下次升级还差32贡献值" class="lv_sub">LV137</span>
											</span>
											</div>
											<div>
											<span class="code">
												<a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值19285,距离下次升级还差32贡献值">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_star.png" alt="星星" class="lv">
												</a>
												</span>
											</div>
											</div>
											</div>	<div class="data row">
									<div class="col-3">
									<a href="http://www.zuidaima.com/user/1550463811307520.htm">
									<img src="/indexJsp/20170312181519534.png" alt="最代码官方的gravatar头像" class="rounded-circle user_header_48X48"></a>
										</div>
										<div class="col-9">
											<div>
											<span>
											<a class="name" href="http://www.zuidaima.com/user/1550463811307520.htm">最代码官方</a>&nbsp;
											<span title="137级,距离下次升级还差32贡献值" class="lv_sub">LV137</span>
											</span>
											</div>
											<div>
											<span class="code">
												<a href="http://www.zuidaima.com/faq.htm#rank_rule" target="_top" rel="nofollow" title="贡献值19285,距离下次升级还差32贡献值">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_crown.png" alt="皇冠" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_moon.png" alt="月亮" class="lv">
												<img src="lv_star.png" alt="星星" class="lv">
												</a>
												</span>
											</div>
											</div>
											</div>



								<!--不能动-->
								<div class="data row">
							
								<div class="col-9">
								<div>
								</div>
								</div>
								</div>

							</div>

							</div>
							

							</div>

				<div class="margin_top10 data_list" style="text-align: center;">
					<!-- 160X600_1  右下角的广告 -->
				<ins class="adsbygoogle" style="display: inline-block; width: 160px; height: 600px;" data-ad-client="ca-pub-2303958443489176" data-ad-slot="1750799643" data-adsbygoogle-status="done">
				<ins id="aswift_3_expand" style="display: inline-table; border: medium none; height: 600px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 160px; background-color: transparent;">
				<ins id="aswift_3_anchor" style="display: block; border: medium none; height: 600px; margin: 0px; padding: 0px; position: relative; visibility: visible; width: 160px; background-color: transparent;">
				<!--广告-->
				<iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" id="aswift_3" name="aswift_3" style="left: 0px; position: absolute; top: 0px; width: 160px; height: 600px;" src="/indexJsp/index_13.html" width="160" height="600" frameborder="0">
				
				</iframe>



</ins></ins></ins></div></div></div><div class="margin_top10"></div></div><div id="floatPanel"><div class="popPanel" style=""><div class="popPanel-inner"><div class="qrcodePanel"><img src="weixin.jpg" alt=">扫描二维码关注最代码为好友">扫描二维码关注最代码为好友</div><div class="arrowPanel"><div class="arrow01"></div><div class="arrow02"></div></div></div></div></div><div id="ajax-modal" class="modal fade" style="display: none;"></div><div class="footer margin_top10"><div class="container"><div><a href="http://www.zuidaima.com/help.htm" rel="nofollow">帮助</a>|<a href="http://www.zuidaima.com/contact.htm" rel="nofollow">联系我</a>|<a href="http://www.zuidaima.com/partner.htm">友情链接</a>|<a href="http://www.zuidaima.com/sitemap.xml" target="_top">网站地图</a>|<a href="http://www.zuidaima.com/share/rss.htm" target="_top">RSS订阅分享源代码</a>|<a href="http://www.zuidaima.com/question/rss.htm" target="_top">RSS订阅问答</a>|<a href="http://www.zuidaima.com/share.htm">最新分享源代码</a>|<a href="http://www.zuidaima.com/question.htm">最新问答</a>|<!--            <a rel="nofollow" target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=727c073145e93bd3ca3f3cf26fb0da62b6c92376bf4dafbb03accc738c1d017e"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="最代码官方群1" title="最代码官方群1"></a>--><a rel="nofollow" target="_top" href="http://shang.qq.com/wpa/qunwpa?idkey=d3ef6d04eaad4a3ca96a76511b63e64914965b7d88fb05c3be81ce9d670b20e4"><img src="group.png" alt="最代码官方群9" title="最代码官方群9" border="0"></a><a rel="nofollow" target="_top" href="http://shang.qq.com/wpa/qunwpa?idkey=97f0cf2b725ec7f018bcbe3c9f4fcb807ea7efc93d4de77d91f55046d7741d9b"><img src="group.png" alt="最代码官方群10" title="最代码官方群10" border="0"></a><span class="pull-right">京ICP备12032064号</span></div></div></div><iframe id="google_osd_static_frame_8855829758118" name="google_osd_static_frame" style="display: none; width: 0px; height: 0px;" src="index_17.html"></iframe>

<script >
	function szan(id,z_count){

	    if(z_count<=5){
            $.ajax({
                url:"<%=request.getContextPath()%>/pinglun/addzan",
                type:"post",
                data:{"id":id},
                success:function(){
					location.reload(true);
                }
            })
		}else{
	        alert("你好，点赞次数够了")
		}
	}

	function scai(id,cai){
	    if(cai<=5){
            $.ajax({
                url:"<%=request.getContextPath()%>/pinglun/addcai",
                type:"post",
                data:{"cid":id},
                success:function(){
                    location.reload(true);
                }
            })
		}else{
	        alert("你好，你已经累了")
		}

	}

    /*var paypal_ajax= setInterval("setintervarshuaxing()", 2000); //5秒执行一次YourFunction函数。
    function setintervarshuaxing(){
        var url = "<%=request.getContextPath()%>/pinglun/selectLogInfo";
        $.get(url,function(status){
            if(status=='success') {
                clearInterval(paypal_ajax);//停止循环调用
                //window.open(url);
            }
        });
        //alert (url);
    }*/

</script>
</body></html>
