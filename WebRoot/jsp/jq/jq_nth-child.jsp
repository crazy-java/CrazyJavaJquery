<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<base href="<%=basePath %>" />
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
ps:
	  	第一种写法是匹配页面所有的li后,按照奇数取得元素后设置样式
	  	第二种写法是对取得每个ul下的li元素,按照规则取元素后设置样式
*/
$(function() {

// 		$('ul>li:odd').css({'background-color':'yellow'});
		
		$('ul>li:nth-child(2)').css({'background-color':'yellow'});
		
});
</script>
</head>
<body>

<ul>
  <li>John</li>
  <li>Karl</li>
  <li>Brandon</li>
</ul>
<ul>
  <li>Glen</li>
</ul>
<a href="index.jsp">返回首页</a>
</body>
</html>