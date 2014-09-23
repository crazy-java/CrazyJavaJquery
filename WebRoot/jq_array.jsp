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
	
	var $div = $('div').map(function(){
		return $(this).html();
	});
	
	var index = $.inArray('second',$div);
	if(index != -1){
		$('<span style=color:red>存在指定元素</span>').insertAfter($('div:last'));
	}
	
	
});

</script>
<title>jq判断数组中是否存在指定元素</title>
</head>
<body>

<div>first</div>
<div>second</div>
<div>third</div>
<div>fourth</div>


</body> 
</html>