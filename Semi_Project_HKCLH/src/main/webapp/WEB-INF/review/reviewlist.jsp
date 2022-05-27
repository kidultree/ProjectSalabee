<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" 
	rel="stylesheet">
<style type="text/css">

*{
font-family: 'Noto Sans KR'
}

#review{

width: 1000px;
height: 400px;
border: 1px solid black;

}

#mid_review{

width: 600px;
height: 380px;
border: 1px solid green;
float: left;
margin: 10px; 10px;

}

#side_review{

width: 360px;
height: 380px;
border: 1px solid red;
float: right;
margin: 10px 10px 10px 0px;

}

#rrate{
width: 580px;
height: 70px;
border: 1px solid blue;
margin: 5px 5px;
float: left;

}

#bought_product{
width: 580px;
height: 120px;
border: 1px solid blue;
float: left;
margin: 5px; 5px;

}

#pphoto{
width: 110px;
height: 110px;
border: 1px solid navy;
float: left;
margin: 5px;
}

#pname{
width: 300px;
height: 110px;
border: 1px solid navy;
position: relative;
margin: 5px;

}

#rcontent{

width: 580px;
height: 150px;
border: 1px solid blue;
float: left;
margin: 5px 5px;

}


</style>





</head>
<body>

<h2>Review</h2>
<div id="review"> 


	<div id="mid_review">
	
		<div id = "rrate">

		</div>
		
		<div id = "bought_product">
		
			<div id = "pphoto">
		
			</div>
			
			<div id = "pname">
			
			</div>
		
		</div><!-- bought_product -->
		
		<div id = "rcontent">
		
		</div>
		
	</div><!-- mid review -->

	<div id = "side_review">
		<div id= "rname">

		</div>
	<br>
	<div id = "rdate"><fmt:formatDate value="${dto.rdate}" pattern="yyyy/MM/dd HH:mm"/></div>

	</div> <!-- side-review -->
	
</div> <!-- review 닫힘 -->


</body>
</html>