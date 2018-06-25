<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>物品查询功能</title>
</head>
<body>
	<a href="${ctx }/goods/listall">list all</a>
	<c:forEach items="${list }" var="c">
		${c.goods_name }
	</c:forEach>
	1.商品分类：
	<a href="${ctx }/goods/listbytype?type=1">食品</a>
	<a href="${ctx }/goods/listbytype?type=2">服饰</a>
	<c:forEach items="${list }" var="c">
		${c.goods_name }
	</c:forEach>
	<br><br>
	
	2.筛选功能
	<form action="${ctx }/goods/listbyprice" method="post">
		输入价格区间<br>
		最小值：<input type="text" name="min"/><br><br>
		最大值：<input type="text" name="max"/><br><br>
		<input type="submit" value="查询"/>
	</form>
	<c:forEach items="${list1 }" var="c">
		${c.goods_name }
	</c:forEach>
	<br><br>
	
	3.模糊查询功能
	<form action="${ctx }/goods/listbyname" method="post">
		商品名：<input type="text" name="name"/><br><br>
		<input type="submit" value="查询"/>
	</form>
	<c:forEach items="${list2 }" var="c">
		${c.goods_name }
	</c:forEach>
</body>
</html>