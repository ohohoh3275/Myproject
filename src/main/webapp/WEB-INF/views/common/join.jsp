<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/member/join" method="post">
	아이디 : <input type="text" id="userId" name="userId"/><br>
	패스워드 : <input type="password" id="userPass" name="userPass"/><br>
	이름 : <input type="text" id="userName" name="userName"/><br>
	<button type="submit" id="submit">회원가입</button>
</form>
</body>
</html>