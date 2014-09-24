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
	  遮盖层显示
 */
jQuery(function($){
	
	var top = $('#testImg').offset().top;
	var left = $('#testImg').offset().left+'px';
	var width = $('#testImg').width()+'px';
	var divWidth = $('#testImg').width()/2+'px';
	var divHeight = $('#testImg').height()/2+top+'px';
	$('#descDiv').attr({'style':'position:absolute;top:'+divWidth+';left:'+left+';width:'+width+';height:'+divHeight+';background-color: #88100b;opacity:0.8;display: none;z-index:999'});
	
	$('#testImg').on('mouseover mouseout',function(event){
		$('#descDiv').toggle();
	});
	
});


</script>
<title>图片遮盖层</title>
</head>
<body>

<div id="testImg" style="width: 290px;height: 290px;cursor: pointer;overflow:hidden;">
<img  src="img/1.jpg" style="width: 290px;height: 290px;">
<div id="descDiv" >
<span style="color: white;padding: 15px;">美丽的盐湖美丽的盐湖美丽的盐湖美丽的盐湖美丽的盐湖美丽的盐湖</span>
</div>
</div>


</body> 
</html>