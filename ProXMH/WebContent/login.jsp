<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${ctx }/springmvc/user/login" method="post">
		<input type="text" name="user_name" /><br>
		<input type="text" name="user_password" />${erroinfo}<br>
		<input type="submit" value="登陆" />
	</form>

</body>
</html>