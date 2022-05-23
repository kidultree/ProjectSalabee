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
<link
href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
rel="stylesheet">
<style type="text/css">
body {
font-size: 1.5rem;
font-family: 'Gowun Dodum';
}

table.notice{
font-family: 'Gowun Dodum';
}

table{
width: 800px;
margin-left: 400px;
font-family: 'Gowun Dodum';
border-collapse: collapse;

}

</style>

</head>
<body>
<div class="table">
<h3><b>공지사항</b></h3>
<hr>

<table class="table table-bordered" notice>
	<tr bgcolor="#FFFFFF" align="center";>
		<th width="100" >번호</th>
		<th width="350">제목</th>
		<th width="800">내용</th>
		<th width="400">작성일</th>
	</tr>
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${nNum}</td>
			<td>${nTitle}</td>
			<td>${nContent}</td>
			<!-- 사진이 들어있는 경우 출력하기 -->
					<c:if test="${dto.nphoto!='' }">
						<img src="../${dto.nphoto }" width="80" height="80" border="1">
						&nbsp;&nbsp;
					</c:if>
			<td><fmt:formatDate value="${nDate}"
			pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
	</c:forEach>
</table>

		 <button type="button" class="btn btn-success"
		 style="width: 100px;" onclick="location.href='form'">
		 	<span class="glyphicon glyphicon-heart">공지쓰기</span>
		 </button>
		 </div>
		 </body>
		 </html>