<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

 

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>校美好 校园商店模块</title>
	<link rel="stylesheet" href="${ctx }/css-shop/layui.css">
	<link rel="stylesheet" href="${ctx }/css-shop/global.css">
	<link rel='stylesheet prefetch' href="${ctx }/css-shop/ionicons.min.css">
	<link rel="stylesheet" href="${ctx }/css-shop/style.css">
	<link rel="stylesheet" href="${ctx }/css-shop/ft-carousel.css" />
	<link href="${ctx }/css-shop/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${ctx }/css-shop/reset.min.css">
	<link rel="stylesheet" href="${ctx }/css-shop/style.css">
	<script type="text/javascript" src="${ctx }/scripts-shop/jquery-1.4.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/scripts-shop/jquery.slidepanel.setup.js"></script>
</head>
<body>

	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="">
				<img src="${ctx }/images-shop/logo.png" alt="layui">
			</a>
    <!-- <ul class="layui-nav fly-nav layui-hide-xs">
      <li class="layui-nav-item layui-this">
        <a href="/"><i class="iconfont icon-jiaoliu"></i>交流</a>
      </li>
      <li class="layui-nav-item">
        <a href="case/case.html"><i class="iconfont icon-iconmingxinganli"></i>案例</a>
      </li>
      <li class="layui-nav-item">
        <a href="http://www.layui.com/" target="_blank"><i class="iconfont icon-ui"></i>框架</a>
      </li>
  </ul> -->

  <ul class="layui-nav fly-nav-user">

  	<!-- 未登入的状态 -->
  	<li class="layui-nav-item">
  		<a class="iconfont icon-touxiang layui-hide-xs" href="user/login.html"></a>
  	</li>
  	<li class="layui-nav-item">
  		<a href="user/login.html">登入</a>
  	</li>
  	<li class="layui-nav-item">
  		<a href="user/reg.html">注册</a>
  	</li>
  	<li class="layui-nav-item layui-hide-xs">
  		<a href="/app/qq/" onclick="layer.msg('正在通过QQ登入', {icon:16, shade: 0.1, time:0})" title="QQ登入" class="iconfont icon-qq"></a>
  	</li>
  	<li class="layui-nav-item layui-hide-xs">
  		<a href="/app/weibo/" onclick="layer.msg('正在通过微博登入', {icon:16, shade: 0.1, time:0})" title="微博登入" class="iconfont icon-weibo"></a>
  	</li>

</ul>
</div>
</div>

<div class="fly-panel fly-column">
	<div class="layui-container">
		<ul class="layui-clear">
			<li class="layui-hide-xs layui-this"><h3><a href="/">校美好 校园商城</a></h3></li> 
      <!-- <li><a href="jie/index.html">提问</a></li> 
      <li><a href="jie/index.html">分享<span class="layui-badge-dot"></span></a></li> 
      <li><a href="jie/index.html">讨论</a></li> 
      <li><a href="jie/index.html">建议</a></li> 
      <li><a href="jie/index.html">公告</a></li> 
      <li><a href="jie/index.html">动态</a></li> --> 
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
      
      <!-- 用户登入后显示 -->
      <!-- <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html">我发表的贴</a></li>  -->
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="user/index.html#collection"></a></li> 
  </ul> 
 
  <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
  	<!--  <a href="jie/add.html" class="layui-btn">发表</a>  -->
  </div> 
</div>
</div>
<iframe frameborder="0" scrolling="no" src="${ctx }/goods001Sup.jsp" width="100%" height="620px" ></iframe>
<div class="shop"><img src="${ctx }/images-shop/notebook2.jpg"></div>
<div class="fly-footer">
	<B><p><a href="http://fly.layui.com/" target="_blank">campus社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
		<p>
			<a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
			<a href="http://www.layui.com/template/fly/" target="_blank">获取campus社区模版</a>
			<a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
		</p></B>
	</div>
</body>
</html>