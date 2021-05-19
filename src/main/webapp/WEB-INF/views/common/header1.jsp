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
	    margin-left:70%;
	}
	
	.headerBtn{
		margin-top:40px;
	    display:inline-block;
	    width:75px; height:25px;
	    background-color:rgb(255,216,216);
	    font-size: 15px;
	   
	}
		
</style>
<%
	session = request.getSession();
	
%>

</head>
<body>
<div id="wrap">
	<div id="right">
	<%
	if(session.getAttribute("member")==null){
	%>
        <div>
	        <button id="login" class="headerBtn" onClick="location.href='../member/login'">LOGIN</button>
	   		&nbsp;
	        <button id="join" class="headerBtn" onClick="location.href='../member/join'">JOIN</button>
        </div>
    <% 
    }else{
    %>
    	<div>
    		<button type="submit" id="logout" class="headerBtn" onClick="location.href='member/logout'">LOGOUT</button>&nbsp;
    		<button id="회원정보수정" class="headerBtn" >회원정보수정</button>
    	</div>
   	<%
    }
   	%>
    </div>
</div>
</body>
</html>