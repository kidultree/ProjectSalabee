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
body{
	font-family: 'Jua';
}
hr{
	border-top:1px solid #ddd; 
}
.box{
	border-radius: 10px;
	width: 10px;
	height: 10px;
}
</style>
</head>
<body>
<div class="content" style="width: 680px;">
	
      <table>
      	<tr>
			<td style="font-size: 30px; font-weight :550;" height="100px;">${dto.sangpum}</td>
			<td colspan="2" width="300" align="right" style="color: gray">입고일 : ${dto.ipgoday}</td>
		<tr>
			<td width="620">단가 : <fmt:formatNumber value="${dto.price}" type="currency"/> </td>
			<td align="right"  width="100px;">
				<div class="box" style="background-color:${dto.color}"></div>
			</td>
			<td align="right"  width="50px;">
				<div>${dto.color}</div>
			</td>
		</tr>
      </table>
      <hr>
      ${dto.content }
      
      
      <div class="buttons" style="margin-left: 0px;">   
      <br>   
         <!-- 목록 -->   
         <button type="button" class="btn btn-primary" 
         onclick="location.href='list?currentPage=${currentPage}'">
         <span class="glyphicon glyphicon-list"></span>&nbsp;
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
</body>
</html>