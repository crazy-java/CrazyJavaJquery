$(function(){
	//�ر����ֲ㼰����(����ҳ��Ĺر�ͼƬ id=closeWinImg)
	$(document).delegate('img#closeWinImg','click',function(){
		closeShadeHelper();
		return false;
	});
});

//�������ֲ㼰����
function shadeHelper(){
	//���ù�����
	$('html,body').css({
		'overflow':'hidden'
	});
	//���ֲ�
	var $shadeDiv = $('<div flag="shadeDiv" style="background-color:#919290;position:absolute;opacity:0.5;filter:Alpha(opacity=65);"></div>');
	$shadeDiv.css({'width':$(document).width(),'height':$(document).height(),'top':0});
	//������
	var $pageDiv = $('<div flag="shadeDiv" style="position:fixed;z-index:999"></div>');
	$('body').append($pageDiv).append($shadeDiv);
	$pageDiv.css({'top':'33.3%','left':'32%'});
	return $pageDiv;	
}

//�ر����ֲ㼰����
function closeShadeHelper(){
	$('div[flag=shadeDiv]').remove();
	$('html,body').css({
		'overflow':'auto'
	});
}