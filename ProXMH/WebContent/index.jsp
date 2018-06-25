<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<%
	pageContext.setAttribute("ctx", request.getContextPath());
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <title>发表问题 编辑问题 公用</title>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="keywords" content="fly,layui,前端社区">
  <meta name="description" content="Fly社区是模块化前端UI框架Layui的官网社区，致力于为web开发提供强劲动力">
  <link rel="stylesheet" href="./res/layui/css/layui.css">
  <link rel="stylesheet" href="./res/css/global.css">

</head>
<body>

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="/">
      <img src="./res/images/logo.png" alt="layui">
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
          <dd><a href="../user/set.html"><i class="layui-icon">&#xe620;</i>基本设置</a></dd>
          <dd><a href="../user/message.html"><i class="iconfont icon-tongzhi" style="top: 4px;"></i>我的消息</a></dd>
          <dd><a href="../user/home.html"><i class="layui-icon" style="margin-left: 2px; font-size: 22px;">&#xe68e;</i>我的主页</a></dd>
          <hr style="margin: 5px 0;">
          <dd><a href="" style="text-align: center;">退出</a></dd>
        </dl>
      </li>
      -->
    </ul>
  </div>
</div>
<div class="fly-panel fly-column">
  <div class="layui-container">
    <ul class="layui-clear">
      <li class="layui-hide-xs"><a href="/">首页</a></li> 
      <li class="layui-this"><a href="">提问</a></li> 
      <li><a href="">分享<span class="layui-badge-dot"></span></a></li> 
      <li><a href="">讨论</a></li> 
      <li><a href="">建议</a></li> 
      <li><a href="">公告</a></li> 
      <li><a href="">动态</a></li> 
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
      
      <!-- 用户登入后显示 -->
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="./user/index.jsp">我发表的贴</a></li> 
      <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="./user/index1.jsp">我收藏的贴</a></li> 
    </ul> 
    
    <div class="fly-column-right layui-hide-xs"> 
      <span class="fly-search"><i class="layui-icon"></i></span> 
      <a href="add.jsp" class="layui-btn">发表新帖</a> 
    </div> 
    <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
      <a href="add.jsp" class="layui-btn">发表新帖</a> 
    </div> 
  </div>
</div>

<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md8">
      <div class="fly-panel" style="margin-bottom: 0;">
        
        <div class="fly-panel-title fly-filter">
          <a href="" class="layui-this">综合</a>
          <span class="fly-mid"></span>
          <a href="">未结</a>
          <span class="fly-mid"></span>
          <a href="">已结</a>
          <span class="fly-mid"></span>
          <a href="">精华</a>
          <span class="fly-filter-right layui-hide-xs">
            <a href="" class="layui-this">按最新</a>
            <span class="fly-mid"></span>
            <a href="">按热议</a>
          </span>
        </div>

        <ul class="fly-list">          
        <c:if
						test="${(pageModel.datas != null) && (!empty pageModel.datas)}">
						<c:forEach var="topic" items="${pageModel.datas}">
          <li>
            <a href="user/home.html" class="fly-avatar">
              <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">
            </a>
            <h2>
              <a class="layui-badge">动态</a>
              <a href="${ctx }/detail?topicid=${topic.topicid}">${topic.title }</a>
            </h2>
            <div class="fly-list-info">
              <a href="user/home.html" link>
                <cite>${topic.user.nickname }</cite>
                <!--
                <i class="iconfont icon-renzheng" title="认证信息：XXX"></i>
                <i class="layui-badge fly-badge-vip">VIP3</i>
                -->
              </a>
              <span>${topic.send_time }</span>
              
              
              <span class="fly-list-nums"> 
                <i class="iconfont icon-pinglun1" title="回答"></i> ${topic.replyCount }
              </span>
            </div>
            <div class="fly-list-badge">
              <!--<span class="layui-badge layui-bg-red">精帖</span>-->
            </div>
          </li>                          
          </c:forEach>
          </c:if> 
             </ul>
        
        <!-- <div class="fly-none">没有相关数据</div> -->
    
        <div style="text-align: center">
         <!-- 分页 -->
					<div style="text-align: right;text-align: bottom;">
						
						<span style="margin-top: 10px;">
						
							共有${pageModel.totals }条数据，共${pageModel.pageCount }页，
							当前是第${pageModel.currPage}/${pageModel.pageCount }页 </span> <br /> 
							
							
							<a href="${ctx}/index?currPage=1">首页</a>
						<%--如果当前页为第一页时，就没有上一页这个超链接显示 --%>
						<c:if test="${pageModel.currPage ==1}">
							<c:forEach begin="${pageModel.start}" end="${pageModel.end}"
								step="1" var="i">
								<c:if test="${pageModel.currPage == i}">
                        ${i}
                    </c:if>
								<c:if test="${pageModel.currPage != i}">
									<a href="${ctx}/index?currPage=${i}">${i}</a>
								</c:if>
							</c:forEach>
							<a href="${ctx}/index?currPage=${pageModel.currPage+1}">下一页</a>
						</c:if>

						<%--如果当前页不是第一页也不是最后一页，则有上一页和下一页这个超链接显示 --%>
						<c:if
							test="${pageModel.currPage > 1 && pageModel.currPage < pageModel.pageCount}">
							<a href="${ctx}/index?currPage=${pageModel.currPage-1}">上一页</a>
							<c:forEach begin="${pageModel.start}" end="${pageModel.end}"
								step="1" var="i">
								<c:if test="${pageModel.currPage == i}">
                        ${i}
                    </c:if>
								<c:if test="${pageModel.currPage != i}">
									<a href="${ctx}/index?currPage=${i}">${i}</a>
								</c:if>
							</c:forEach>
							<a href="${ctx}/index?currPage=${pageModel.currPage+1}">下一页</a>
						</c:if>

						<%-- 如果当前页是最后一页，则只有上一页这个超链接显示，下一页没有 --%>
						<c:if
							test="${pageModel.currPage == pageModel.pageCount && pageModel.currPage !=1}">
							<a href="${ctx}/index?currPage=${pageModel.currPage-1}">上一页</a>
							<c:forEach begin="${pageModel.start}" end="${pageModel.end}"
								step="1" var="i">
								<c:if test="${pageModel.currPage == i}">
                        ${i}
                    </c:if>
								<c:if test="${pageModel.currPage != i}">
									<a href="${ctx}/index?currPage=${i}">${i}</a>
								</c:if>
							</c:forEach>
						</c:if>
						<%--尾页 --%>
						<a href="${ctx}/index?currPage=${pageModel.pageCount}">尾页</a>
					</div>
        </div>

      </div>
    </div>
    <div class="layui-col-md4">
      <dl class="fly-panel fly-list-one">
        <dt class="fly-panel-title">本周热议</dt>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>


        <!-- 无数据时 -->
        <!--
        <div class="fly-none">没有相关数据</div>
        -->
      </dl>

      <div class="fly-panel">
        <div class="fly-panel-title">
          这里可作为广告区域
        </div>
        <div class="fly-panel-main">
          <a href="" target="_blank" class="fly-zanzhu" style="background-color: #393D49;">虚席以待</a>
        </div>
      </div>
      
      <div class="fly-panel fly-link">
        <h3 class="fly-panel-title">友情链接</h3>
        <dl class="fly-panel-main">
          <dd><a href="http://www.layui.com/" target="_blank">layui</a><dd>
          <dd><a href="http://layim.layui.com/" target="_blank">WebIM</a><dd>
          <dd><a href="http://layer.layui.com/" target="_blank">layer</a><dd>
          <dd><a href="http://www.layui.com/laydate/" target="_blank">layDate</a><dd>
          <dd><a href="mailto:xianxin@layui-inc.com?subject=%E7%94%B3%E8%AF%B7Fly%E7%A4%BE%E5%8C%BA%E5%8F%8B%E9%93%BE" class="fly-link">申请友链</a><dd>
        </dl>
      </div>

    </div>
  </div>
</div>

<div class="fly-footer">
  <p><a href="http://fly.layui.com/" target="_blank">Fly社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
  <p>
    <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
    <a href="http://www.layui.com/template/fly/" target="_blank">获取Fly社区模版</a>
    <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
  </p>
</div>

<script src="../../res/layui/layui.js"></script>
<script>
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: '../../res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: '../../res/mods/'
}).extend({
  fly: 'index'
}).use('fly');
</script>

</body>
</html>
</body>
</html>