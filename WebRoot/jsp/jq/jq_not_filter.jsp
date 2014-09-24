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
<style type="text/css">
.test2{font-size:30px}
</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
  ps:
	  .not 排除符合条件的元素
	  .filter 筛选出符合条件的元素
 */
$(function(){
	
// 	$('p').not('p.test').addClass('test2');
	
// 	$('p').filter('p.test').addClass('test2');

	$('p').filter(function(){
		return $(this).is('.test');
	}).addClass('test2');
	
});

</script>
<title>jq .not .filter区别</title>
</head>
<body>

<p class="test1">not1</p>
<p class="test">not2</p>
<p class="test">not3</p>
<p class="test">not4</p>
<p class="test">not5</p>
<p class="test">not6</p>
<a href="index.jsp">返回首页</a>
</body> 
</html>