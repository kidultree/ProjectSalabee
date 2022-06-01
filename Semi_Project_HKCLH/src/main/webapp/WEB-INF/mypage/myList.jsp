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
	<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">

  #faq-title {
  	font-family: 'Noto Sans KR';
    font-size: 35px;
    position: absolute;
  	top: 140px;
  	left: 150px;
  }
  
 .answer {
    display: none;
    padding-bottom: 30px;
    font-family: 'Noto Sans KR';
    font-weight: 300;
    font-size: 17px;
  }
  
  .faq-content {
    border-bottom: 1px solid #e0e0e0;
  }
  
  .question {
	font-weight: 400;
  	font-family: 'Noto Sans KR';
    font-size: 15px;
    padding: 30px 0;
    cursor: pointer;
    border: none;
    outline: none;
    background: none;
    width: 100%;
    text-align: left;
  }

  [id$="-toggle"] {
    margin-right: 15px;
  }
  div.notice{
  width: 400px;
  position:relative;
  left: 150px;
  top: 100px;
  }
  span{
  	color: black;
  }
  span:hover{
    color: #2962ff;
  
  }
  
</style>
<script type="text/javascript">
	$(function(){
		$("div.mypage").click(function(){
			   location.href = "/mypage?mId=${sessionScope.mId}";
		});
		$("div.review").click(function(){
			   location.href = "/mypage/review?mId=${sessionScope.mId}";
		});
		$("div.qna").click(function(){
			   location.href = "/mypage/qna?mId=${sessionScope.mId}";
		});
		$("div.alter").click(function(){
			   location.href = "/mypage/alter";
		});
		$("div.delete").click(function(){
			   location.href = "/mypage/delete";
		});
	})
</script>
</head>
<body>

<input type="hidden" value="${mId}">
<div class="notice">
<a>
<div class="faq-content mypage" >
  <button class="question" id="que-1"><span id="que-1-toggle">+</span>
  <span >
  마이 페이지</span></button>
</div></a>

<div class="faq-content list">
 <button class="question" id="que-3"><span id="que-3-toggle">+</span><span style="font-weight: bold; font-size: 20px;">
 주문 내역</span></button>
</div>


<div class="faq-content review">
  <button class="question" id="que-4"><span id="que-4-toggle">+</span><span>내 리뷰</span></button>
</div>

<div class="faq-content qna">
  <button class="question" id="que-5"><span id="que-5-toggle">+</span><span>1:1 문의</span></button>
</div>

<div class="faq-content alter">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 정보 수정</span></button>
</div>

<div class="faq-content delete">
  <button class="question" id="que-6"><span id="que-6-toggle">+</span><span>회원 탈퇴</span></button>
</div>

<div class="container" style="position: absolute; left: 600px; top:200px; border: 1px solid black;">
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<br><br><br><br><br><br><br>
</div>
</body>
</html>