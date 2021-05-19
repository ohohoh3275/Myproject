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
		
		$("#update_btn").click(function(){
			formObj.attr("action", "/board/updateView");
			formObj.attr("method", "get");
			formObj.submit();
		}),
		
		$("#delete_btn").click(function(){
			formObj.attr("action", "/board/delete");
			formObj.attr("method", "post");
			formObj.submit();
		}),
		
		$("#list_btn").click(function(){
			location.href="/board/list";
		})
		
		$("#replyWriteBtn").click(function(){
			var formObj = $("form[name='replyForm']");
			formObj.attr("action", "/board/replyWrite");
			formObj.submit();
		})
		
	})

</script>

<style>
	
	#readViewWrapper{
		position:relative;
		margin-left:35%;
		margin-top:5%;
	}

	td{
		border-bottom: 2px solid green;
		height:50px;
	}
	#tbl{
		width:500px;
	}
	.viewBtns{
		width:60px;
		height:30px;
		font-size:15px;
	}
	
</style>

<meta charset="UTF-8">
<title>글 보기</title>
</head>
<body>
<div id="readViewWrapper">

<div id="postView">
		<form name="readForm" method="post">
			<input type="hidden" id="bno" name="bno" value="${read.bno }"/>
		</form>
		<table>
			<tr>
				<td>글번호 </td><td id="tbl"> ${read.bno }</td>
			</tr>
			<tr>
				<td>글제목 </td><td id="tbl"> ${read.title }</td>
			</tr>
			<tr>
				<td style="height:50px">내용 </td><td id="tbl"> ${read.content }</td>
			</tr>
			<tr>
				<td>작성자 </td><td id="tbl"> ${read.writer }</td>
			</tr>
			<tr>
				<td>작성날짜 </td><td id="tbl"> <fmt:formatDate value="${read.bdate }" pattern="yyyy-MM-dd"/></td>
			</tr>
		</table>
		
		<div id="viewBtns">
			<button type="submit" id="update_btn" class="viewBtns">수정</button>
			<button type="submit" id="delete_btn" class="viewBtns">삭제</button>
			<button type="submit" id="list_btn" class="viewBtns">목록</button>
		</div>

</div>
	<br><h3>댓글</h3>
<div id="replyView">

	<ol class="replyList">

		<c:forEach items="${replyList }" var="replyList">
				----------------------------
			<li style="float:none">
				작성자 : ${replyList.writer }<br>
				작성날짜 : <fmt:formatDate value="${replyList.bdate }" pattern="yyyy-MM-dd"/><br>
				<p>${replyList.content }</p>
				
			</li>
		
		</c:forEach>
	</ol>
	
</div>

<div id="replyWrite" style="clear:both;">	

	<br><h4>댓글 작성</h4>
	<form name="replyForm" method="post">
		<input type="hidden" id="bno" name="bno" value="${read.bno }"/>
		<input type="hidden" id="page" name="page" value="${scri.page }"/>
		<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum }"/>
		<input type="hidden" id="searchType" name="searchType" value="${scri.searchType }"/>
		<input type="hidden" id="keyword" name="keyword" value="${scri.keyword }"/>
			
		작성자 : <input type="text" id="writer" name="writer"/><br>
		내용 : <input type="text" id="content" name="content"/><br>
		<button type="button" id="replyWriteBtn" class="viewBtns">작성</button>
	
	</form>

</div>
</div>
</body>
</html>