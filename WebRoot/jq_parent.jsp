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
	
	$('#openNewWin').click(function(){
		window.open("jq_children.jsp");
	});

});

function testfunction(){
	$('#parentSpan').html('调用了父页面的函数');
}

</script>
<title>子窗口改变父窗口的值 子窗口中调用父窗口的函数</title>
</head>
<body>

<a id="openNewWin" href="#">打开新窗口</a>
<span id="parentSpan"></span><br/>

</body> 
</html>