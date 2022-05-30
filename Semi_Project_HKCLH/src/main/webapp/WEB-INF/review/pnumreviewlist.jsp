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
	width: 1400px;
	height: 250px;

}

</style>

</head>
<body>
<br><br>
<label style="font-size: 40px;" class="pnumreview_label">상품별 리뷰보기</label>
<div id="review_cate">
<br>&nbsp; &nbsp; <!-- 리뷰 정렬 카테고리 -->
	<label id="pnumreviewlist">상품별 리뷰보기</label>

</div><br><br>
	<c:forEach var="dto" items="${pnumlist}">
	<div id="pnum_review">
		<table class="table table-bordered" id="pnum_review_table">
<thead>
  <tr>
    <td rowspan="5">${dto.pphoto}</td>
    <td colspan="2">${dto.pname}</td>
    <td rowspan="2">개의 리뷰 전체보기</td>
  </tr>
  <tr>
    <td colspan="2">${dto.rrate}&nbsp;</td>
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
</body>
</html>