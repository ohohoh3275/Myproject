<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


#galleryWrap {
	position:relative;
	margin-top:3%;
	margin-left:10%;
	width: 1500px;
	height: auto;
}

#galleryList {
 	float: left;
	border: 1px solid black;
	height: 300px;
	width: 300px;
}

#images{
	width:280px;height:280px;
}
#writeBtn{
	margin-left:70%;
	margin-bottom:20px;
}
</style>
</head>
<body>
	<div id="galleryWrap">
		<button id="writeBtn" onClick="location.href='/gallery/write'">글쓰기</button><br>
		<c:forEach items="${list }" var="list">
			<div id="galleryList">
				<img id="images" src="../resources/thumbnails/thumbnail_${list.fileName }">
				<div style="text-align:center;">${list.title }</div>
			</div>
		</c:forEach>
	</div>

</body>
</html>