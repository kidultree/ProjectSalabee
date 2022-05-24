<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
   #bg{
    left:0; top:0;
    width:auto; height:auto;
    min-width:100%; min-height:100%;
    z-index: 0px; <!--수정필요-->
	}
	div.content-box{
	width:auto; height:600px;
	background-color: pink;
	 align-items:center;
	}
	div.features{
	width:auto; height:400px; line-height: 400px;
	background-color: white; display: flex; margin: 0 auto;
	
	}
</style>
</head>
<body>
<video src="${root}/image/mainvideo.mp4" autoplay loop muted poster="homepage.jpg" id="bg"></video>

<div class="content-box">
	<div class="features">
	
	</div>
</div>



</body>
</html>