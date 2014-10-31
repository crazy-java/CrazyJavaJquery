$(function(){
	//关闭遮罩层及弹窗(弹窗页面的关闭图片 id=closeWinImg)
	$(document).delegate('img#closeWinImg','click',function(){
		closeShadeHelper();
		return false;
	});
});

//弹出遮罩层及弹窗
function shadeHelper(){
	//设置滚动条
	$('html,body').css({
		'overflow':'hidden'
	});
	//遮罩层
	var $shadeDiv = $('<div flag="shadeDiv" style="background-color:#919290;position:absolute;opacity:0.5;filter:Alpha(opacity=65);"></div>');
	$shadeDiv.css({'width':$(document).width(),'height':$(document).height(),'top':0});
	//弹出层
	var $pageDiv = $('<div flag="shadeDiv" style="position:fixed;z-index:999"></div>');
	$('body').append($pageDiv).append($shadeDiv);
	$pageDiv.css({'top':'33.3%','left':'32%'});
	return $pageDiv;	
}

//关闭遮罩层及弹窗
function closeShadeHelper(){
	$('div[flag=shadeDiv]').remove();
	$('html,body').css({
		'overflow':'auto'
	});
}