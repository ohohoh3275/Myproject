<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import="kr.co.vo.MemberVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&display=swap');
</style>
<style>
		body{
			font-family: 'Roboto Mono', monospace;
		}
		
		button{
			width:100px; height:45px;
			background-color:rgb(209,178,255);
			border:none;
			border-radius: 12px;
			font-size:20px;
		}
		#header1{
			width:100%;
			height:100px;
			background-color: rgb(250, 244, 192);
		}
		#header2{
			width:100%;
			height:70px;
			background-color: rgb(250, 237, 125);
		}
		#contents{
			width:100%;
			height:auto;
			background-color: white;
		}
		#footer{
			clear:both;
			width:100%;
			height:100px;
			background-color: rgb(216 , 216,216);
		}
</style>
</head>
<body>
	<div id="header1">
		<tiles:insertAttribute name="header1"/>
	</div>
	<div id="header2">
		<tiles:insertAttribute name="header2"/>
	</div>
	<div id="contents">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>