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
    
 
 
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<link rel="stylesheet" type="text/css" href="${root}/css1/animate.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/animsition.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/main.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/material-design-iconic-font.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/select2.min.css">
<link rel="stylesheet" type="text/css" href="${root}/css1/util.css">

<script type="text/javascript" src="${root}/js1/analytics.js"></script>
<script type="text/javascript" src="${root}/js1/animsition.min.js"></script>
<script type="text/javascript" src="${root}/js1/bootstrap.min.js"></script>
<script type="text/javascript" src="${root}/js1/countdowntime.js"></script>
<script type="text/javascript" src="${root}/js1/daterangepicker.js"></script>
<script type="text/javascript" src="${root}/js1/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${root}/js1/main.js"></script>
<script type="text/javascript" src="${root}/js1/moment.min.js"></script>
<script type="text/javascript" src="${root}/js1/popper.js"></script>
<script type="text/javascript" src="${root}/js1/select2.min.js"></script>



<style type="text/css">

div.all{
	position:absolute;
	left: 570px;
}

div.all div.url{
	position: relative;
	top: -40px;
}
div.all div.signup{
	position: relative;
	top: -150px;
}

</style>



</head>
<body>
<!-- <div class="title">
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
	</div> -->


	<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54 all">
		<form class="login100-form validate-form">
			<span class="login100-form-title p-b-49"> Login </span>
			<div class="wrap-input100 validate-input m-b-23"
				data-validate="Username is reauired">
				<span class="label-input100">Username</span> 
					<input class="input100"	type="text" name="username" placeholder="Type your username">
				<span class="focus-input100" data-symbol=""></span>
			</div>
			
			<div class="wrap-input100 validate-input"
				data-validate="Password is required">
				<span class="label-input100">Password</span> 
					<input class="input100" type="password" name="pass" placeholder="Type your password">
				<span class="focus-input100" data-symbol=""></span>
			</div>
			
			<div class="text-right p-t-8 p-b-31">
				<a href="/login/findid"> Forgot Id? </a><br>
				<a href="/login/findpass"> Forgot password? </a>
			</div>
			
			<div class="container-login100-form-btn">
				<div class="wrap-login100-form-btn">
					<div class="login100-form-bgbtn"></div>
					<button class="login100-form-btn">Login</button>
				</div>
			</div>
			
			<div class="txt1 text-center p-t-54 p-b-20 url">
				<span> Or Sign Up Using </span>
			</div>
			<div class="flex-c-m url">
				<a href="#" class="login100-social-item bg1"> <i
					class="fa fa-facebook"></i>
				</a> <a href="#" class="login100-social-item bg2"> <i
					class="fa fa-twitter"></i>
				</a> <a href="#" class="login100-social-item bg3"> <i
					class="fa fa-google"></i>
				</a>
			</div>
			<div class="flex-col-c p-t-155 signup">
				<span class="txt1 p-b-17"> Or Sign Up Using </span> <a href="/member/joinform"
					class="txt2"> Sign Up </a>
			</div>
		</form>
	</div>

	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br>

</body>
</html>