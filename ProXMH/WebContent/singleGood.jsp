<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

 

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>校美好 校园商店模块</title>
	<link rel="stylesheet" href="${ctx }/css2/layui.css">
	<link rel="stylesheet" href="${ctx }/css2/global.css">
	<link rel='stylesheet prefetch' href="${ctx }/css2/ionicons.min.css">
	<link rel="stylesheet" href="${ctx }/css2/style.css">
	<link rel="stylesheet" href="${ctx }/css2/ft-carousel.css" />
	<link href="${ctx }/css2/style.css" rel="stylesheet" type="text/css" media="all" />
	<link rel="stylesheet" href="${ctx }/css2/reset.min.css">
	<link rel="stylesheet" href="${ctx }/css2/style.css">
	<script type="text/javascript" src="${ctx }/scripts/jquery-1.4.1.min.js"></script>
	<script type="text/javascript" src="${ctx }/scripts/jquery.slidepanel.setup.js"></script>
</head>
<body>

	<div class="fly-header layui-bg-black">
		<div class="layui-container">
			<a class="fly-logo" href="">
				<img src="${ctx }/images/logo.png" alt="layui">
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

  	<!-- 登入后的状态 -->
      <!--
      <li class="layui-nav-item">
        <a class="fly-nav-avatar" href="javascript:;">
          <cite class="layui-hide-xs">贤心</cite>
          <i class="iconfont icon-renzheng layui-hide-xs" title="认证信息：layui 作者"></i>
          <i class="layui-badge fly-badge-vip layui-hide-xs">VIP3</i>
          <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg">
        </a>
        <dl class="layui-nav-child">
          <dd><a href="user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
          <dd><a href="user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
          <dd><a href="user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
          <hr style="margin: 5px 0;">
          <dd><a href="/user/logout/" style="text-align: center;">退出</a></dd>
        </dl>
      </li>
  -->
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

  <div class="fly-column-right layui-hide-xs"> 
  	<span class="fly-search"><i class="layui-icon"></i></span> 
  	<a href="jie/add.html" class="layui-btn">查找</a> 
  </div> 
  <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
  	<!--  <a href="jie/add.html" class="layui-btn">发表</a>  -->
  </div> 
</div>
</div>
<iframe frameborder="0" scrolling="no" src="singleSupport.jsp" width="100%" height="620px" ></iframe>
<div class="shop"><img src="images/12.png"></div>
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