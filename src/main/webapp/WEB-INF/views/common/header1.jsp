<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap');
</style>
<style>
	#right{
	    margin-left:80%;
	}
	
	#login, #join{
		margin-top:40px;
	    display:inline-block;
	    width:auto; height:auto;
	    background-color:yellow;
	    font-size: 20px;
	   
	}
		
</style>

</head>
<body>
<div id="wrap">
	<div id="right">
        <div id="login_needed">
            <span id="login">
                <a href="/member/login">LOGIN</a>
            </span>&nbsp;&nbsp;
            <span id="join">
                <a href="/member/join">JOIN</a>
            </span>
        </div>
        <div id="login_ok">
        	로그인 중일때 메뉴-회원정보 수정 로그아웃
        </div>
    
    </div>
</div>
</body>
</html>