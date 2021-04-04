<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		var formObj = $("form[name='readForm']");
		
		$(".update_btn").click(function(){
			formObj.attr("action", "/board/updateView");
			formObj.attr("method", "get");
			formObj.submit();
		}),
		
		$(".delete_btn").click(function(){
			formObj.attr("action", "/board/delete");
			formObj.attr("method", "post");
			formObj.submit();
		}),
		
		$(".list_btn").click(function(){
			location.href="/board/list";
		})
		
		$(".replyWriteBtn").click(function(){
			var formObj = $("form[name='replyForm']");
			formObj.attr("action", "/board/replyWrite");
			formObj.submit();
		})
		
	})
	
	

</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="readForm" method="post">
	<input type="hidden" id="bno" name="bno" value="${read.bno }"/>
</form>
<table>
	<tr>
		<td>글번호 : ${read.bno }</td>
	</tr>
	<tr>
		<td>글제목 : ${read.title }</td>
	</tr>
	<tr>
		<td>내용 : ${read.content }</td>
	</tr>
	<tr>
		<td>작성자 : ${read.writer }</td>
	</tr>
	<tr>
		<td>작성날짜 : <fmt:formatDate value="${read.bdate }" pattern="yyyy-MM-dd"/></td>
	</tr>
</table>
<div>
	<button type="submit" class="update_btn">수정</button>
	<button type="submit" class="delete_btn">삭제</button>
	<button type="submit" class="list_btn">목록</button>
</div>

<div id="reply">
	<ol class="replyList">
		<c:forEach items="${replyList }" var="replyList">
			<li>
				작성자 : ${replyList.writer }<br>
				작성날짜 : <fmt:formatDate value="${replyList.bdate }" pattern="yyyy-MM-dd"/>
				<p>${replyList.content }</p>
			</li>
		
		</c:forEach>
	</ol>
</div>
<form name="replyForm" method="post">
	<input type="hidden" id="bno" name="bno" value="${read.bno }"/>
	<input type="hidden" id="page" name="page" value="${scri.page }"/>
	<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum }"/>
	<input type="hidden" id="searchType" name="searchType" value="${scri.searchType }"/>
	<input type="hidden" id="keyword" name="keyword" value="${scri.keyword }"/>
	
	<div>
		작성자 : <input type="text" id="writer" name="writer"/><br>
		내용 : <input type="text" id="content" name="content"/>
		<button type="button" class="replyWriteBtn">작성</button>
	</div>

</form>
</body>
</html>