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
div {
	float: left;
	border: 1px solid black;
}

#wrap {
	position: relative;
	margin-right: auto;
	margin-left: auto;
	text-align: center;
	width: 1300px;
	height: auto;
}

#content {
	margin: 10px;
	width: 300px;
	height: 300px;
	width: 300px;
}
</style>
</head>
<body>

	<a href="/gallery/write">글쓰기</a>
	<br>
	<div id="wrap">
		<c:forEach items="${list }" var="list">
			<div id="content">
				<img src="/001MyProject/src/main/webapp/WEB-INF/resources/thumbnails/thumbnail_
				${list.fileName }" style="width:200px;height:200px;">
			</div>
		</c:forEach>
	</div>

</body>
</html>