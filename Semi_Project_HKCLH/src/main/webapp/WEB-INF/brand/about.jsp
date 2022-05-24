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
   
   div.video{
	width:auto; height:800px;
	}
   #bg{
    left:0; top:0;
    width:100%; height:800px;
    min-width:100%; min-height:100%;
    z-index: 0px; <!--수정필요-->
	}
	div.content-box{
	width:auto; height:600px;
	display: flex;
    align-items: center;
	}
	div.features{
	width:auto; height:400px; line-height: 400px;
	background-color: white; margin: 0 auto;
	}
	
	div.content1{
	width:auto; height:auto;
	display: flex;
    align-items: center;
	}
	div.ft1{
	margin: 0 auto;
	width:auto; height:auto;
	}
	
</style>
<script type="text/javascript">
/* 클릭시 스크롤 이동 */
$(document).ready(function($) {
    $(".scroll_move").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);
    });
});
</script>

</head>
<body>

<!-- 메인비디오 재생 -->
<div class="video">
<video src="${root}/image/mainvideo.mp4" autoplay loop muted poster="homepage.jpg" id="bg"></video>
</div>

<!-- 선택 div -->
<div class="content-box">
	<div class="features">
		<a class="feature" href="#div1" id="scroll_move"><img src="${root}/image/feature1.PNG" style="width:400px;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="feature" href="#div2" id="scroll_move"><img src="${root}/image/feature2.PNG" style="width:400px;"></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="feature" href="#div3" id="scroll_move"><img src="${root}/image/feature3.PNG" style="width:400px;"></a>
	</div>
</div>

<div class="content1">
<div class="ft1">
	<div class="title" id="div1"><br><br>Find Your Signature</div>
		<div class="subtitle">‘가장 나다운 향’을 찾기 위한<br>여정을 함께합니다.</div> 
		
        <div class="cards">
        
        <div class="card" >
        <div class="image"><img src="${root}/image/card1-1.PNG" style="width:700px;"></div>
        <div class="description"> 머신러닝 알고리즘 ‘퍼퓸텔러’를 통해<br>향기 정보와 취향을 분석하여<br>최적화된 향기를 추천합니다. </div> 
        </div> 
        
        <div class="card">
        <div class="image"><img src="${root}/image/card1-2.PNG" style="width:700px;"></div>
        <div class="description"> 다양한 향기를 부담없이 경험할 수 있도록,<br>2.5ml의 병에 향기를 담습니다. </div>
        </div>
        <div class="card">
        <div class="image"><img src="${root}/image/card1-3.PNG" style="width:700px;"></div>
        <div data-v-f782eb84="" class="-description"> 취향에 맞지 않는 향기가 있다면 <br>새로운 향으로 교환해드립니다.
        </div></div>
        
        </div>
</div></div>

</body>
</html>