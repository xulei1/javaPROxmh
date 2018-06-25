<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
             <li><a href="">张三</a></li>
             <li><a href="">这个人很懒，啥都没写</a></li>
             <li><a href="">我的足迹</a></li>
             <li><a href="">我要发布</a></li>
             <li><a href="">我的消息</a></li>
             <li><a href="order.html">我的订单</a></li>
             </ul>            
            </div>
        </div>
        <div class="content">
            
          
<!---------------------------------------------------------------------------------------------------------------------------------->
<!--标题 -->
            <div class="am-cf am-padding">
              <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> </div>
            </div>
            <hr/>
     		<c:forEach items="${list }" var="c">
     		
                        <div class="order-title">
                        	<div class="dd-num">订单编号：${c.orderid }</div>
                       
                        </div>
                        <div class="order-content">
	                        <div class="order-left">
	                           	商品编号:${c.goodsid }&nbsp;&nbsp;姓名:${c.real_name }&nbsp;&nbsp;地址:${c.address }
	                        </div>
                      	</div>
                      	
             </c:forEach> 	
                      	
                     
                      
               
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