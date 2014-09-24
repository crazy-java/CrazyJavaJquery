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
	
	$('#parentBtn').click(function(){
		$(window.frames['frame1'].document).find('#frameDiv').css({'background-color':'pink'});
	});
	
	$('#parentBtn2').click(function(){
		$('#includeDiv').css({'background-color':'pink'});
	});
	

});


</script>
<title>frame之间的交互</title>
</head>
<body>

frame中的按钮给文本框赋值<input type="text" id="parentInput" /><br/>
include页面的按钮给文本框赋值<input type="text" id="parentInput2" /><br/>

<input type="button" value="改变frame的背景颜色" id="parentBtn"/>
<input type="button" value="改变include的背景颜色" id="parentBtn2"/><br/>


<iframe src="jq_frame2.jsp" id="frame1" name="frame1" style="border: 1px solid #cccccc"></iframe>
<iframe src="jq_frame3.jsp" id="frame2" name="frame2" style="border: 1px solid #cccccc"></iframe><br/>
<div style="border: 1px solid #cccccc;width: 610px;">
<jsp:include page="jq_include.jsp"></jsp:include>
</div>





</body> 
</html>