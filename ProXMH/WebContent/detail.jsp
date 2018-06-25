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
  <link rel="stylesheet" href="./scripts/layui.js">
  <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="${ctx}/scripts/jquery-1.4.1.min.js"></script>
</head>
<body>

<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="/">
      <img src="./res/images/logo.png" alt="layui">
    </a>
    
   <ul class="layui-nav fly-nav-user">
      
      <!-- 未登入的状态 -->
      <!--
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
       -->
      
      <!-- 登入后的状态 -->
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
    </ul>
  </div>
</div>
<div class="layui-hide-xs">
  <div class="fly-panel fly-column">
    <div class="layui-container">
      <ul class="layui-clear">
        <li class="layui-hide-xs"><a href="${ctx }/index">首页</a></li> 
        <li class="layui-this"><a href="">提问</a></li> 
        <li><a href="">分享<span class="layui-badge-dot"></span></a></li> 
        <li><a href="">讨论</a></li> 
        <li><a href="">建议</a></li> 
        <li><a href="">公告</a></li> 
        <li><a href="">动态</a></li> 
        <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><span class="fly-mid"></span></li> 
        
        <!-- 用户登入后显示 -->
        <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="../user/index.html">我发表的贴</a></li> 
        <li class="layui-hide-xs layui-hide-sm layui-show-md-inline-block"><a href="../user/index.html#collection">我收藏的贴</a></li> 
      </ul> 
      
      <div class="fly-column-right layui-hide-xs"> 
        <span class="fly-search"><i class="layui-icon"></i></span> 
        <a href="add.html" class="layui-btn">发表新帖</a> 
      </div> 
      <div class="layui-hide-sm layui-show-xs-block" style="margin-top: -10px; padding-bottom: 10px; text-align: center;"> 
        <a href="add.html" class="layui-btn">发表新帖</a> 
      </div> 
    </div>
  </div>
</div>

<div class="layui-container">
  <div class="layui-row layui-col-space15">
    <div class="layui-col-md8 content detail">
      <div class="fly-panel detail-box">
        <h1>${topic.title }</h1>
        <div class="fly-detail-info">
          
          
          <div class="fly-admin-box" data-id="123">
            <button type="button" class="layui-btn layui-btn-xs jie-admin"  onclick="delTopic(${topic.topicid})">删除此贴</button>
            
            <button type="button" class="layui-btn layui-btn-xs jie-admin"  onclick="CollectTopic(${topic.topicid})">收藏此贴</button>
            <!-- <span class="layui-btn layui-btn-xs jie-admin" type="set" field="stick" rank="0" style="background-color:#ccc;">取消置顶</span> -->
            
            
          </div>
          <span class="fly-list-nums"> <i class="iconfont" title="回答">&#xe60c;</i > 
            <a href="#comment" id="${topic.topicid }">${topic.replyCount }</a>
           
          </span>
        </div>
        <div class="detail-about">
          <a class="fly-avatar" href="../user/home.html">
            <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt="贤心">
          </a>
          <div class="fly-detail-user">
            <a href="../user/home.html" class="fly-link">
              <cite>${topic.user.nickname }</cite>
             
              
            </a>
            <span>${topic.send_time }</span>
          </div>
          <div class="detail-hits" id="LAY_jieAdmin" data-id="123">
            
            <span class="layui-btn layui-btn-xs jie-admin" type="edit"></span>
          </div>
        </div>
        <div class="detail-body photos">
          <p>
            ${topic.content }
          </p>
       
        </div>
      </div>

      <div class="fly-panel detail-box" id="flyReply">
        <fieldset class="layui-elem-field layui-field-title" style="text-align: center;">
          <legend>回帖</legend>
        </fieldset>

        <ul class="jieda" id="jieda">
     
          <c:forEach var="topicReply" items="${topic.topicReply}">
          <li data-id="111" id="2${topicReply.reply_id}">
            <a name="item-1111111111"></a>
            <div class="detail-about detail-about-reply">
              <a class="fly-avatar" href="">
                <img src="https://tva1.sinaimg.cn/crop.0.0.118.118.180/5db11ff4gw1e77d3nqrv8j203b03cweg.jpg" alt=" ">
              </a>
              <div class="fly-detail-user">
                <a href="" class="fly-link">
                  <cite>${topicReply.user.nickname }</cite>       
                </a>
              </div>
              <div class="detail-hits">
                <span>${topicReply.reply_time }</span>
              </div>
            </div>
            <div class="detail-body jieda-body photos">
              <p>${topicReply.reply_content }</p>
            </div>
            <div class="jieda-reply">
              <span class="666">
              
                <a   onclick="addLike(${topicReply.reply_id})" ><img src="./images/heart.jpg" ></a>
                <em id="1${topicReply.reply_id}">${topicReply.reply_like }</em>
              </span>
              <span type="reply">
                <i class="iconfont icon-svgmoban53"></i>
                回复
              </span>
              <div class="jieda-admin">
               
                
                <span  onclick="delTopicReply(${topicReply.reply_id})">删除</span>
              </div>
            </div>
          </li>
          </c:forEach>
          <!-- 无数据时 -->
          <!-- <li class="fly-none">消灭零回复</li> -->
        </ul>
        
        <div class="layui-form layui-form-pane">
          <form action="${ctx }/addTopicReply" method="post">
            <div class="layui-form-item layui-form-text">
              <a name="comment"></a>
              <div class="layui-input-block">
              <input type="hidden" name="topicid" value="${topic.topicid}">
                <textarea id="L_content" name="reply_content" required lay-verify="required" placeholder="请输入内容"  class="layui-textarea fly-editor" style="height: 150px;"></textarea>
              </div>
            </div>
            <div class="layui-form-item">
              
              <button class="layui-btn" >提交回复</button>
            </div>
          </form>
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
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
        <dd>
          <a href="">基于 layui 的极简社区页面模版</a>
          <span><i class="iconfont icon-pinglun1"></i> 16</span>
        </dd>
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
          <a href="http://layim.layui.com/?from=fly" target="_blank" class="fly-zanzhu" time-limit="2017.09.25-2099.01.01" style="background-color: #5FB878;">LayIM 3.0 - layui 旗舰之作</a>
        </div>
      </div>

      <div class="fly-panel" style="padding: 20px 0; text-align: center;">
        <img src="./images/weixin.jpg" style="max-width: 100%;" alt="layui">
        <p style="position: relative; color: #666;">微信扫码关注 校美好 公众号</p>
      </div>

    </div>
  </div>
</div>

<div class="fly-footer">
  <p><a href="http://fly.layui.com/" target="_blank">校美好社区</a> 2017 &copy; <a href="http://www.layui.com/" target="_blank">layui.com 出品</a></p>
  <p>
    <a href="http://fly.layui.com/jie/3147/" target="_blank">付费计划</a>
    <a href="http://www.layui.com/template/fly/" target="_blank">获取前台</a>
    <a href="http://fly.layui.com/jie/2461/" target="_blank">微信公众号</a>
  </p>
</div>

<script src="./res/layui/layui.js"></script>
<script>
layui.cache.page = 'jie';
layui.cache.user = {
  username: '游客'
  ,uid: -1
  ,avatar: './res/images/avatar/00.jpg'
  ,experience: 83
  ,sex: '男'
};
layui.config({
  version: "3.0.0"
  ,base: './res/mods/'
}).extend({
  fly: 'index'
}).use(['fly', 'face'], function(){
  var $ = layui.$
  ,fly = layui.fly;
  //如果你是采用模版自带的编辑器，你需要开启以下语句来解析。
  /*
  $('.detail-body').each(function(){
    var othis = $(this), html = othis.html();
    othis.html(fly.content(html));
  });
  */
});
</script>
<script type="text/javascript">
var topicid =${topic.topicid};

//点赞
function addLike(value){
	 var topicReplyId=value;
	 
	 $.ajax({
		    async:true, 
	        type: "POST",  
	        url: "${ctx}/addLike",//注意路径  
	        data:{topicReplyId:topicReplyId},  
	        dataType:"json", 					      
	        success:function(data){ 
	        	     alert("点赞成功");
	        	     document.getElementById("1"+topicReplyId).innerText++;
	            },					        
	        error:function(data){
	        	alert("点赞失败");
	        }					       
	    });  
	
}


function delTopic(c){	
	var topicid=c;
	/* var userid;
	userid = "${user.userid}";	
	if(userid=="${topic.user.userid}"){	 */			    		
	 $.ajax({
		    async:true, 
	        type: "POST",  
	        url: "${ctx}/deleteTopic",//注意路径  
	        data:{topicid:topicid},  
	        dataType:"json", 					      
	        success:function(data){ 				        						           		            
	            	 alert("删除成功");
	            	 window.location.href="${ctx}/index.do";
	            },					        
	        error:function(data){
	        	alert("删除失败");
	        }					       
	    });
	/* }else{
		 alert("您没有删除权限");
	 } */
}	

function CollectTopic(c){	
	var topicid=c;
	/* var userid;
	userid = "${user.userid}";	
	if(userid=="${topic.user.userid}"){	 */			    		
	 $.ajax({
		    async:true, 
	        type: "POST",  
	        url: "${ctx}/CollectTopic",//注意路径  
	        data:{topicid:topicid},  
	        dataType:"json", 					      
	        success:function(data){ 				        						           		            
	            	 alert("收藏成功");
	            	 
	            },					        
	        error:function(data){
	        	alert("收藏失败");
	        }					       
	    });
	/* }else{
		 alert("您没有删除权限");
	 } */
}	 
	 //删除话题回复
	 function delTopicReply(value){
	 var topicReplyId=value;
		 
		 $.ajax({
			    async:true, 
		        type: "POST",  
		        url: "${ctx}/deleteTopicReply",//注意路径  
		        data:{topicReplyId:topicReplyId},  
		        dataType:"json", 					      
		        success:function(data){ 				        						           		            
		            	 alert("删除成功");
		            	 //window.location.href="${ctx}/detail.do";	
		            	 document.getElementById("2"+topicReplyId).remove();
		            	 document.getElementById(topicid).innerText--;
		            },					        
		        error:function(data){
		        	alert("删除失败");
		        }					       
		    });  	
	
}	
</script>
</body>

</html>