<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CART</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<style type="text/css">
	div.content { width:100%; height:100%;}
	div.title {  width:500px; height:100px; margin: auto; 
	font-size:50px; text-align : center; font-family:sans-serif;}
	table.cartt{ margin: auto;}
	
	div.buybtn{ width:400px; background-color:black; 
	margin: auto; cursor:pointer;
	text-align : center; font-family:sans-serif; font-size:30px; color:white; }
</style>
</head>

<body>

<div class="content">

<div class="title">Cart</div>
   
<%--    <!-- 장바구니 0 일때 출력 -->
   <c:choose>
   	<c:when test="${map.count ==0 }">장바구니가 비었습니다.</c:when>
   	<c:otherwise>장바구니 목록 출력</c:otherwise>
   </c:choose> --%>
   
   <!-- 카트 첫 행 -->
   <table class="table table-bordered cartt" style="width:1000px;">
	<tr style="background-color:#f2f2f2">
	<th style="width:80px;"><input type="checkbox" id="allcheck" >전체선택</th>
<%-- 	<th style="width:80px;"><button type="button" id="seldelete" class="seldelete" num="${dto.num}">선택삭제</th> --%>
	<th style="width:80px;">제품정보</th>
	<th style="width:80px;">수량</th>
	<th style="width:80px;">배송비</th>
	<th style="width:80px;">금액</th>
	</tr>
	
	
	<!-- 상품 목록 -->
	<c:forEach var="cList2" items="${cList}" varStatus="i">
		<tr>
			<td><input type="checkbox" class="del" num="${cList2.pnum }">${cList2.pnum }</td>
			<td>${cList2.pname }</td>
			<td>${cList2.cquantity }</td>
			<td>2500</td>
			<td>${cList2.SUM_PRICE}</td>
		</tr>
	</c:forEach>
</table>

<div class="buybtn" >주문하기</div>

</div>

</body>
</html>