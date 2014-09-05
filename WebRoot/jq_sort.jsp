<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="js/jquery-1.9.1.min.js" charset="utf-8"></script>
<script type="text/javascript">
/**
  ps:
	  	demo中是对jQuery页面排序的应用展示,不走后台sql排序,直接在页面排序
	            重点是对行排序,.sort(function(a,b)()) 对每一行中当前需要排序的列进行比较,来实现动态排序
 */
$(function(){
	$('td.sort').click(function(){
		var index = $(this).index();
		var rows = $(this).parent().nextAll().get();
		
		rows.sort(function(a,b){
			var keya = $(a).children('td').eq(index).text();
			keya = $.trim(keya).toUpperCase();
			var keyb = $(b).children('td').eq(index).text();
			keyb = $.trim(keyb).toUpperCase();
			if(keya < keyb){
				return -1;
			}
			if(keya > keyb){
				return 1;
			}
			return 0; 
		});
		
		$.each(rows,function(index,row){
			$('tbody').append(row);
		});
	
	});
});

</script>
<title>jq页面排序</title>
</head>
<body>
<table> 
	<tr>
		<td class="sort" style="cursor: pointer;">Title&nbsp;</td>
		<td class="sort" style="cursor: pointer;">Author&nbsp;</td>
		<td class="sort" style="cursor: pointer;">Publish Date&nbsp;</td>
		<td class="sort" style="cursor: pointer;">Price</td>
	</tr>
	
	<tr>
		<td>Casdqw</td>
		<td>Eqwef</td>
		<td>2014-09-09</td>
		<td>56.12</td>
	</tr>
	<tr>
		<td>Aasdqw</td>
		<td>Fqwef</td>
		<td>2014-09-01</td>
		<td>66.12</td>
	</tr>
	<tr>
		<td>basdqw</td>
		<td>Bqwef</td>
		<td>2014-09-04</td>
		<td>36.12</td>
	</tr>
	<tr>
		<td>hasdqw</td>
		<td>aqwef</td>
		<td>2014-09-03</td>
		<td>96.12</td>
	</tr>
</table>
</body>
</html>