<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
</head>
<body>

<header>
	<h1>게시판</h1>
</header>
<nav>
	홈-글작성
</nav>

<form action="/board/write" method="post">
	<table>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"/></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content"></textarea></td>
		</tr>
		<tr>
			<td>작성자</td>
			<td><input type="text" name="writer"/></td>
		</tr>
		<tr>
			<td>작성</td>
			<td><button type="submit">작성</button></td>
		</tr>
	</table>
</form>

</body>
</html>