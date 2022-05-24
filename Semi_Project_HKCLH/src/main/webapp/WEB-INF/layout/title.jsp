<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fragbit</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=
Noto+Sans+KR&family=Radio+Canada:wght@300&family=
Roboto:wght@100&family=
Signika+Negative:wght@300&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">

</style>

<script type="text/javascript">
</script>
</head>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<body>
   <!--헤드-->
    <div class="header" id="header">
    <nav class="navbar">
        <ul class= "navbar_menu">
           
          <li><a href="">BRAND </a></li>
            
            <li class="main"><a href="">PERFUME</a> 
            
                <ul class="sub">
                    <li class=><a href="#">2.5ml</a></li>
                    <li><a href="#">40ml</a></li>              
                    <li><a href="#">GOODS</a></li>
                        </ul></li>
                 
                   
            <li class="main"><a href="">COMMUNITY</a>
                <ul class="sub">
            <li><a href="#">Q&amp;A</a></li>
            <li><a href="#">REVIEW</a></li>              
            <li><a href="/notice/list">FAQ</a></li>
                </ul>
            </li>
        </ul>
       
       <script type="text/javascript">
       	$("li.main").click(function(){
       		
       		console.log(1);
       		$(this).next().next().toggle();
       	})
       </script>
         
   
        <div class = "navbar_logo">
          
            <a href="/">FragBit</a>
        </div>
 <div class="iconmenu">
       <a href="/login/loginform"> <img src="${root}/image/login.png" id="loginicon" style="width:30px"> </a>
       <a href="/cart/cartform"> <img src="${root}/image/cart.png" id="carticon" style="width:30px"></a>
   
    </div>

      <!--로그인  

   <a href="/">
   <img src="${root}/image/title.png" width="1000"></a>
   <div class="login">
      <c:if test="${sessionScope.loginok==null}">
         <button type="button" class="btn btn-success" style="width:100px;" 
         onclick="location.href='${root}/login/form'">로그인</button>
      </c:if> 
         
      <c:if test="${sessionScope.loginok!=null}">
         <b>${sessionScope.loginname}(${sessionScope.loginid}) 님</b>
         &nbsp;&nbsp;
         <button type="button" class="btn btn-danger"
         style="width: 80px "height: 40px" 
         onclick="logout()">Logout</button>
      </c:if>
      </div>
      <script type="text/javascript">
         function logout()
         {
            $.ajax({
               type:"get",
               dataType:"text",
               url:"${root}/login/logout",
               success: function(){
                  location.reload();
               }
            });
         }
      </script>
   로그인 -->
        </div>
    </nav>
</div>
    <!--헤드 끝-->
</body>
</html>