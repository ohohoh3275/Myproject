<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<br>
	<form action="/gallery/uploadContent" method="post">
		title : <input type="text" name="title"><br> 
		content : <input type="text" name="content"><br> 
		file : <input type="file" name="uploadFile" multiple="true" />	
	
		<button type="button" id="uploadBtn">upload</button>
		<button type="submit" id="sendBtn">send</button>
	</form>
	
	 
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