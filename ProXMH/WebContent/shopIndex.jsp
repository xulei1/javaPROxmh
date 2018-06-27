<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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
      <img src="${ctx}/images-shop/logo.png" alt="layui">
    </a>
    
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
    
    <div class="fly-column-right layui-hide-xs"> 
      <span class="fly-search"><i class="layui-icon"></i></span> 
      
    </div> 
    <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
     <!--  <a href="jie/add.html" class="layui-btn">发表</a>  -->
    </div> 
  </div>
</div>

    <div class="wrap">
    <!-- 个人中心-------------------------------------------------------------------------------------------------------------------->
        <div class="one sidebar">
            <div class="widget">
             <img alt="" src="${ctx }/images-shop/touxian.jpg" class="myimg">   
             <ul class="mine">
             <li><a href="">${lu.name}</a></li>
             <li><a href="">这个人很懒，啥都没写</a></li>
             <li><a href="">我的足迹</a></li>
             <li><a href="">我要发布</a></li>
             <li><a href="">我的消息</a></li>
              <li><a href="${ctx }/goods/listorder?id=${lu.id}">我的订单</a></li>
             </ul>            
            </div>
        </div>
        <div class="content">
            
            <!--轮播图---------------------------------------------------------------------------------------------------------------->
            <div class="grids">
            	<div class="ft-carousel" id="carousel_1">
            		<ul class="carousel-inner">
            			<li class="carousel-item"><a href="goods003.jsp"><img src="${ctx }/images-shop/fanbubao.jpg" /></a></li>
            			<li class="carousel-item"><a href="goods005.jsp"><img src="${ctx }/images-shop/bookmark0.jpg" /></a></li>
            			<li class="carousel-item"><a href="goods002.jsp"><img src="${ctx }/images-shop/11.jpg" /></a></li>
            			<li class="carousel-item"><a href="goods001.jsp"><img src="${ctx }/images-shop/notebook0.jpg" /></a></li>
            			<li class="carousel-item"><a href="goods004.jsp"><img src="${ctx }/images-shop/hearttea0.jpg" /></a></li>
            		</ul>
            	</div>
            </div>
            <script src="js-shop/jquery.min.js"></script>
            <script src="js-shop/ft-carousel.min.js"></script>
            <script type="text/javascript">
            	$("#carousel_1").FtCarousel();

            	$("#carousel_2").FtCarousel({
            		index: 1,
            		auto: false
            	});

            	$("#carousel_3").FtCarousel({
            		index: 0,
            		auto: true,
            		time: 3000,
            		indicators: false,
            		buttons: true
            	});
            </script>
            <div style="text-align:center;clear:both">
            	<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
            	<script src="/follow.js" type="text/javascript"></script>

            
<!---------------------------------------------------------------------------------------------------------------------------------->
	           <div class="grids"> 
            <div class="grid">
            <div class="preview">
             <a href="goods001.jsp"><img src="${ctx }/images-shop/2.jpg" alt=""></a>
             <div class="data">
              <h3><a href="#1">点不到我</a></h3>
            </div>
            </div>
            </div>
            <div class="grid">
            <div class="product">
              <h1 class="product-title">「遇见你」系列笔记本</h1>
              <p class="product-desc">
                方格内页，落笔顺畅，不洇不透。愿你在书写中遇见自我。 落笔顺畅不洇墨，在书写中相遇世界 
              </p>
               <div class="product-button">
                <div class="holder col-4">
                  <div class="demo">
                    <span class="product-price">积分：100</span>
              <section>
                  <a href="${ctx }/goods001.jsp"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></a></div>
                </div>
              </div>
            </section>
            </div>
            </div>
            <div class="grid">
            <br>
            </div>
            <div class="clearFloat"></div>
            </div>

            <div class="grids">
            <div class="grid">
            <div class="preview">
             <a href="${ctx }/goods002.jsp"><img src="${ctx }/images-shop/3.jpg" alt=""></a>
             <div class="data">
              <h3><a href="#1">点不到我</a></h3>
            </div>
            </div>
            </div>

            <div class="grid">
            <div class="product">
              <h1 class="product-title">线装笔记本</h1>
              <p class="product-desc">
               简单凝练，轻薄便携，书写流畅，不洇不透
              </p>
              <section>
               <div class="product-button">
                <div class="holder col-4">
                  <div class="demo">
                    <span class="product-price">积分:100</span>
                    <section>
                  <a href="${ctx }/goods002.jsp"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></a></div>
                </div>
              </div>
            </section>
            </div>
            </div>
            <div class="grid">
            <br>
            </div>
            <div class="clearFloat"></div>
            </div>

            <div class="grids">
            <div class="grid">
            <div class="preview">
             <a href="${ctx }/goods003.jsp"><img src="${ctx }/images-shop/fanbubao1.jpg" alt=""></a>
             <div class="data">
              <h3><a href="#1">点不到我</a></h3>
            </div>
            </div>
            </div>

            <div class="grid">
            <div class="product">
              <h1 class="product-title">「早餐」系列帆布包</h5></h1>
              <p class="product-desc">
               简约版型，多层收纳，清爽文艺百搭
              </p>
              <section>
               <div class="product-button">
                <div class="holder col-4">
                  <div class="demo"> <span class="product-price">积分：100</span>
                    <section><a href="${ctx }/goods003.jsp"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></a></div>
                </div>
              </div>
            </section>
            </div>
            </div>
            <div class="grid">
            <br>
            </div>
            <div class="clearFloat"></div>
            </div>
            
            <div class="grids">
            <div class="grid">
            <div class="preview">
             <a href="${ctx }/goods004.jsp"><img src="${ctx }/images-shop/5.jpg" alt=""></a>
             <div class="data">
              <h3><a href="#1">点不到我</a></h3>
            </div>
            </div>
            </div>

            <div class="grid">
            <div class="product">
              <h1 class="product-title">校园新茶</h1>
              <p class="product-desc">
               严选优质鲜花与茶叶，精心窨制万千心意，尽在心茶。
              </p>
              <section>
               <div class="product-button">
                <div class="holder col-4">
                  <div class="demo"> <span class="product-price">积分：100</span>
                    <section><a href="${ctx }/goods004.jsp"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></a></div>
                </div>
              </div>
            </section>
            </div>
            </div>
            <div class="grid">
            <br>
            </div>
            <div class="clearFloat"></div>
            </div>

            <div class="grids">
            <div class="grid">
            <div class="preview">
             <a href="${ctx }/goods005.jsp"><img src="${ctx }/images-shop/6.jpg" alt=""></a>
             <div class="data">
              <h3><a href="#1">点不到我</a></h3>
            </div>
            </div>
            </div>

            <div class="grid">
            <div class="product">
              <h1 class="product-title">校园收藏夹</h1>
              <p class="product-desc">
                珍藏那些不舍得丢弃的照片和票根，给你的回忆一处安放之处
              </p>
              <section>
               <div class="product-button">
                <div class="holder col-4">
                  <div class="demo"> <span class="product-price">积分：100</span>
                    <section><a href="${ctx }/goods005.jsp"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></a></div>
                </div>
              </div>
            </section>
            </div>
            </div>
            <div class="grid">
            <br>
            </div>
            <div class="clearFloat"></div>
            </div>
 <!------------------------------------------------------------------------------------------------------------------------------------------>           

            <div class="fly-footer">
            	<B><p><a href="" target="_blank">campus社区</a> 2017 &copy; <a href="" target="_blank">出品</a></p>
            	<p>
            		<a href="">付费计划</a>
            		<a href="">获取campus社区模版</a>
            		<a href="">微信公众号</a>
            	</p></B>
            </div>

</body>
</html>