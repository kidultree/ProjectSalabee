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
<div class="content" style="width: 680px;">

      <table>
      	<tr>
      		<td rowspan="6">${dto.pphoto}</td>
      		<td rowspan="6">${dto.pname}</td>
      	</tr>
		<tr>
			<td><fmt:formatNumber value="${dto.pprice}" type="currency"/>원</td>
		</tr>
		<tr>	
			<td>
				 <label for="quantity">수량 선택</label> <!-- 값얻어서 계산해줘야함 -->
			     <input type="number" id="quantity" name="quantity" min="1">
			</td>
			<td align="right"  width="50px;">
				<div>${dto.color}</div>
			</td>
		</tr>
      </table>
      <hr>
      ${dto.pcontent}
      
      
      <div class="buttons" style="margin-left: 0px;">   
      <br>   
         <!-- 목록 -->   
         <button type="button" id="listbtn"
         onclick="location.href='list?currentPage=${currentPage}'">
         목록</button>
          
         <!-- 수정삭제(본인것만) -->
<%--          <c:if test="${sessionScope.loginok!=null}"> --%>
<%--             <c:if test="${dto.id==sessionScope.loginid}"> --%>
<!--                <button type="button" class="btn btn-warning" id="upbtn"    -->
<%--                onclick="location.href='updateform?num=${dto.num}&currentPage=${currentPage}'"> --%>
<!--                <span class="glyphicon glyphicon-edit"></span>&nbsp; -->
<!--                수정</button> -->
               
               <button type="button" class="btn btn-danger" id="delbtn">  
               <span class="glyphicon glyphicon-trash"></span>&nbsp;
               삭제</button>
               
               <!-- 삭제시 컨펌 -->
               <script type="text/javascript">
               $(document).ready(function() {
            		$("#delbtn").click(function(){
            			var choice = confirm("삭제 하시겠습니까?");
            			var del = "delete?num=${dto.num}&currentPage=${currentPage}";
            			if(choice){
            				location.assign(del);
            				alert("삭제되었습니다.");
            			};
            		});
            		
            	});
               </script>
<%--             </c:if> --%>
<%--          </c:if> --%>
      </div> 
      <br><br>
   </div>
   
   <!-- 카트 담기 버튼 -->
<!--    <form action="/cart/insert"> -->
<!--    	<input type="submit"/> -->
<!--    </form> -->
	  <input type="hidden" value="${dto.pnum}" id="pnum"/>
   <button type="button" class="btn btn-default" id="addcart">장바구니 추가</button>
    
</body>

<!-- 카트 담기 스크립트 -->
<script type="text/javascript">
$(document).ready(function() {
	$("#addcart").click(function(){
		
		var pnum = ${dto.pnum};
		
		$.ajax({
         type:"post",
         dataType:"json",
         url:"/cart/insert",
         data:{
        	 "mid":$("#mid").val()
        	 "pnum":$("#pnum").val()
        	 "cquantity":$("#cquantity").val()
        	 
         },
         success:function(data){
        	alert(data.message);
         }   
        });
	}
	});
</script>
</html>