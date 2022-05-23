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
	table{ margin: auto; font-family:sans-serif;
	border-top: 1px solid #444444;
    border-collapse: collapse;}
    table.a{font-size: 18px;}
    th{height:50px;}
    tr, td{  font-family:sans-serif; text-align : center;
    border-bottom: 1px solid #444444;
    padding: 10px;}
    td{  font-family:sans-serif; text-align : center; height:80px;
    border-bottom: 1px solid #444444;
    padding: 10px;}
	
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
   <table class="cartt" style="width:1000px;">
	<tr style="background-color:white">
	<th style="width:80px;"><input type="checkbox" id="allcheck" >전체선택</th>
<%-- 	<th style="width:80px;"><button type="button" id="seldelete" class="seldelete" num="${dto.num}">선택삭제</th> --%>
	
	<th style="width:80px;">제품정보</th>
	<th style="width:80px;">수량</th>
	<th style="width:80px;">배송비</th>
	<th style="width:80px;">금액</th>
	</tr>
	
	
	<!-- 상품 목록(이미지 추가하기) -->
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

<br><br><br><br><br><br><br>

<table class="a" style="width:1000px;">
	<tr>
		<th style="width:100px;">총 상품가격</th>
		<th/>
		<th style="width:100px;">추가금액</th>
		<th/>
		<th style="width:100px;">배송비</th>
		<th/>
		<th style="width:100px;">총 결제금액</th>
	</tr>
	
	<tr>
		<td>1</td>
		<td><img src="${root}/image/-.PNG" id="m" style="width:50px"></td>
		<td>2</td>
		<td><img src="${root}/image/+.PNG" id="p" style="width:50px"></td>
		<td>3</td>
		<td><img src="${root}/image/=.PNG" id="e" style="width:50px"></td>
		<td>4</td>
	</tr>
</table>

<br><br><br><br>

<div class="buybtn" >주문하기</div>
<br><br>
</div>

</body>
</html>