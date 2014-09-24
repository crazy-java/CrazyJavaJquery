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
	$('#frameBtn').click(function(){
		$($('#parentInput',window.parent.document)).val('frame中改变了值');
	});
	
	$('#frameBtn2').click(function(){
		$(window.parent.frames['frame2'].document).find('#frameInput').val('改变了同级frame文本框的值');
	});
	
});

</script>
<title>frame之间的交互</title>
</head>
<body>

<input type="button" value="点击我改变父窗口文本框的值" id="frameBtn"/>
<input type="button" value="点击我改变同级frame中文本框的值" id="frameBtn2"/>

<div id="frameDiv" style="height: 150px;width: 150px;">
	
</div>


</body> 
</html>