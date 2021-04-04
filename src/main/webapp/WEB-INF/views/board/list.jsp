<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

<script>
	$(function() {
		$('#searchBtn').click(
				function() {
					self.location = "list" + '${pageMaker.makeQuery(1)}'
							+ "&searchType="
							+ $("select option:selected").val() + "&keyword="
							+ encodeURIComponent($('#keywordInput').val());
				});
	});

	
</script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Pen+Script&display=swap');
</style>
<style>
	#list_wrap{
		text-align:center;
		font-size:20px;
		font-family: 'Nanum Gothic', sans-serif;
	}
	
	table{
		margin-right:auto;
		margin-left:auto;
	}
	th, tr, td{
		padding-left:120px;
		padding-top:10px;
	}
	#write{
		margin-right:-45%;
		
	}
	
</style>
</head>
<body>
<div id="list_wrap">
	<br><br>
	<div id="write"><a href="writeView">글쓰기</a></div>
	<br><br>

	<form role="form" method="get">
		<table>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>등록일</th>
			</tr>
			<c:forEach items="${list }" var="list">
				<tr>
					<td>${list.bno }</td>
					<td><a href="/board/readView?bno=${list.bno}">${list.title }</a></td>
					<td>${list.writer }</td>
					<td><fmt:formatDate value="${list.bdate }"
							pattern="yyyy-MM-dd" /></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<div class="search">
			<select name="searchType">
				<option value="n"
					<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
				<option value="t"
					<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
				<option value="c"
					<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
				<option value="w"
					<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
				<option value="tc"
					<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
			</select> <input type="text" name="keyword" id="keywordInput"
				value="${scri.keyword}" />

			<button id="searchBtn" type="button">검색</button>

		</div>
		<br>

		<div>
			<c:if test="${pageMaker.prev }">
				<a href="list${pageMaker.makeSearch(pageMaker.startPage -1) }">이전</a>
			</c:if>
			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<a href="list${pageMaker.makeSearch(idx)}">${idx }</a>
			</c:forEach>
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<a href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">다음</a>
			</c:if>

		</div>
	</form>
</div>
</body>
</html>