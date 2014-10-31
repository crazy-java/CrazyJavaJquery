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
<script type="text/javascript" src="js/jquery-1.11.1.js" charset="utf-8"></script>
<script type="text/javascript" src="js/commonDialog.js" charset="utf-8"></script>
<script type="text/javascript">
$(function(){
	var hm=document.createElement("script");
	hm.src ="//hm.baidu.com/hm.js?8867273989ac579c211d99bc3e0d00dd";
	var s=document.getElementsByTagName("script")[0];
	s.parentNode.insertBefore(hm,s);
});

</script>
<title>弹窗应用</title>
</head>
<body>
<div>

<input type="button" id="slideDownBtn" value="弹窗" />&nbsp;<input type="button" id="slideUpBtn" value="弹窗"/>

<input id="slideToggleBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="slideToggleP">弹窗</p><br/><br/><br/>

<input id="toggleBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="toggleP">弹窗</p><br/><br/><br/>

<input id="fadeInBtn" type="button" value="弹窗"/>&nbsp;<input id="fadeOutBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="fadeP">弹窗</p><br/><br/><br/>

<input id="fadeToBtn" type="button" value="弹窗"/>&nbsp;<input id="fadeToMoreBtn" type="button" value="弹窗"/>&nbsp;<input id="fadeToEndBtn" type="button" value="弹窗"/><br/>
<div id="fadeToDiv" class="fadetocss"></div><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<input id="fadeToggleBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="fadeToggleP">弹窗</p><br/><br/><br/>
<a href="index.jsp">返回首页</a>

<input type="button" id="slideDownBtn" value="弹窗" />&nbsp;<input type="button" id="slideUpBtn" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="slideP">弹窗</p><br/><br/><br/>

<input id="slideToggleBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="slideToggleP">弹窗</p><br/><br/><br/>

<input id="toggleBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="toggleP">弹窗</p><br/><br/><br/>

<input id="fadeInBtn" type="button" value="弹窗"/>&nbsp;<input id="fadeOutBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="fadeP">弹窗</p><br/><br/><br/>

<input id="fadeToBtn" type="button" value="弹窗"/>&nbsp;<input id="fadeToMoreBtn" type="button" value="弹窗"/>&nbsp;<input id="fadeToEndBtn" type="button" value="弹窗"/><br/>
<div id="fadeToDiv" class="fadetocss"></div><br/><br/><br/><br/><br/><br/>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<input id="fadeToggleBtn" type="button" value="弹窗"/>
<p style="width: 30%;height: 10%;display: none;" id="fadeToggleP">弹窗</p><br/><br/><br/>
<a href="index.jsp">返回首页</a>






































</div>
</body> 
</html>