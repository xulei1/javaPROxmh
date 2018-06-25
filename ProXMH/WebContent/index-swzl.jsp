<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <%@ taglib  uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
<meta http-equiv="imagetoolbar" content="no" />
<link href="./css/style.css" rel="stylesheet" type="text/css" media="all" />
 <link rel="stylesheet" href="./res/layui/css/layui.css">
  <link rel="stylesheet" href="./res/css/global.css">
<script type="text/javascript" src="scripts-swzl/jquery-1.4.1.min.js"></script>
<script type="text/javascript" src="scripts-swzl/jquery.slidepanel.setup.js"></script>
<style type="text/css">
	
	.link{text-align: right;line-height: 20px;padding-right: 40px;}
	
	.ui-dialog{ 
		width: 380px;height: auto;display: none;
		position: absolute;z-index: 9000;
		top: 0px;left: 0px;
		border: 1px solid #D5D5D5;background: #fff;
	}

	.ui-dialog a{text-decoration: none;position:absolute;}

	.ui-dialog-title{
		height: 48px;line-height: 48px; padding:0px 20px;color: #535353;font-size: 16px;
		border-bottom: 1px solid #efefef;background: #f5f5f5;
		cursor: move;
		user-select:none;
	}
	.ui-dialog-closebutton{
		width: 16px;height: 16px;display: block;
		position: absolute;top: 12px;right: 20px;
		background: url(images/close_def.png) no-repeat;cursor: pointer;

	}
	.ui-dialog-closebutton:hover{background:url(images/close_hov.png);}

	.ui-dialog-content{
		padding: 15px 20px;
	}
	
	.ui-mask{ 
		width: 100%;height:100%;
		position: absolute;top: 0px;height: 0px;z-index: 8000;
		opacity:0.4; filter: Alpha(opacity=40);
	}
</style> 
<!-- 弹窗控制 -->
 <script type="text/javascript">
	var dialogInstace , onMoveStartId , mousePos = {x:0,y:0};	//	用于记录当前可拖拽的对象
	// var zIndex = 9000;
	//	获取元素对象	
	function g(id){return document.getElementById(id);}

	//	自动居中元素（el = Element）
	function autoCenter( el ){
		var bodyW = document.documentElement.clientWidth;
		var bodyH = document.documentElement.clientHeight;

		var elW = el.offsetWidth;
		var elH = el.offsetHeight;

		el.style.left = (bodyW-elW)/2 + 'px';
		el.style.top = (bodyH-elH)/2 + 'px';
		
	}

	//	自动扩展元素到全部显示区域
	function fillToBody( el ){
		el.style.width  = document.documentElement.clientWidth  +'px';
		el.style.height = document.documentElement.clientHeight + 'px';
	}

	//	Dialog实例化的方法
	function Dialog( dragId , moveId ){

		var instace = {} ;

		instace.dragElement  = g(dragId);	//	允许执行 拖拽操作 的元素
		instace.moveElement  = g(moveId);	//	拖拽操作时，移动的元素

		instace.mouseOffsetLeft = 0;			//	拖拽操作时，移动元素的起始 X 点
		instace.mouseOffsetTop = 0;			//	拖拽操作时，移动元素的起始 Y 点

		instace.dragElement.addEventListener('mousedown',function(e){

			var e = e || window.event;

			dialogInstace = instace;
			instace.mouseOffsetLeft = e.pageX - instace.moveElement.offsetLeft ;
			instace.mouseOffsetTop  = e.pageY - instace.moveElement.offsetTop ;
			
			onMoveStartId = setInterval(onMoveStart,10);
			return false;
			// instace.moveElement.style.zIndex = zIndex ++;
		})

		return instace;
	}

	//	在页面中侦听 鼠标弹起事件
	document.onmouseup = function(e){
		dialogInstace = false;
		clearInterval(onMoveStartId);
	}
	document.onmousemove = function( e ){
		var e = window.event || e;
		mousePos.x = e.clientX;
		mousePos.y = e.clientY;
		

		e.stopPropagation && e.stopPropagation();
		e.cancelBubble = true;
		e = this.originalEvent;
        e && ( e.preventDefault ? e.preventDefault() : e.returnValue = false );

        document.body.style.MozUserSelect = 'none';
	}	

	function onMoveStart(){


		var instace = dialogInstace;
	    if (instace) {	    	
	    	var maxX = document.documentElement.clientWidth -  instace.moveElement.offsetWidth;
	    	var maxY = document.documentElement.clientHeight - instace.moveElement.offsetHeight 
			instace.moveElement.style.left = Math.min( Math.max( ( mousePos.x - instace.mouseOffsetLeft) , 0 ) , maxX) + "px";
			instace.moveElement.style.top  = Math.min( Math.max( ( mousePos.y - instace.mouseOffsetTop ) , 0 ) , maxY) + "px";
	    }

	}


	


	//	重新调整对话框的位置和遮罩，并且展现
	function showDialog(str){
		
		g('dialogMove').style.display = 'block';
		g('mask').style.display = 'block';
		autoCenter( g('dialogMove') );
		fillToBody( g('mask') );
		document.getElementById('dianhua').innerHTML = str;
	}

	//	关闭对话框
	function hideDialog(){
		g('dialogMove').style.display = 'none';
		g('mask').style.display = 'none';
	}

	//	侦听浏览器窗口大小变化
	window.onresize = showDialog;

	Dialog('dialogDrag','dialogMove');
	
	//默认设置弹出层启动
	//showDialog();

</script>
<script type="text/javascript">
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
function loadXMLDoc(type)
{
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("mydiv12138").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("GET","getall2.do?str="+type,true);
	xmlhttp.send();
}
function Pageto(pageno)
{
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("mydiv12138").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("GET","pageto.do?pageno="+pageno,true);
	xmlhttp.send();
}
function xiajia(id)
{
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("ajax_fatie").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("GET","xaijia.do?id="+id,true);
	xmlhttp.send();
}
function fatie()
{
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("ajax_fatie").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("POST","ajax_fatie.jsp",true);
	xmlhttp.send();
}
function fabu()
{
	xmlhttp.onreadystatechange=function()
	  {
	  if (xmlhttp.readyState==4 && xmlhttp.status==200)
	    {
	    document.getElementById("ajax_fatie").innerHTML=xmlhttp.responseText;
	    }
	  }
	xmlhttp.open("POST","myf.do?",true);
	xmlhttp.send();
}

</script>
</head>
<body>
          <!-- 弹窗 -->
           <div class="ui-mask" id="mask" onselectstart="return false"></div>

            <div class="ui-dialog" id="dialogMove" onselectstart='return false;'>
	        <div class="ui-dialog-title" id="dialogDrag"  onselectstart="return false;" >		
		             联系方式
		       <a class="ui-dialog-closebutton" href="javascript:hideDialog();"></a>
	        </div>
	        <div class="ui-dialog-content" id="dianhua">
		    <p>没有</p>	
	        </div>
            </div>   
<div class="fly-header layui-bg-black">
  <div class="layui-container">
    <a class="fly-logo" href="index.html">
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
      

    </ul>
  </div>
</div>

<div class="fly-panel fly-column">
  <div class="layui-container">
    <ul class="layui-clear">
      <li class="layui-hide-xs layui-this"><h3><a href="/">校美好 校园商城</a></h3></li> 
      
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

    <div class="wrap">
      <!-- 个人中心-->
        <div class="one sidebar">
            <div class="widget">
             <img alt="" src="./images/touxian.jpg" class="myimg">   
             <ul class="mine">
             <li><a href="#">张三</a></li>
             <li><a href="#">这个人很懒，啥都没写</a></li>
             <li><a href="#">我的足迹</a></li>
             <li><a href="#" onclick="fatie()">我要发布</a></li>
             <li><a href="#" onclick="fabu()">我的发布</a></li>
             </ul>            
            </div>
        </div>
        <div class="content">
            <!-- 失物展示 -->
            <!-- 分示按钮 -->
            <div id="ajax_fatie">
            <div class="buttona">
            <button class="button1" onclick="loadXMLDoc('shiwu')">失物</button>
            <button class="button1" onclick="loadXMLDoc('zhaoling')">招领</button>
            </div >
            <div id="mydiv12138">
            <c:forEach items="${sessionScope.tieList}" var="tie" >
            <div class="grids">
                <h2> ${tie.t_data}</h2>
                <div class="grid">
                    <div class="preview">
                        <a href="#"><img src="/tomcatpath/${tie.t_image}" alt=""></a>
                        <div class="data">
                            <h3><a href="#">赏金:${tie.money}</a></h3>
                        </div>
                    </div>
                </div>
                <div class="grid">
                    <p>${tie.t_txt}<p>
                </div>
                 <div class="grid">
                  <br>
               </div>
                <div class="clearFloat"></div>
            </div>
            <div class="more">
                <a   href="javascript:showDialog('${tie.tel}');"  >联系我</a>
            </div>
            </c:forEach>
          
              <div class="more">
                <ul>
                	<li><a href="#" onclick="Pageto(0)">&laquo;</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo})">${sessionScope.pageNo+1}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo+1})">${sessionScope.pageNo+2}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo+2})">${sessionScope.pageNo+3}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageNo+3})">${sessionScope.pageNo+4}</a></li>
                	<li><a href="#" onclick="Pageto(${sessionScope.pageCount-1})">&raquo;</a></li>
                </ul>
            </div>
            </div>
            </div>
   
            </div>
         
          <!-- 分类 -->
          <div class="right">
            <div class="leibie">
            <div class="leibie1">
            <ul>
                   <li><a href="gettype.do?type=fan" >|饭卡</a></li>
                   <li> <a href="gettype.do?type=shu" >|书</a></li>
                    <li><a href="gettype.do?type=xue" >|学习用品</a></li>
                    <li>  <a href="gettype.do?type=qian" >|钱包</a></li>
                    <li> <a href="gettype.do?type=zi" >|自行车</a></li>
                     <li> <a href="gettype.do?type=yin" >|银行卡</a></li>
                     <li> <a href="gettype.do?type=qi">|其他</a>  </li>
                </ul>      
             </div>  
              <div class="tonggao">
              <ul>
                    <h3><a href="maopao.do?">悬赏通告</a></h3>
                    <hr>
                    
                    
                    <c:forEach items="${sessionScope.moneyList}" var="money" begin="0" end="7">
                     <li><a href="#" >${money.t_txt}(${money.money})</a></li>        
                    </c:forEach>
                  
                                          
                </ul>      
             </div>  
             </div>                                         
        </div>
          
          <footer>
            <div class="wrap">
                <div class="about">
                    <div class="title">About Us</div>
                    <p>Faworki bonbon cupcake apple pie halvah. Topping gummies faworki sweet roll drag锟絜 chocolate bar tootsie roll gummies marzipan. Chocolate toffee marzipan marzipan cookie bonbon. Danish candy topping marshmallow faworki tiramisu bear claw applicake cupcake.<a href="index.html">read more &raquo;</a></p>
                </div>
                <ul>
                    <li class="title">Menu Name</li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Downloads</a></li>
                    <li><a href="#">Uploads</a></li>
                    <li><a href="feedback.html">Contact</a></li>
                    <li><a href="#">Support</a></li>
                    <li><a href="#">About</a></li>
                </ul>
                <ul>
                    <li class="title">Menu Name</li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Downloads</a></li>
                    <li><a href="#">Uploads</a></li>
                    <li><a href="feedback.html">Contact</a></li>
                    <li><a href="#">Support</a></li>
                    <li><a href="#">About</a></li>
                </ul>
                <ul>
                    <li class="title">Menu Name</li>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Downloads</a></li>
                    <li><a href="#">Uploads</a></li>
                    <li><a href="feedback.html">Contact</a></li>
                    <li><a href="#">Support</a></li>
                    <li><a href="#">About</a></li>
                </ul>
                <div class="clearFloat"></div>
                <div class="copy"><p>&copy; 2012 All Rights Reserved | Designed by - <a href="http://w3layouts.com">W3Layouts.com</a></p></div>
            </div>
    </footer>

    <script type="text/javascript">

	var dialogInstace , onMoveStartId , mousePos = {x:0,y:0};	//	用于记录当前可拖拽的对象
	
	// var zIndex = 9000;

	//	获取元素对象	
	function g(id){return document.getElementById(id);}

	//	自动居中元素（el = Element）
	function autoCenter( el ){
		var bodyW = document.documentElement.clientWidth;
		var bodyH = document.documentElement.clientHeight;

		var elW = el.offsetWidth;
		var elH = el.offsetHeight;

		el.style.left = (bodyW-elW)/2 + 'px';
		el.style.top = (bodyH-elH)/2 + 'px';
		
	}

	//	自动扩展元素到全部显示区域
	function fillToBody( el ){
		el.style.width  = document.documentElement.clientWidth  +'px';
		el.style.height = document.documentElement.clientHeight + 'px';
	}

	//	Dialog实例化的方法
	function Dialog( dragId , moveId ){

		var instace = {} ;

		instace.dragElement  = g(dragId);	//	允许执行 拖拽操作 的元素
		instace.moveElement  = g(moveId);	//	拖拽操作时，移动的元素

		instace.mouseOffsetLeft = 0;			//	拖拽操作时，移动元素的起始 X 点
		instace.mouseOffsetTop = 0;			//	拖拽操作时，移动元素的起始 Y 点

		instace.dragElement.addEventListener('mousedown',function(e){

			var e = e || window.event;

			dialogInstace = instace;
			instace.mouseOffsetLeft = e.pageX - instace.moveElement.offsetLeft ;
			instace.mouseOffsetTop  = e.pageY - instace.moveElement.offsetTop ;
			
			onMoveStartId = setInterval(onMoveStart,10);
			return false;
			// instace.moveElement.style.zIndex = zIndex ++;
		})

		return instace;
	}

	//	在页面中侦听 鼠标弹起事件
	document.onmouseup = function(e){
		dialogInstace = false;
		clearInterval(onMoveStartId);
	}
	document.onmousemove = function( e ){
		var e = window.event || e;
		mousePos.x = e.clientX;
		mousePos.y = e.clientY;
		

		e.stopPropagation && e.stopPropagation();
		e.cancelBubble = true;
		e = this.originalEvent;
        e && ( e.preventDefault ? e.preventDefault() : e.returnValue = false );

        document.body.style.MozUserSelect = 'none';
	}	

	function onMoveStart(){


		var instace = dialogInstace;
	    if (instace) {	    	
	    	var maxX = document.documentElement.clientWidth -  instace.moveElement.offsetWidth;
	    	var maxY = document.documentElement.clientHeight - instace.moveElement.offsetHeight 
			instace.moveElement.style.left = Math.min( Math.max( ( mousePos.x - instace.mouseOffsetLeft) , 0 ) , maxX) + "px";
			instace.moveElement.style.top  = Math.min( Math.max( ( mousePos.y - instace.mouseOffsetTop ) , 0 ) , maxY) + "px";
	    }

	}


	


	//	重新调整对话框的位置和遮罩，并且展现
	function showDialog(str){
		
		g('dialogMove').style.display = 'block';
		g('mask').style.display = 'block';
		autoCenter( g('dialogMove') );
		fillToBody( g('mask') );
		document.getElementById('dianhua').innerHTML = str;
	}

	//	关闭对话框
	function hideDialog(){
		g('dialogMove').style.display = 'none';
		g('mask').style.display = 'none';
	}

	//	侦听浏览器窗口大小变化
	window.onresize = showDialog;

	Dialog('dialogDrag','dialogMove');
	
	//默认设置弹出层启动
	//showDialog();

</script>
    
</body>
</html>