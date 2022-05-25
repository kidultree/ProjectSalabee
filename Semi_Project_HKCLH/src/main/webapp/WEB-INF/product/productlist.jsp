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
 		height: 3000px;
        margin:0;
        padding:0;
        background-color:white;
    }
.product_list {margin-left: -10pxs; list-style: none;}
.product_list li { margin:0 20px 50px 0; position:relative; width:374px; height:501px; border: 1px solid #d9d9d9;}
.product_list li:hover{border-color: white;}
.product_list dl{padding:374px 0 0 0 ;}
.product_list dt{padding: 14px 15px 14px; border-top: 1px solid #f0f0f0;}
.product_list dt a { font-size: 16px; color: #1a1a1a; font-weight: bold; text-decoration: none; position:absolute; left:115px;}
.product_list .img { position: absolute; left:0; top:0;}
.product_list .tags {padding: 0 0 0 0px; font-size: 15px; color:black; opacity: 0.7;  position: absolute; left: 50px; bottom: 45px;}
.product_list .btm {position: absolute; right: 3px; bottom:0; width: 100%; border-top: 1px solid #f0f0f0; background: #fafafa;}
.product_list .btm div { float:left; width: 40%; height: 30px; line-height: 30px; text-align: center; font-size: 12px; color:#767676;}
.product_list .btm div a {font-size:12px; color:#767676;}
.product_list .btm div a img { padding:0 4px 0 0; position: relative; top: 3px;}
.product_list div.info{ position: relative; left: 110px;}

</style>
</head>
<body>
  
<div class="content-box">
<ul class="product_list">
<c:forEach var="dto" items="${list}">
    <li>
      <dl>
        <dt><a href="#a">${dto.pnum} ${dto.pname}</a></dt>
        <dd class="img"><a href="#a"><img src="../save/${dto.pphoto}" alt="투바이미지"></a></dd>
        <dd class="tags">#차분한 #깔끔한 #겨울숲</dd>
        <dd class="btm">
          <div class="info">40ml /<fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원</div>
        
        </dd>
        </dl>
        </li>
<li>
        <dl>
          <dt><a href="#a">wind 02. 백색향</a></dt>
          <dd class="img"><a href="#a"><img src="img/2번.png" alt="투바이미지"></a></dd>
          <dd class="tags">#부드러운 #사랑스러운 #비누향</dd>
          <dd class="btm">
            <div class="info">40ml / 48,000 </div>
          
          </dd>
          </dl>
          </li>
        <li>
          <dl>
            <dt><a href="#a">wind 01. 오후의 디저트</a></dt>
            <dd class="img"><a href="#a"><img src="img/3번.png" alt="투바이미지"></a></dd>
            <dd class="tags">#달달한 #프루티 #따뜻한</dd>
            <dd class="btm">
              <div class="info">40ml /19,200</div>
           
            </dd>
            </dl>
            </li>
            <li>
              <dl>
                <dt><a href="#a">drop 01. 물기머금은장미
                </a></dt>
                <dd class="img"><a href="#a"><img src="img/물기머금은장미.png" alt="투바이미지"></a></dd>
                <dd class="tags">#청량한 #투명한 #풀숲</dd>
                <dd class="btm">
                  <div class="info">40ml/ 48,000</div>
                
                </dd>
                </dl>
                </li>
                <li>
                  <dl>
                    <dt><a href="#a">drop 02. 물속으로다이빙</a></dt>
                    <dd class="img"><a href="#a"><img src="img/물속으로다이빙.png" alt="투바이미지"></a></dd>
                    <dd class="tags">#시원한 #샤프한 #물</dd>
                    <dd class="btm">
                      <div class="info">40ml / 19,200</div>
                     
                    </dd>
                    </dl>
                    </li>
                    <li>
                      <dl>
                        <dt><a href="#a">dorp 03. 상큼달달과즙</a></dt>
                        <dd class="img"><a href="#a"><img src="img/상큼달달과즙.png" alt="투바이미지"></a></dd>
                        <dd class="tags">#달콤한 #귀여운 #과일</dd>
                        <dd class="btm">
                          <div class="info">40ml / 48,000</div>
                        
                        </dd>
                        </dl>
                        </li>
                        </c:forEach>
  </ul>
</div>
  

<!-- 등록 (관리자만) -->   
         <button type="button" class="btn btn-info" id="formbtn"
         onclick="location.href='form'">
         상품등록</button>
	
 
</body>
</html>