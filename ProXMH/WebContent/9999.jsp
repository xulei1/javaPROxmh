<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>实验网页</title>
</head>
<body>
	<form action="user/addu" method="post">
			账号<input type="text" name="UserName" value="${u.UserName }" ><br>
			密码<input type="password" name="pawd" value="${u.pawd }"><br>
			<input type="submit" value="登录">
		</form>
</body>
</html>