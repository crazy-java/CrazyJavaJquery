<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.test2{font-size:30px}
</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">

$(function(){
	
	$('#childrenBtn').click(function(){
		var $span = $(window.opener.document.getElementById("parentSpan"));
		$span.html('传值了有意见吗');
	});
	
	$('#callFunBtn').click(function(){
		window.opener.document.testfunction();
	});
	
});

</script>
<title>子窗口</title>
</head>
<body>

<input type="button" value="传值给父页面" id="childrenBtn"/><br/>
<input type="button" value="调用父页面函数" id="callFunBtn"/>
<span id="childrenSpan"></span>

</body> 
</html>