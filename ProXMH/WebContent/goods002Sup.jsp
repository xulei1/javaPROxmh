<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>物品界面</title>
  
    <link rel="stylesheet" href="${ctx }/css-shop/reset.min.css">

  
    <link rel="stylesheet" href="${ctx }/css-shop/style.css">

  
	<script type="text/javascript" src="${ctx }/js-shop/jquery.js"></script>
	<script type="text/javascript">
		function noScore(){
			alert("您的积分不足");
		}
	</script>
  	<style type="text/css">
    div.container {background-image: url(images-shop/linenotebook.jpg);
                  background-size: 100% 720px;
                }
                a:link {
                  text-decoration: none;
                    
                }
                a:visited {
                  text-decoration: none;
                    
                }
                a:hover {
                  text-decoration: none;
                    color: black;  
                }
                a:active {
                  text-decoration: none;
                    
                }
              </style>

</head>

<body>

  <div class="container" >
    <a class="button" href="#popup" > <section>
            <div class="holder col-4">
              <div class="demo"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></div>
            </div>
          </section></a>
    <div class="popup" id="popup">
      <div class="popup-inner">
        <div class="popup__photo">
          <img src="${ctx }/images-shop/linenotebook3.jpg" alt="">
        </div>
        <div class="popup__text">
          <h1>苔绿 横线 手账系列</h1>
          <p>积分：100</p>
          <br>
          <br>
          <section>
            <div class="holder col-4">
            	<c:if test="${lu.score>=100}">
              		<div class="deo"><a href="${ctx }/makeOrder.jsp?userid=${lu.id}&goodsid=002"><button class="rkmd-btn btn-orange ripple-effect"><i class="material-icons"></i>立即兑换</button></a></div>
              	</c:if>
              	<c:if test="${lu.score<100}">
              		<div class="deo">
              				<input class="rkmd-btn btn-orange ripple-effect" type="button" onclick="noScore()" value="立即兑换"/>
              		</div>
              	</c:if>
            </div>
          </section>
        </div>
        <a class="popup__close" href="#">X</a>
      </div>
    </div>
  </div>  
</body>
</html>