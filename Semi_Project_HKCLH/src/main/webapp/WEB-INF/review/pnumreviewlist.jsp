<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">

#pnum_review_table{
	width: 1100px;
	height: 250px;
	font-family: 'Noto Sans KR';
	border-bottom: 2px solid #000000

}

#pnum_review{
	position: relative;
	left: 280px;

}

#pnumreview_label{
	font-family: 'Noto Sans KR';
	color: white;
	background-color: #000000;
	position: relative;
	left: 20px;
}
</style>

</head>
<body>
<br><br>
<label style="font-size: 35px;" id="pnumreview_label">상품별 리뷰보기</label>

	
	<c:forEach var="list" items="${pnumlist}">

		<c:forEach var="dto" items="${list}"> <!-- 안에 받아올 부분 -->
			<div id="pnum_review">
		<table class="table table-borderless" id="pnum_review_table">
	<thead>
  <tr>
    <td rowspan="5" width="200px;"><img src="${root}/save/${dto.pphoto}" style="width: 160px;"></td>
    <td colspan="2" width="330px;">${dto.pname}</td>
    <td rowspan="2">개의 리뷰 전체보기</td>
  </tr>
  <tr>
    <td colspan="2">★${dto.rrate}리뷰${totalCount}개</td>
  </tr>
  <tr>
    <td colspan="3">별점 + 내용 한줄 (1)</td>
  </tr>
  <tr>
    <td colspan="3">별점 + 내용 한줄 (2)</td>
  </tr>
  <tr>
    <td colspan="3">별점 + 내용 한줄 (3)</td>
  </tr>
</thead>
</table>
</div>
	
		</c:forEach>
	</c:forEach>
</body>
</html>