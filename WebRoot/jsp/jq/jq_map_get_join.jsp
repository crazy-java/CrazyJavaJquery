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
	  post提交数据时,一般以循环数组的方式(for)来拼接,使用下面的组合可以更方便的拼接数据
	  .map 把一组元素转成数组对象
	  .get 取数组元素 .get(0) 也可指定下标
	  .join('-') 以指定连接符连接生成字符串
	  
	  .get() 默认以,连接生成字符串
	  .join('*') 可以指定任意字符连接 ,跟在.get()后面
 */
$(function(){
	
	$('#ckAll').click(function(){
		var bool = this.checked;
		$('input[name=ck]').attr('checked',bool);
	});
	
	$('#subBtn').click(function(){
		var str = $('input[name=ck]:checked').map(function(){
			return $(this).val();
		}).get(); // .join('-');
		alert(str);
	});
	
});

</script>
<title>.map应用</title>
</head>
<body>

<form action="">
<table>
<tr>
<td><input type="checkbox" id="ckAll"/></td>
<td><span>title</span></td>
<td><span>author</span></td>
<td><span>link</span></td>
</tr>
<tr>
<td><input type="checkbox" name="ck" value="1001"/></td>
<td>应惜艳阳年</td>
<td>自由行走</td>
<td>http://www.a.com</td>
</tr>
<tr>
<td><input type="checkbox" name="ck" value="1002"/></td>
<td>紫禁城魔咒</td>
<td>简千艾</td>
<td>http://www.b.com</td>
</tr>
<tr>
<td><input type="checkbox" name="ck" value="1003"/></td>
<td>陆犯焉识</td>
<td>严歌苓</td>
<td>http://www.c.com</td>
</tr>
<tr>
<td><input type="checkbox" name="ck" value="1004"/></td>
<td>分歧者</td>
<td>维罗尼卡罗斯</td>
<td>http://www.d.com</td>
</tr>
</table>
<div>
<input type="button" id="subBtn" value="提 交"/>
</div>
</form>
<a href="index.jsp">返回首页</a>
</body> 
</html>