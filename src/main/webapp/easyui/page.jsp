<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/default/easyui.css">   
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/easyui/themes/icon.css">  
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/jquery.easyui.min.js"></script>  
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/uploadify/jquery.uploadify.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/uploadify/uploadify.css" />
    <base href="<%=basePath%>">
    
    <title>My JSP 'page.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	  select * from 
      (select a.*,rownum rn from 
        (select * from books t1, book_type t2 where t1.btype=t2.id
        ) a 
      where rownum &lt;=#{end}) 
  	where rn &gt;#{start}
	-->

  </head>
  
  <body>
    <a href="javascript:goPage(1)">首页</a>
    <a href="javascript:goPage(${pageUtil.pageIndex - 1 })">上一页</a>
    <c:forEach items="${pageUtil.navigatePageNumbers }" var="currentPage">
    	<a href="javascript:goPage(${currentPage })" 
    	${pageUtil.pageIndex == currentPage ? "style='color: red'" : ''}
    	>${currentPage }</a>
    </c:forEach>
    <a href="javascript:goPage(${pageUtil.pageIndex + 1 })">下一页</a>
    <a href="javascript:goPage(${pageUtil.pageTotal })">尾页</a>
    每页条数：
    	<select onchange="changePageSize(this)">
   		  <option value="2" ${pageUtil.pageSize == 2 ? 'selected' : '' }>2</option>
   		  <option value="5" ${pageUtil.pageSize == 5 ? 'selected' : '' }>5</option>
   		  <option value="8" ${pageUtil.pageSize == 8 ? 'selected' : '' }>8</option>
   		  <option value="10"${pageUtil.pageSize== 10 ?  'selected' :''}>10</option>
		</select>
  </body>
   <script type="text/javascript">
  	
  	// 分页操作
  	function goPage(pageIndex){
  		$("#pageIndexId").val(pageIndex);
  		search();
  	}
  	//改变每页条数
  	function changePageSize(obj){
  		$("#pageSizeId").val(obj.value);
  		search();
  	}
  </script>
</html>
