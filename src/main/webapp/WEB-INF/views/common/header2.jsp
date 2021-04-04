<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrap{
		text-align:center;
	}
    ul{
    	list-style:none;
    	display:inline-block;
    }
    
    li{
    	float:left;
    	margin: 0px 50px 0px 50px;
        font-size:20px;
    }
</style>
</head>
<body>
    <div id="wrap">
        <ul>
            <li class="menu">HOME</li>
            <li class="menu">ABOUT</li>
            <li class="menu"><a href="/board/list">BOARD</a></li>
            <li class="menu"><a href="/gallery/list">GALLERY</a></li>
            <li class="menu">??</li>
        </ul>
    </div>	

</body>
</html>