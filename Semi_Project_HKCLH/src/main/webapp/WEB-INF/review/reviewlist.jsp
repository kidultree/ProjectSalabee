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


#review_table{
	font-family: 'Noto Sans KR';
	width: 1400px;
	height: 300px;
	border: 1px solid black;

}

</style>

</head>
<body>

	<br><br><br><br><br><br><br><br><br><br>
	<h2>Review</h2>
	<c:forEach var="dto" items="${list}">
	<div id="review">
		<table class="table table-bordered" id="review_table">
			<thead>
				<tr>
					<td colspan="4">별점 : ${dto.rrate}</td>
					<td colspan="2" rowspan="3">${dto.rname}님이 작성한 리뷰입니다.<br>작성일: 
					<fmt:formatDate value="${dto.rdate}" pattern="yyyy/MM/dd HH:mm"/></td>
				</tr>
				<tr>
					<td colspan="2">${dto.rphoto}</td>
					<td colspan="2">구매상품 : ${dto.pnum}</td>
				</tr>
				<tr>
					<td colspan="4">리뷰내용 : ${dto.rcontent}</td>
				</tr>
			</thead>
		</table>
	</div>
	</c:forEach>

</body>
</html>