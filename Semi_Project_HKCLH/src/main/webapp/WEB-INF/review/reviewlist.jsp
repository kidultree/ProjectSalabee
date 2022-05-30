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


#review_table{
	font-family: 'Noto Sans KR';
	width: 1000px;
	height: 250px;
	border-bottom: solid;
}

*{
	font-family: 'Noto Sans KR';
}

#review{

	position: relative;
	left: 400px
}

.review_label{

	position: absolute;
	top: 140px;
  	left: 150px;
  	margin-bottom: 30px;
}

label{
	font-size: 15px;
}


</style>

</head>
<body>
<br><br>
<label style="font-size: 40px;" class="review_label">Review</label>
	<c:forEach var="dto" items="${list}">
	<div id="review">
		<table class="table table-borderless" id="review_table">
			<thead>
				<tr style="height: 30px;">
					<td colspan="4"> <!-- 별점 value 따라서 별 show -->
					<c:if test="${dto.rrate == '1'}">
						<label id="star">★ 별로에요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '2'}">
						<label id="star">★★ 그냥 그래요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '3'}">
						<label id="star">★★★ 보통이에요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '4'}">
						<label id="star">★★★★ 맘에 들어요</label>
					</c:if>
					
					<c:if test="${dto.rrate == '5'}">
						<label id="star">★★★★★ 아주 좋아요</label>
					</c:if>
	</div>
					
					</td>
					<td colspan="2" rowspan="3">${dto.rname}님이 작성한 리뷰입니다.<br>
					<br>작성일: <fmt:formatDate value="${dto.rdate}" pattern="yyyy/MM/dd HH:mm"/></td>
				</tr>
				<tr>
					<td colspan="2"><!-- 사진이 들어있는 경우 출력하기 -->
					<c:if test = "${dto.rphoto!=''}">
						<img src="../save/${dto.rphoto}" width="80" height="80" border="1">
						&nbsp;&nbsp;
					</c:if></td>
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