<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
ps:
	检测页面离开
	
	•点击某个离开页面的链接
	•在地址栏中键入了新的 URL
	•使用前进或后退按钮
	•关闭浏览器
	•重新加载页面
	
*/
$(function() {
	
	$(window).bind('beforeunload', function(){ 
		return '确认离开此页吗'; 
	}); 
	
	$('#closeBtn').click(function(){
		window.close();
	}); 
	
	$('#reloadBtn').click(function(){
		window.location.reload();
	});

});
</script>
<title>beforeunload用法</title>
</head>
<body>

<input type="button" value="关闭页面" id="closeBtn" />(ff失效)<br/>
<input type="button" value="刷新页面" id="reloadBtn"/><br/>
<a href="http://www.baidu.com">跳转新页面</a><br/>

</body>
</html>