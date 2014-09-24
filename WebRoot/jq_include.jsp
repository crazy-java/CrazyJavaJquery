<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
$(function(){
	$('#includeBtn').click(function(){
		$('#parentInput2').val('include中按钮改变了父页面的文本框值');
	});
	
	$('#includeBtn2').click(function(){
		$(window.frames["frame1"].document).find('#frameDiv').css({'background-color':'yellow'});
	});
	
});

</script>
</head>
<body>
include进来的页面 
<div id="includeDiv" style="height: 150px;width: 150px;">
	<div id="include_child_div" style="height: 100px;width: 100px;"></div>
</div>
<input type="button" value="include页面的元素操作父页面的元素" id="includeBtn"/><br/>
<input type="button" value="include页面的元素操作frame中的元素" id="includeBtn2"/><br/>


</body> 
</html>