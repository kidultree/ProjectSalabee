<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
    
<style type="text/css">

	input::placeholder {
		font-size: 0.8em;
	}
</style>

<script type="text/javascript">
	$(function(){
		
		$("span.eye").click(function(){
			$("")
			
		});		
	});
	

</script>


</head>
<body>
	<form action="join" method="post">
	<table style="width: 500px;">
		<caption>회원가입</caption>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" placeholder="아이디를 입력해 주세요" required="required">
			</td>
		</tr>
		
		<tr>
			<th>이 름</th>
			<td>
				<input type="text" placeholder="이름을 입력해 주세요" required="required">
			</td>
		</tr>
	
		<tr>
			<th>비밀번호</th>
			<td>
				<input type="password" placeholder="숫자,영문,특수문자 조합 최소 8자" required="required"
				style="width: 300px;"><span class="bi bi-eye eye"/><span class="bi bi-eye-slash eyex"/>
			</td>
		</tr>
		
		<tr>
			<th>비밀번호 확인</th>
			<td>
				<input type="password" placeholder="비밀번호를 다시 입력해 주세요" required="required">
				<span class="bi bi-eye eye"/><span class="bi bi-eye-slash eyex"/>
			</td>
		</tr>
		
		<tr>
			<th>E-Mail</th>
			<td>
				<input type="text" placeholder="이메일을 입력해주세요" required="required">
				<select>
					<option>직접입력</option>
					<option value="">naver.com</option>
					<option>daum.net</option>
					<option>google.com</option>
					<option>nate.com</option>
				</select>
			</td>
		</tr>
	
	</table>
	</form>
</body>
</html>