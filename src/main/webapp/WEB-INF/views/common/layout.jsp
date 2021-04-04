<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><tiles:insertAttribute name="title" /></title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto+Mono&display=swap');
</style>
<style>
		body{
			font-family: 'Roboto Mono', monospace;
		}
		#header1{
			clear:both;
			width:100%;
			height:100px;
			background-color: rgb(240, 213, 190);
		}
		#header2{
			clear:both;
			width:100%;
			height:70px;
			background-color: rgb(247, 183, 65);
		}
		#content{
		 	clear:both;
			width:100%;
			height:700px;
			background-color: white;
		}
		#footer{
			clear:both;
			width:100%;
			height:100px;
			background-color: darkcyan;
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
	<div id="content">
		<tiles:insertAttribute name="content"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</body>
</html>