<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>物品界面</title>
  
    <link rel="stylesheet" href="${ctx }/css2/reset.min.css">

  
      <link rel="stylesheet" href="${ctx }/css2/style.css">

  
</head>

<body>
	<div class="container" style = "background-image:url(${ctx}/images/${goods.goods_img}) ">
	  <a class="button" href="#popup"></a>
	  <div class="popup" id="popup">
	    <div class="popup-inner">
	      <div class="popup__photo">
	        <img src="${ctx }/images/11.png" alt="">
	      </div>
	      <div class="popup__text">
	        <h1>豆瓣「三刻」双肩包￥499.00</h1>
	        <p>颜色：碳黑</p>
	        <p>数量:1</p>
	        <br/>
	         <br/>
	          <br/>
	           <br/>
	            <br/>
	             <br/>
	              <br/>
	               <br/>
	        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1> 立即购买</h1>
	      </div>
	      <a class="popup__close" href="#">X</a>
	    </div>
	  </div>
	</div>
  
  

</body>

</html>
