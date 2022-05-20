<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">

</style>
</head>
<body>
	<h3>총 ${totalCount}개의 상품</h3>
	<hr>
	<table class="table table-bordered">
		<caption>상품 목록</caption>
		<tr>
			<th width="50" >번호</th>
			<th width="450">상품명</th>
			<th width="100">가격</th>
			<th width="100">메뉴</th>
			<th width="100">평점</th>
			<th width="100">리뷰개수</th>
			<th width="100">입고일</th>		
		</tr>
		
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>
					${no}
				</td>
				<c:set var="no" value="${no-1}"/>
				<td>
					<!-- 사진이 들어있는 경우 출력하기 -->
					<c:if test="${dto.pphoto!='' }">
						<img src="../${dto.pphoto }" width="80" height="80" border="1">
						&nbsp;&nbsp;
					</c:if>
					<a href="detail?num=${dto.pnum}&currentPage=${currentPage}">
						${dto.pname}
					</a>
				</td>
				<td>${dto.pprice}</td>
				<td>${dto.pcate}</td>
				<td>${dto.prate}</td>
				<td>${dto.pratecnt}</td>
				<td>${dto.pdate}</td>
				
			</tr>
		</c:forEach>
	
	</table>
	<!-- 페이지네이션 -->
		<div class="paging" style="margin-left: 250px;">
			<ul class="pagination">
			
				<!-- 이전 -->
				<c:if test="${startPage>1}">
					<li><a href="list?currentPage=${startPage-1}">이전</a></li>
				</c:if>
				
				<!-- 페이지블럭 -->
				<c:forEach var="pp" begin="${startPage}" end="${endPage}">
					<c:if test="${pp==currentPage}">
						<li class="active"><a href="list?currentPage=${pp}">${pp}</a></li>
					</c:if>
					<c:if test="${pp!=currentPage}">
						<li><a href="list?currentPage=${pp}">${pp}</a></li>
					</c:if>
				</c:forEach>
				
				<!-- 다음 -->
				<c:if test="${endPage<totalPage}">
					<li><a href="list?currentPage=${endPage+1}">다음</a></li>
				</c:if>
				
			</ul>
		</div>
</body>
</html>