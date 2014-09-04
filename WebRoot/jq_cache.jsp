<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
  ps:
	  	demo中是对jQuery缓存的应用展示,应用范围不仅仅于此,可自由发挥(例如：需要频繁取重复数据等操作,可应用缓存功能) 
	           
	  	该demo是模拟对所取数据加载错误时,对缓存数据的使用
	  	load.jsp是远程数据源 
	  	第一次加载成功后,num计数+1,并且把加载到的数据换到页面控件中
	  	第二次加载数据源时url改为load1.jsp,该地址是不存在的,所以执行加载时会发生错误 
	  	这时在error中就把缓存数据拿出来使用
 */
$(function(){
		var num = 0;
		var url = 'load.jsp';
		$('#loadBtn').click(function(){
			
			$('#loadingDiv').html('正在奋力加载中......');
			
			if(num > 0){
				url = 'load1.jsp';
			}
			
			$.ajax({
				url : url,
				type : 'POST',
				dataType : 'html',
				success : function(data){
					if(num == 0){
						$('#catchDiv').data('data',data);
						$('#loadingDiv').html(data);
					}
					num++;
				},error : function(data){
					//测试时,把下面这行注释掉看效果
					$('#loadingDiv').html($('#catchDiv').data('data'));
				}
			});
			
		});
});

</script>
<title>jq缓存练习</title>
</head>
<body>
<div id="loadingDiv"></div>
<div id="catchDiv"></div>
<input type="button" id="loadBtn" value="加载页面"/>
</body>
</html>