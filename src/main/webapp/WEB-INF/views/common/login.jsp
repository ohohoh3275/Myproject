<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/member/login" method="post">
	id : <input type="text" id="userId" name="userId"/>
	pw : <input type="password" id="userPass" name="userPass"/>
	<button type="submit">로그인하기</button>
</form>
</body>
</html>