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
 
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:wght@700&family=Poppins:wght@400;500;600&display=swap');
	.inputid,.inputpass {
		padding: 0 28px;
		cursor: pointer;
		margin-top: 5px;
		background-image: 
	}
	
	input::placeholder {
		font-size: 0.7em;
		padding-left: 5px;
	}
	
	span.bi {
		color: gray;
		position: relative;
		left: -266px;		
		top: 1px;
		font-size: 0.8em;
	}
	
	div.title {
		background-color: white;
		
	}
	
	div.title form{
		position:absolute;
		padding: 0 700px;
		box-sizing: border-box;
		margin-top: 50px;
	}
	
	div.title h1{
		text-align: center;
		padding: 0 0 20px 0%;
		border-bottom: 1px solid silver;
	}
	
	form .body{
		position: relative;
		border-bottom: 2px solid #adadad;
		margin: 30px 0;
	}
	
	.body input{
		width: 100%;
		padding: 0 5px;
		height: 40px;
		font-size: 16px;
		border: none;
		background: none;
		outline: none;
	}
	
	.body label{
		position: absolute;
		top: 50%;
		left: 5px;
		color: #adadad;
		transform:translateY(-50%);
		font-size: 16px;
		pointer-events: none;
	}
	
	.body span::before {
	 content: '';
	 position: absolute;
	 top: 40px;
	 left: 0;
	 width: 100%;
	 height: 2px;
	 background: #2691d9;
	 
	}
	

</style>



</head>
<body>
	<div class="title">
	<h1>로그인</h1>
	<form action="process" method="post">
	
	<div class="body">
		<label>User name</label><br>
		<input class="inputid" name="mId" type="text" placeholder="id"><span class="bi bi-person"></span><br>
		<span></span>
	</div>
	
	<div class="body">
		<label>Password</label><br>
		<input class="inputpass" name="mPassword" type="password" placeholder="pass word"><span class="bi bi-lock"></span><br>
		<span></span>
	</div>
		<input type="checkbox">로그인 상태 유지
		
		
		<a href="/member/joinform">sign up</a><br>
		<a href="/login/forgotid">forgot id??</a><br>
		<a href="/login/forgotpass">forgot password??</a><br>
		
		<button type="submit" class="login" >로그인</button><br>
		<button type="submit" class="login" >네이버</button><br>
		<button type="submit" class="login" >구글</button>
	</div>
		
	</form>
	</div>

	
	
			
				<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>