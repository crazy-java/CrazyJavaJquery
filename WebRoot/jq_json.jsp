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
	$.ajax({
		url : 'jsonServlet.do',
		type : 'POST',
		dataType : 'json', //解析类型要写json 否则解析出来的数据不正确 
		success : function(data){
			var json = data;
			for(var i = 0 ; i < json.length ; i++){
				if(i==2){
					$('<span>年龄:'+json[i].age+' 姓名:'+json[i].name+' 年级:'+json[i].grade+'</span><br/>').insertAfter($('body'));
				}else{
					$('<span>'+json[i]+'</span><br/>').insertAfter($('body'));
				}
			}
		},error : function(data){
			// donothing
		}
	});
	
	
});

</script>
<title>jq解析jsonArray</title>
</head>
<body>



</body> 
</html>