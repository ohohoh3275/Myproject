<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>글쓰기</title>
<style>
#writeTable {
	margin-top: 2%;
	margin-bottom: 5%; 
	margin-left : auto;
	margin-right: auto;
	font-size: 20px;
	font-family: 'Nanum Gothic Coding', monospace;
	margin-left: auto;
}

#writeTable td {
	margin-top: 10px;
	padding: 3px;
	
}
</style>
</head>
<body>

	<form action="/board/write" method="post">
		<table id="writeTable">
			<tr>	
				<td colspan="2"><h3>글쓰기 화면 입니다.</h3></td>
			</tr>
	
			<tr>
				<td>분류</td>
				<td>분륭류ㅠㅇ</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" name="title" style="width: 550px; height:25px;" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" style="width: 550px; height:400px"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
					<button type="submit">작성</button>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>