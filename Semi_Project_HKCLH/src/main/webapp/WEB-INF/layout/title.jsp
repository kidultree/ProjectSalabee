<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<script type="text/javascript">
</script>
</head>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<body>

	<div class="title">
		<span>Brand</span>
		<span>Shop</span>
		<span style="font-size: 20px;">Title</span>
		<span>login</span>
		<a href="${root}/member/joinform" style="cursor: pointer;">join</a>
	</div>

</body>
</html>