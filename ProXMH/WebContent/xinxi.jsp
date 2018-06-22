<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人信息完善页面</title>

<link href="../scripts/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../scripts/script.js"></script>

</head>

<body>

<dl class="formbox">
	<form action="#" method="get">
		<dt>填写基本信息</dt>
		<dd><input id="name" name="truename" type="text" class="text" value="truename" /></dd>
		<dd><input id="contact" name="contact" type="text" class="text" value="contant" /></dd>
		<dd style="z-index: 2;">
			<div id="btn_come_from_drop_down" class="select_normal"></div>
			<input id="come_from" name="address" type="text" class="text" value="address" />
			<ul id="come_from_drop_down" class="area">
				<li class="active">北京</li>
				<li>上海</li>
				<li>杭州</li>
				<li>深圳</li>
				<li>河北</li>
				<li>石家庄</li>
				<li>哈尔滨</li>
				<li>天津</li>
				<li>湖北</li>
				<li>河北师范大学</li>
			</ul>
		</dd>
		<dd class="clear">
			<input id="gender" name="gender" type="hidden" />
			<h2>性别</h2>
			<ul class="sex">
				<li id="gender_man" title="男" class="men_active"></li>
				<li id="gender_woman" title="女" class="woman_normal"></li>
			</ul>
		</dd>
		<dd class="clear">
			<input id="hobby" name="hobby" type="hidden" />
			<h2>爱好</h2>
			<ul id="hobby_drop_down" class="hobby">
				<li>上网</li>
				<li>看电影</li>
				<li>游泳</li>
				<li>打篮球</li>
				<li>唱歌</li>
				<li>旅游</li>
			</ul>
		</dd>
		<dd>
			 <h2>就这样！</h2>
			<div class="btn"><a href="daohang.jsp"> <input type="button" value="提交" /></a></div>
		</dd>
	</form>
</dl>

</body>
</html>