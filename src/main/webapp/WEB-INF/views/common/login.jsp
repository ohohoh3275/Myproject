<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#loginWrap {
	position: relative;
	text-align: center;
	margin-top:5%;
	margin-bottom:10%;
	font-size:20px;
	font-family: 'Nanum Gothic Coding', monospace;
	
}
</style>
</head>
<body>
<div id="loginWrap">
<form action="/member/login" method="post">
	아이디 : <input type="text" id="userId" name="userId"/><br/><br/>
	패스워드 : <input type="password" id="userPass" name="userPass"/><br/><br/>
	<button type="submit">로그인</button>
</form>
</div>
</body>
</html>