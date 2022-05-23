<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=
Noto+Sans+KR&family=Radio+Canada:wght@300&family=
Roboto:wght@100&family=
Signika+Negative:wght@300&display=swap" rel="stylesheet">
</head>
<style>
  /*body start*/
#bg{
   
   	
    left:0;
    top:0;
    width:auto;
    height:auto;
    min-width:100%;
    min-height:100%;
    z-index:-100;
   
}
/*body end*/
</style>


<body>
   <!--중앙-->
   
   
    <div class="topimage">
<img src="${root}/image/mainimage1.jpeg" style="width: 1900px";>
</div>
<video src="${root}/image/mainvideo.mp4" autoplay loop muted poster="homepage.jpg" id="bg" ></video>
<img src="${root}/image/mainimage2.jpg" style="width: 1900px";>

   
 
    <!--중앙끝-->
</body>
</html>