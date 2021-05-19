<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>

<style>
#joinWrap {
	position: relative;
	text-align: center;
	margin-top:5%;
	margin-bottom:10%;
	font-size:20px;
	font-family: 'Nanum Gothic Coding', monospace;
	
}

input{
	margin:15px;
}
</style>

</head>
<body>
	<div id="joinWrap">
		<form action="/member/join" method="post">
			아이디 : <input type="text" id="userId" name="userId" /> <button type="button" name="check_id">아이디 확인</button> <br/><br/>
			비밀번호 : <input type="password" id="userPass" name="userPass" /><br>
			비밀번호 확인 : <input type="password" id="userPass2" name="userPass2" /><br>
			전화번호 : <input type="text" id="userPhoneNumber" name="userPhoneNumber" /><br><br>
			이메일 : <input type="email" id="userEmail" name="userEmail" /><br>
			
			<button type="submit" id="submit">회원가입</button>
		</form>
	</div>
</body>
</html>