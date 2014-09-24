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
<style>

*{
    margin: 0px;
    padding: 0px;
}
#Div0 {
    top:0px ;
    left: 0px;
    width: 800px;
    height:600px;
    border: 3px solid red;
    position : absolute;
    z-index : 20;
}

#Div1 {
    width: 500px;
    height:300px;
    border: 3px solid blue;
    position : absolute;
    top:0px ;
    left: 0px;
    z-index : 0;
    background-color: yellow;
}

#Div4{
    width: 200px;
    height:300px;
    background-color: green;
    background-image: url(a.png)
}

</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
  ps:
	  .on 绑定点击事件,后加入的事件不会执行绑定事件
	  .delegate 对后加入的元素也会绑定事件
 */
jQuery(function($){
	
/* 	$('button.testBtn').on('click',function(){
		alert('匹配选择器testBtn的按钮被点击了');
	}); */
	
	$('body').delegate('.testBtn','click',function(){
		alert('后加入的元素也会执行绑定的点击事件');
	});
	
	$('body').append('<button class="testBtn">another button</button>');
	
});

</script>
<title>.delegate应用</title>
</head>
<body>

<button class="testBtn">.trigger("focus")</button>




</body> 
</html>