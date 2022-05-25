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
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/cart.css">
</head>

<script type="text/javascript">
	$(document).ready(function() {
		
		/* 종합 정보 섹션 정보 삽입 */
		let totalPrice = 0;				// 총 가격
		let totalCount = 0;				// 총 갯수
		let deliveryPrice = 0;			// 배송비
		let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
		
		$(".cart_info_td").each(function(index, element){
			
			// 총 가격
			totalPrice += parseInt($(element).find(".individual_totalPrice_input").val());
			// 총 갯수
			totalCount += parseInt($(element).find(".individual_cquantity_input").val());
			// 총 종류
			totalKind += 1;
		
			
			/* 배송비 결정 */
			if(totalPrice >= 30000){
				deliveryPrice = 0;
			} else if(totalPrice == 0){
				deliveryPrice = 0;
			} else {
				deliveryPrice = 3000;	
			}
			
			/* 최종 가격 */
			finalTotalPrice = totalPrice + deliveryPrice;
			
			/* 값 삽입 */
			// 총 가격
			$(".totalPrice_span").text(totalPrice.toLocaleString());
			// 총 갯수
			$(".totalCount_span").text(totalCount);
			// 배송비
			$(".delivery_price").text(deliveryPrice);	
			// 최종 가격(총 가격 + 배송비)
			$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());

		});
	});
</script>

<body>
<div class="content">
<br><br><br><br><br>
<div class="title">Cart</div>
   
<%--    <!-- 장바구니 0 일때 출력 -->
   <c:choose>
   	<c:when test="${map.count ==0 }">장바구니가 비었습니다.</c:when>
   	<c:otherwise>장바구니 목록 출력</c:otherwise>
   </c:choose> --%>
   
   <!-- 카트 첫 행 -->
   <table class="cartt" style="width:1000px;">
	<tr style="background-color:white">
	<th><input type="checkbox" id="allcheck" >전체선택</th>
<%-- 	<th style="width:80px;"><button type="button" id="seldelete" class="seldelete" num="${dto.num}">선택삭제</th> --%>
	<th>제품정보</th>
	<th>수량</th>
	<th>배송비</th>
	<th>금액</th>
	</tr>
	
	
	<c:forEach var="cList2" items="${cList}" varStatus="i">
		<tr>
			<td class="cart_info_td">
				<input type="hidden" class="individual_pprice_input" value="${cList2.pprice}">
				<input type="hidden" class="individual_cquantity_input" value="${cList2.cquantity}">
				<input type="hidden" class="individual_totalPrice_input" value="${cList2.cquantity*(cList2.pprice+cList2.addprice)}">
			</td>
		</tr>
	
		<tr>
			<td><input type="checkbox" class="del" num="${cList2.pnum }">${cList2.pnum }</td>
		<!-- 상품 이미지 넣기 <td>${cList2.pphoto }</td> -->
			<td><img src="${root}/save/${cList2.pphoto}" style="width:100px;">${cList2.pname }</td>
			
			
			<td>
			
			<div class="number-input">
				<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
				<input class="quantity" min="0" name="quantity" value="${cList2.cquantity }" type="number" id="quantity">
				<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
			</div>
			<!-- 
			<div class="table_text_align_center quantity_div">
				<input type="text" value="${cList2.cquantity }" class="quantity_input">	
				<button class="quantity_btn plus_btn">+</button>
				<button class="quantity_btn minus_btn">-</button>
				</div>
			<a class="quantity_modify_btn">변경</a> -->
			</td>
			
			<td><span class="delivery_fee"><fmt:formatNumber value="3000" pattern="#,### 원" /></span></td>
			<td><span class="sum_price"><fmt:formatNumber value="${cList2.SUM_PRICE}" pattern="#,### 원" /></span></td>
			<td class="delete_btn"><button type="button" class="btn btn-default btn-xs"><span class="glyphicon glyphicon-remove"></span></button> </td>
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
		<td><span class="totalPrice_span"></span> 원</td>
		<td><img src="${root}/image/-.PNG" id="m" style="width:50px"></td>
		<td>0원</td>
		<td><img src="${root}/image/+.PNG" id="p" style="width:50px"></td>
		<td><span class="delivery_price">3000</span>원</td>
		<td><img src="${root}/image/=.PNG" id="e" style="width:50px"></td>
		<td><span class="finalTotalPrice_span"></span> 원</td>
	</tr>
</table>

<br><br><br><br>

<div class="buybtn" onclick="location.href='buy'">주문하기</div>
<br><br>
</div>

</body>

<script type="text/javascript">
<!--수량추가(뭔지 모르겠음)-->
$('.btn-plus, .btn-minus').on('click', function(e) {
	  const isNegative = $(e.target).closest('.btn-minus').is('.btn-minus');
	  const input = $(e.target).closest('.input-group').find('input');
	  if (input.is('input')) {
	    input[0][isNegative ? 'stepDown' : 'stepUp']()
	  };
	});

</script>
</html>