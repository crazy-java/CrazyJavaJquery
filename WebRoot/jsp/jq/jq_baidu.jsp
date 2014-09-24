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
.bgcolor {background-color: #CCCCCC;}
.mnav{color: black;border:thick;font-weight: 900;}
.lb{color: black;border:thin;}
</style>
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
  ps:
	  模拟百度只能提示框
 */
jQuery(function($){
	
	$('#searchInput').focus();
	
	$('#loadDataDiv').css({'width':$('#searchInput').width()});
	
	$('#searchInput').keyup(function(event){
		// 根据搜索条件框的内容选择是否加载数据 
		var length = $.trim($(this).val()).length;
		if(event.keyCode == 40 || event.keyCode == 38){
			// donothing
		}else{
			if(length > 0){
				$('#loadDataDiv').show().load('jsp/jq/content_data.jsp div');
			}else{
				$('#loadDataDiv').hide().html('');
			}
		}
	});
	
	$('body').keydown(function(event){
		// 按钮编码 光标上键 38 光标下键 40
		var keycode = event.which;
		var isSel = $('div.content_data').is('.bgcolor');
		var keyword = '' ; 
		if(keycode == 40){
			$('#searchInput').blur();
			if(!isSel){
				$('div.content_data:first').addClass('bgcolor');
				keyword = $('div.content_data:first').text();
			}else{
				keyword = $('div.content_data.bgcolor').next().text();
				$('div.content_data.bgcolor').next().addClass('bgcolor').end().removeClass('bgcolor');
			}
		}
		if(keycode == 38){
			$('#searchInput').blur();
			if(!isSel){
				$('div.content_data:last').addClass('bgcolor');
				keyword = $('div.content_data:last').text();
			}else{
				keyword = $('div.content_data.bgcolor').prev().text();
				$('div.content_data.bgcolor').prev().addClass('bgcolor').end().removeClass('bgcolor');
				
			}
		}
		if(keyword){
			$('#searchInput').val(keyword);
		}
		$('#searchInput').focus();
		
	});
	
});

</script>		
<title>百度一下，你就知道</title>
</head>
<body>
<div align="right" style="padding: 5px;">
<A class=mnav href="http://news.baidu.com" name=tj_trnews>新闻</A>
<A class=mnav href="http://www.hao123.com" name=tj_trhao123>hao123</A>
<A class=mnav href="http://map.baidu.com" name=tj_trmap>地图</A>
<A class=mnav href="http://v.baidu.com" name=tj_trvideo>视频</A>
<A class=mnav href="http://tieba.baidu.com" name=tj_trtieba>贴吧</A>
<A class=lb onclick="return false;" href="https://passport.baidu.com/v2/?login&amp;tpl=mn&amp;u=http%3A%2F%2Fwww.baidu.com%2F" name=tj_login>登录</A>
<A class=lb href="http://www.baidu.com/gaoji/preferences.html" name=tj_settingicon jQuery110209288522396639992="71">设置</A>
<A class=bri href="http://www.baidu.com/more/" name=tj_briicon jQuery110209288522396639992="76">更多产品</A>
</div>
<div id="logoDiv" align="center">
<img alt="" src="img/bd_logo1.png" style="width: 270px;height: 129px;">
</div>
<div align="center">
<input type="text" id="searchInput" style="width: 526px;height: 30px;" maxlength="100" />
<div style="display:none;border:solid 1px #CCCCCC;text-align: left;" id="loadDataDiv"></div>
</div>

<a href="index.jsp">返回首页</a>
</body> 
</html>