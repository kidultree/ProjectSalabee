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


<br><br><br><br><br>


<div class="title">Cart</div>
   
   <!-- 카트 첫 행 -->
   <table class="cart-table" style="width:1200px;">
	<tr>
		<th class="th_width_1"></th>
		
		<th class="th_width_2">
		<input type="checkbox" id="allcheck" >   전체선택    |     
		<span id="Cartdel">선택삭제</span></th>
		
		<th class="th_width_3">제품정보</th>	
		<th class="th_width_4">수량</th>
		<th class="th_width_5">금액</th>
		<th></th>
	</tr>
	
	<c:forEach var="cList2" items="${cList}" varStatus="i">
	<tr>
		<td class="cart_info_td">
				<input type="hidden" class="individual_cquantity_input" value="${cList2.cquantity}">
				<input type="hidden" class="individual_totalPrice_input" value="${cList2.SUM_PRICE}">
	</td>
		
		<!-- 체크박스 -->
		<td><input type="checkbox" class="del" cid="${cList2.cid}"></td>
		
		<!-- 이미지&제품정보 -->
		<td><img src="${root}/save/${cList2.pphoto}" style="width:100px;">&nbsp;&nbsp;${cList2.pname}</td>
		
		<!-- 수량선택 -->	
		<td>
			<div class="number-input">	
				<button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
				<input class="quantity" min="0" name="quantity" value="${cList2.cquantity}" type="number" id="quantity">
				<button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
			</div>
		</td>
		
		<!-- 해당 상품 금액 -->
		<td><span class="sum_price"><fmt:formatNumber value="${cList2.SUM_PRICE}" pattern="#,### 원" /></span></td>

		</tr>
	</c:forEach>
</table>

<br><br><br><br><br><br><br>

<div class="total">
	<div class="total-head">
		<div class="total-1">총 상품가격</div>
		<div class="total-2"></div>
		<div class="total-1">추가금액</div>
		<div class="total-2"></div>
		<div class="total-1">배송비</div>
		<div class="total-2"></div>
		<div class="total-1">총 결제금액</div>
	</div>
	<div class="total-body">
		<div class="total-1"><span class="totalPrice_span"></span> 원</div>
		
		<div class="total-2"><img src="${root}/image/-.PNG"></div>
		
		<div class="total-1">0원</div>
		
		<div class="total-2"><img src="${root}/image/+.PNG"></div>
		
		<div class="total-1"><span class="delivery_price"></span>원</div>
		
		<div class="total-2"><img src="${root}/image/=.PNG"></div>
		
		<div class="total-1"><span class="finalTotalPrice_span"></span> 원</div>
	</div>
	
</div>

<div class="buybtn" onclick="location.href='buy'">주문하기</div>
<br><br>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>


</body>

<script type="text/javascript">
	$(function(){
		
		/* 체크박스 전체선택 */
		$("#allcheck").click(function(){
			var chk = $(this).is(":checked"); //체크상태 확인
			console.log(chk);
			if(chk){
				$(".del").prop("checked",true); //속성변경(true/false일 경우 prop사용)
			}else{
				$(".del").prop("checked",false);
			}
		});
		
		/* delete 버튼 - 삭제 */
		$("#Cartdel").click(function(){
			//체크 수 구하기
			var len = $(".del:checked").length;
			//0명일 경우
			if(len==0){
				alert("삭제할 상품을 선택해 주세요")
				return;
			}
			//체크한 곳의 cid값 가져오기
			var cids = "";
			$(".del:checked").each(function(i, element){
				var cid = $(this).attr("cid");
				cids+=cid+",";
			});
			//마지막 컴마(,) 제거
			cids = cids.substring(0, cids.length-1);
			//alert(nums);
			
	         $.ajax({
	             type:"get",
	             dataType:"text",
	             data:{"cids":cids},
	             url:"delete",
	             success:function(data){
	                //새로고침
	                location.reload();
	             }
	          });
	       });
	    });

</script>


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