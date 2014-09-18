<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.test2{font-size:30px}
</style>
<script type="text/javascript" src="js/jquery-1.11.1.js" charset="utf-8"></script>
<script type="text/javascript">
/**
  ps:
	slideDown slideUp 从上至下 和 从下至上的效果
 */
$(function(){
	
	// slideDown slideUp 从上至下 和 从下至上的效果
	$('#slideDownBtn').click(function(){
		$('#slideP').slideDown('slow');
	});
	$('#slideUpBtn').click(function(){
		$('#slideP').slideUp('fast');
	});
	
	// 简写方式显示隐藏切换效果 (从上至下)
	$('#slideToggleBtn').click(function(){
		$('#slideToggleP').slideToggle();
	});
	
	// 渐显方式的显示隐藏切换效果
	$('#toggleBtn').click(function(){
		$('#toggleP').toggle('slow');
	});
	
	// 淡入淡出效果
	$('#fadeInBtn').click(function(){
		$('#fadeP').fadeIn('slow');
	});
	$('#fadeOutBtn').click(function(){
		$('#fadeP').fadeOut('slow');
	});
	
	// 图片 div 样式设置
	$('#girl1Img').attr({'style':'position:absolute;width: 250px;height: 300px;z-index: 7;left:'+$('#girl0Img').offset().left+'px'+',top:'+$('#girl0Img').offset().top+'px'});
	$('#fadeToDiv').attr({'style':'background-color: #CDD2D5;position:absolute;width: 250px;height: 300px;z-index: 999;left:'+$('#girl0Img').offset().left+'px'+',top:'+$('#girl0Img').offset().top+'px'});
	
	$('#fadeToBtn').click(function(){
		$('#fadeToDiv').fadeTo('slow',0.9);
	});
	
	$('#fadeToMoreBtn').click(function(){
		$('#fadeToDiv').fadeTo('slow',0.8);
	});
	
	$('#fadeToEndBtn').click(function(){
		$('#girl0Img').hide();
		$('#fadeToDiv').fadeTo('slow',0);
	});
	
	$('#fadeToggleBtn').click(function(){
		$('#fadeToggleP').fadeToggle('5000');
	});
	
	
});

</script>
<title>动画应用</title>
</head>
<body>
<input type="button" id="slideDownBtn" value="从上至下" />&nbsp;<input type="button" id="slideUpBtn" value="从下至上"/>
<p style="width: 30%;height: 10%;display: none;" id="slideP">从上向下出现</p><br/><br/><br/>

<input id="slideToggleBtn" type="button" value="简写方式的动画显示隐藏效果"/>
<p style="width: 30%;height: 10%;display: none;" id="slideToggleP">简写方式的动画显示隐藏效果</p><br/><br/><br/>

<input id="toggleBtn" type="button" value="普通显示隐藏效果"/>
<p style="width: 30%;height: 10%;display: none;" id="toggleP">简写方式的动画显示隐藏效果</p><br/><br/><br/>

<input id="fadeInBtn" type="button" value="淡入效果"/>&nbsp;<input id="fadeOutBtn" type="button" value="淡出效果"/>
<p style="width: 30%;height: 10%;display: none;" id="fadeP">简写方式的动画显示隐藏效果</p><br/><br/><br/>

<input id="fadeToBtn" type="button" value="透明效果"/>&nbsp;<input id="fadeToMoreBtn" type="button" value="再透明一点"/>&nbsp;<input id="fadeToEndBtn" type="button" value="完全透明"/><br/>
<img src="img/girl0.jpg" id="girl0Img" style="position: absolute;width: 250px;height: 300px;z-index: 8;" class="fadetocss"/>
<img src="img/girl1.jpg" id="girl1Img" style="" class="fadetocss"/>
<div id="fadeToDiv" class="fadetocss"></div><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<input id="fadeToggleBtn" type="button" value="淡出效果"/>
<p style="width: 30%;height: 10%;display: none;" id="fadeToggleP">简写方式的动画显示隐藏效果</p><br/><br/><br/>








































</body> 
</html>