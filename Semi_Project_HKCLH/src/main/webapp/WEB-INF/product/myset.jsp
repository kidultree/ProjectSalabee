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
 	html, body{
        margin:0;
        padding:0;
        background-color:white;
    }
  .container{
			width:1080px;
			margin: 0 auto;
			position:absolute;
			right: 147px;
			top: 45%;
		}
	.product-header{
	width: 100%;
	height:172px;
	background-color:#fff;
	}
	.product-title{
	color: #000;
	font-size: 34px;
	lne-weight: 1em;
	font-weight:bold;
	position: absolute;
	right: 43%;
	top: 30%;
	}
		ul.tabs{
			margin: 0px;
			padding: 0px;
			list-style: none;
		}
		ul.tabs li{
			background: none;
			color: #222;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
		}

		ul.tabs li.current{
			background: #ededed;
			color: #222;
		}

		.tab-content{
			display: none;
			background: #ededed;
			padding: 15px;
		}

		.tab-content.current{
			display: inherit;
		}
		
    
.product_list {margin-left: 120px; list-style: none;}
/* .product_list:after {
content:"";
display:
clear:both;
} */
.product_list li {float:left; margin:0 20px 50px 0; position:relative; width:374px; height:501px; border: 1px solid #d9d9d9;}
.product_list li:hover{border-color: black;}
.product_list dl{padding:374px 0 0 0 ;}
.product_list dt{padding: 14px 15px 14px; border-top: 1px solid #f0f0f0;}
.product_list dt a { font-size: 16px; color: #1a1a1a; font-weight: bold; text-decoration: none; position:absolute; left:115px;}
.product_list .img { position: absolute; left:35px; top:0;}
.product_list .tags {padding: 0 0 0 0px; font-size: 15px; color:black; opacity: 0.7;  position: absolute; left: 50px; bottom: 45px;}
.product_list .btm {position: absolute; right: 3px; bottom:0; width: 99%; border-top: 1px solid #f0f0f0; background: #fafafa;}
.product_list .btm div { float:left; width: 40%; height: 30px; line-height: 30px; text-align: center; font-size: 12px; color:#767676;}
.product_list .btm div a {font-size:12px; color:#767676;}
.product_list div.info{ position: relative; left: 110px;}




</style>
</head>
<body>

   <div class="product-header">
   <div class="product-title">
   Myset
   </div>
   </div>
   <br><br><br><br><br><br><br><br><br><br><br>
   <div class="container">

		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">ALL</li>
			<li class="tab-link" data-tab="tab-2">봄</li>
			<li class="tab-link" data-tab="tab-3">여름</li>
			<li class="tab-link" data-tab="tab-4">가을</li>
			<li class="tab-link" data-tab="tab-4">겨울</li>
		</ul>
	
		<div id="tab-1" class="tab-content current">
			${dto.pcontent}
		</div>
		<div id="tab-2" class="tab-content">
			봄
		</div>
		<div id="tab-3" class="tab-content">
			여름
		</div>
		<div id="tab-4" class="tab-content">
			가을
		</div>
		<div id="tab-5" class="tab-content">
			겨울
		</div>
		
	</div>
<div class="content-box">
<c:forEach var="dto" items="${list}">
<ul class="product_list">

    <li>
      <dl>
        <dt><a href="#a"> ${dto.pname}</a></dt>
        <dd class="img"><a href="#a"><img src="../save/${dto.pphoto}" alt="이미지"></a></dd>
        <dd class="tags">${dto.pcontent} </dd>
        <dd class="btm">
          <div class="info">40ml / <fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원 / ${dto.prate}</div>
        
        </dd>
        </dl>
        </li>

       
  </ul>
                        </c:forEach>
</div>
  
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<!-- 등록 (관리자만) -->   
         <button type="button" class="btn btn-info" id="formbtn"
         onclick="location.href='form'">
         상품등록</button>
	

</body>
</html>