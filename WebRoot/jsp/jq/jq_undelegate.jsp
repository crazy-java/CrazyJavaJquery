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
	  .on 绑定点击事件, click.myevent(myevent是命名空间,加命名空间的意义是不干涉其他插件对元素绑定的事件)
	  .one 只绑定一次点击事件 再点击无效
	  .on .bind 绑定的带命名空间的点击事件 只能用.off .unbind解绑 用.undelegate解绑无效
	  .delegate绑定的事件 只能用.undelegate解绑 .off .unbind无效
 */
jQuery(function($){
	
	$('#oneBtn').one('click',function(){
		$('<span>只执行了一次的按钮事件</span>').insertAfter($(this));
	});
	
/* 	$('#anotherBtn').on('click.myevent',function(){
		$('<p>执行了带命名空间的点击事件(再次执行会在上面出现新内容)</p>').insertAfter($(this));
	}); */
	
	$('#anotherBtn').bind('click.myevent',function(){
		$('<p>执行了带命名空间的点击事件(再次执行会在上面出现新内容)</p>').insertAfter($(this));
	});
	
	/* $('body').delegate('#anotherBtn','click.myevent',function(){
		$('<p>执行了带命名空间的点击事件(再次执行会在上面出现新内容)</p>').insertAfter($(this));
	}); */
	
	$('#anotherBtn').on('click',function(){
		$('<p>执行了不带命名空间的点击事件</p>').insertAfter($(this));
	});
	
	$('#undelegateBtn').click(function(){
// 		$('#anotherBtn').unbind('click.myevent');
		$('#anotherBtn').off('click.myevent');
// 		$('body').undelegate('click.myevent');
	});
	
});

</script>
<title>.undelegate应用</title>
</head>
<body>

<p>
<input id="oneBtn" type="button" value="点击后,在元素后面添加一段话"/>
</p>
<p>
<input type="button" id="anotherBtn" value="绑定带命名空间的点击事件"/>
</p>
<input type="button" value="删除带命名空间的点击事件" id="undelegateBtn"/>

<a href="index.jsp">返回首页</a>
</body> 
</html>