<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#galleryWrite{
	margin-top:5%;
	margin-bottom:10%;
	text-align:center;
	font-family: 'Nanum Gothic Coding', monospace;
}
</style>
</head>

<body>
	<div id="galleryWrite">
		<form action="/gallery/uploadContent" method="post">
			글제목 : <input type="text" name="title"><br><br> 
			설명 : <input type="text" name="content"><br><br> 
			파일 : <input type="file" name="uploadFile" multiple="true" />
			<input type="hidden" name="writer" value="writer1"></input>
			<br>
			다중 파일 업로드 가능.
			<br><br>
			<button type="button" id="uploadBtn">업로드</button>
			<button type="submit" id="sendBtn">글쓰기</button>
			<br><br>
			*업로드 클릭 -> 버튼 사라짐 -> 글쓰기 클릭
			
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

	<script>
		$(document).ready(function() {

			$("#uploadBtn").on("click", function() {
				var formData = new FormData();
				var inputFile = $("input[name='uploadFile']");

				var files = inputFile[0].files;

				for (var i = 0; i < files.length; i++) {
					formData.append("uploadFile", files[i]);
				}

				$.ajax({
					url : 'upload',
					processData : false,
					contentType : false,
					data : formData,
					type : 'POST',
					dataType : 'json',
					success : function() {
						$('#uploadBtn').hide();
					}

				});

			});

		});
	</script>

</body>
</html>