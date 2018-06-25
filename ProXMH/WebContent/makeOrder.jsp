<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
  <meta charset="utf-8">
  <title>校美好 校园商店模块</title>
  <link rel="stylesheet" href="${ctx }/layui/css/layui.css">
  <link rel="stylesheet" href="${ctx }/css-shop/global.css">
  <link rel='stylesheet prefetch' href='${ctx }/css-shop/ionicons.min.css'>

  <link rel="stylesheet" href="${ctx }/css-shop/style.css">

  <link href="${ctx }/css-shop/admin.css" rel="stylesheet" type="text/css">
  <link href="${ctx }/css-shop/amazeui.css" rel="stylesheet" type="text/css">

  <link href="${ctx }/css-shop/personal.css" rel="stylesheet" type="text/css">

  <link href="${ctx }/css-shop/personal.css" rel="stylesheet" type="text/css">
  <link href="${ctx }/css-shop/addstyle.css" rel="stylesheet" type="text/css">
  <script src="${ctx }/js-shop/jquery.min.js" type="text/javascript"></script>
  <script src="${ctx }/js-shop/amazeui.js"></script>
<script type="text/javascript">
	function jump(){
		alert("兑换成功！")
		window.top.location="shopIndex.jsp"
	}
	function fail(){
		window.top.location="shopIndex.jsp"
	}
</script>
</head>
<body>
	<% 
		String a = (String)request.getParameter("goodsid");
	%>
	<!--<input type="submit" value="123" onclick="jump()" />
<form action="${ctx }/goods/order" method="post">
		用户编号:<input type="text" readonly="true" value=${lu.id } name="userid"/><br><br>
		商品编号:<input type="text" readonly="true" value=<%=a %> name="goodsid"/><br><br>
		剩余积分:<input type="text" readonly="true" value=${lu.score-100 } name="newscore"/><br><br>
		姓名:<input type="text" name="real_name"/><br><br>
		电话:<input type="text" name="phone"/><br><br>
		地址:<input type="text" name="address"/><br><br>
		<input type="submit" value="保存"/>
</form><br><br>-->

    <!-- 个人中心-------------------------------------------------------------------------------------------------------------------->
          <div class="center">
      <div class="col-main">
        <div class="main-wrap">

            <div class="am-modal am-modal-no-btn" id="doc-modal-1">

              <div class="add-dress">

                <!--标题 -->
                <div class="am-cf am-padding">
                  <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">确认订单</strong> </div>
                </div>
                <hr/>

                <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                  <form class="am-form am-form-horizontal" action="${ctx }/goods/order" method="post">

                    <div class="am-form-group">
                      <label for="user-name" class="am-form-label">用户编号：</label>
                      <div class="am-form-content">
                        <input type="text" readonly="true" value=${lu.id } name="userid"/>
                      </div>
                    </div>

                    <div class="am-form-group">
                      <label for="user-name" class="am-form-label">商品编号:</label>
                      <div class="am-form-content">
                      <input type="text" readonly="true" value=<%=a %> name="goodsid"/>
                      </div>
                    </div>

                    <div class="am-form-group">
                      <label for="user-name" class="am-form-label">剩余积分：</label>
                      <div class="am-form-content">
                      <input type="text" readonly="true" value=${lu.score-100 } name="newscore"/>
                      </div>
                    </div>

                    <div class="am-form-group">
                      <label for="user-name" class="am-form-label">姓名:</label>
                      <div class="am-form-content">
                     <input type="text" name="real_name"/>
                      </div>
                    </div>

                    <div class="am-form-group">
                      <label for="user-name" class="am-form-label">电话:</label>
                      <div class="am-form-content">
                      <input type="text" name="phone"/>
                      </div>
                    </div>

                   
                    <div class="am-form-group">
                      <label for="user-intro" class="am-form-label">详细地址：</label>
                      <div class="am-form-content">
                        <textarea type="text" name="address" rows="5" id="user-intro" placeholder="输入详细地址"></textarea>
                        <small>100字以内写出你的详细地址...</small>
                      </div>
                    </div>

                    <div class="am-form-group">
                      <div class="am-u-sm-9 am-u-sm-push-3">
                        <input type="submit" value="保存" class="am-btn am-btn-danger" onclick="jump()"/>
                        <a href="javascript: void(0)" class="am-close am-btn am-btn-danger" onclick="fail()">取消</a>
                      </div>
                    </div>
                  </form>
                </div>

              </div>

            </div>

          </div>
          </div>
</div>
          <script type="text/javascript">
            $(document).ready(function() {              
              $(".new-option-r").click(function() {
                $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");
              });
              
              var $ww = $(window).width();
              if($ww>640) {
                $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
              }
              
            })
          </script>
 <!------------------------------------------------------------------------------------------------------------------------------------------>  
 
</body>
</html>