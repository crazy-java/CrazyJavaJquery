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
/**
  ps:
	  模拟订单配送过程
	 利用offset()获取元素在页面的坐标
 */
$(function(){
	
	$('span.send').mouseover(function(event){
		
		var id = $(this).attr('id');
		var divId = id+'Div';
		//当前span的高和左
		var top = $(this).offset().top+'px';
		var left = $(this).offset().left+70+'px';
		
		var $div = $('<div></div>').attr({'style':'position:absolute;top:'+top+';left:'+left+'','id':divId});
		$div.load('goods_dis.jsp #goods_dis_'+id);
		
		$('body').append($div);
		
	}).mouseout(function(){
		var id = $(this).attr('id');
		var divId = id+'Div';
		$('#'+divId).remove();
	});
	
});

</script>
<title>.offset应用</title>
</head>
<body>
<div>全部订单</div>
<div>
<table>
<tr>
<td>订单信息</td>
<td>收货人</td>
<td>订单金额</td>
<td>发货状态</td>
</tr>

<tr>
<td>帽子</td>
<td>张三</td>
<td>100</td>
<td><span class="send" id="goodsid_01">包裹跟踪</span></td>
</tr>

<tr>
<td>上衣</td>
<td>李四</td>
<td>200</td>
<td><span class="send" id="goodsid_02">包裹跟踪</span></td>
</tr>

<tr>
<td>裤子</td>
<td>王五</td>
<td>300</td>
<td><span class="send" id="goodsid_03">包裹跟踪</span></td>
</tr>

<tr>
<td>皮鞋</td>
<td>赵六</td>
<td>400</td>
<td><span class="send" id="goodsid_04">包裹跟踪</span></td>
</tr>

</table>
</div>


</body> 
</html>