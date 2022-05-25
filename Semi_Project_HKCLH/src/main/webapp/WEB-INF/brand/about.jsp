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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">
   div{ font-family: Noto Sans KR; text-align: center;}
   div.video{
	width:auto; height:800px;
	}
   #bg{
    left:0; top:0;
    width:100%; height:800px;
    min-width:100%; min-height:100%;
    z-index: 0;
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
	div.content2{background-color: #fcf5ed;}
	div.ft1{
	margin: 0 auto;
	width:auto; height:auto;
	}
	
	div.title{ font-size:35px; font-weight:bold; }
	div.subtitle{ font-size:25px; }
	div.description{ font-size:18px; }
	
	
</style>
<script type="text/javascript">
/* 클릭시 스크롤 이동 */
$(document).ready(function($) {
    $(".scroll_move").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 1000);
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
		<div class="subtitle""><br><br>‘가장 나다운 향’을 찾기 위한 여정을 함께합니다.</div> 
		
        <div class="cards">
        
        <div class="card" >
        <div class="image"><br><br><img src="${root}/image/card1-1.PNG" style="width:700px;"></div>
        <div class="description"><br><br>머신러닝 알고리즘 ‘퍼퓸텔러’를 통해<br>향기 정보와 취향을 분석하여 최적화된 향기를 추천합니다. </div> 
        </div> 
        
        <div class="card">
        <div class="image"><br><br><img src="${root}/image/card1-2.PNG" style="width:700px;"></div>
        <div class="description"><br><br>다양한 향기를 부담없이 경험할 수 있도록,<br>2.5ml의 병에 향기를 담습니다. </div>
        </div>
        <div class="card">
        <div class="image"><br><br><img src="${root}/image/card1-3.PNG" style="width:700px;"></div>
        <div class="description"><br><br>취향에 맞지 않는 향기가 있다면 새로운 향으로 교환해드립니다.</div>
        </div></div>
</div></div>
<br><br><br><br>


<div class="content2">
<div class="ft1">
	<div class="title" id="div2"><br><br>Eco friendly</div>
		<div class="subtitle"><br><br>내가 좋아하는 향기를<br>마음 편하게 사용하세요.</div> 
        
        <div class="cards">
        
        <div class="card">
        <div class="image"><br><br><img src="${root}/image/card2-1.PNG" style="width:700px;"></div>
        <div class="description"><br><br>동물실험을 하지 않으며,<br>동물성 원료를 사용하지 않습니다.</div>
        </div>
        <div class="card">
        <div class="image"><br><br><img src="${root}/image/card2-2.PNG" style="width:700px;"></div>
        <div class="description"><br><br>FragBit의 향기와 패키지는<br>특정 성별을 타깃으로 디자인되지 않았습니다.</div>
        </div>
        <div class="card">
        <div class="image"><br><br><img src="${root}/image/card2-3.PNG" style="width:700px;"></div>
        <div class="description"><br><br>FSC인증이 완료된 종이를 사용하며,<br>비닐을 사용하지 않습니다.<br><br><br></div>
		</div></div>
</div></div>
<br><br><br><br>


<div class="content3">
<div class="ft1">
	<div class="title" id="div3"><br><br>Better but different</div>
		<div class="subtitle"><br><br>남들과는 다른, 더 나은 것들을 만듭니다.</div>
        <div class="cards">
        <div class="card">
        <div class="image"><br><br><img src="${root}/image/card3-1.PNG" style="width:700px;"></div>
		<div class="description"><br><br>향기를 가장 잘 보관할 수 있는 곳,<br>알루미늄에 향기를 담습니다.</div>
        </div>
		<div class="card"><div class="image"><br><br><img src="${root}/image/card3-1.PNG" style="width:700px;"></div>
		<div class="description"><br><br>글로벌 탑 퀄리티의 프래그런스 오일을<br>사용하여, 더 좋은 향기를 만듭니다.</div>
		</div></div>
</div></div>
<br><br>
</body>
</html>