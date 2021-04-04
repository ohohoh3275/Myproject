<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	$(document).ready(function() {
		$(".cancel_btn").click(function() {
			event.preventDefault();
			location.href = "/board/list";
		})
	})
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/board/update?bno=${update.bno }" method="post">
		<table>
			<tr>
				<td><label for="title">제목</label><input type="text" id="title"
					name="title" value="${update.title}" /></td>
			</tr>
			<tr>
				<td><label for="content">내용</label> <textarea id="content"
						name="content"><c:out value="${update.content}" /></textarea></td>
			</tr>
			<tr>
				<td><label for="writer">작성자</label><input type="text"
					id="writer" name="writer" value="${update.writer}"
					readonly="readonly" /></td>
			</tr>
			<tr>
				<td><label for="regdate">작성날짜</label> <fmt:formatDate
						value="${update.bdate}" pattern="yyyy-MM-dd" /></td>
			</tr>
		</table>
		<div>
			<button type="submit">저장</button>
			<button type="submit" class="cancel_btn">취소</button>
		</div>
	</form>
	
</body>
</html>