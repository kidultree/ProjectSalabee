<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://kit.fontawesome.com/2d323a629b.js" crooslogin="annoymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
</head>

<style type="text/css">
    html, body{
        margin:0;
        padding:0;
        background-color:skyblue;
    }
    .navbar {
        display:flex;
        justify-content: space-between;
        align-items: center;
        background-color: black;
        padding: 18px 12px;
        z-index:4;      
       
    }
  	nav.navbar{
  	position : relative;
  	margin-bottom: 0px;
  	}
    .header{      
        position: sticky;      
        top: 0;  
      
          }
    .navbar_logo{
        color:white;
        text-align: center;
        position: relative;
        right: 200px;
        font-family: fantasy;
    }
    div.iconmenu{
        position:relative;
        right: 0px;
    }
   
    .navbar_menu{
    display: flex;
    list-style: none;
    padding-left:100px;
    position:relative;
    right:220px;
    top: 5px;
}
ul, ol, li {
    list-style:none; margin:0; padding:0;
    
}
.navbar_menu li{
    padding: 16px 26px;
    display: block;
}


.navbar a{
    text-decoration:  none;
    color: white;
    text-align: center;
    font-size: 3rem;
    margin-right: 10px;
}
.fa-bars:before {
    content: "\f0c9";
    font-size: 1.4rem;
    position: absolute;
    top: 12px;
    right: 3px;
}
.navbar_menu li a{
    text-align: center;
    text-decoration: none;
    font-size: 1.4rem;
    font-family: sans-serif;
}
.navbar_menu li a:hover{
  color: gold;
}
ul.navbar_menu > li ul.sub {
    display:block;
    position: relative;
    top: 30px;
    padding: 0px 0px;
     opacity: 0;
     height:0px;
    width:0px;
}

ul.navbar_menu > li:hover ul.sub {
    display:block;
    opacity: 1;
    height: 0px;
}

ul.navbar_menu > ul.sub:hover{
    opacity: 1;
}
ul.navbar_menu > li:hover ul.sub a{
color: gold;
}

/*오른쪽 메뉴*/
.navbar_menu2{
        display: flex;
    list-style: none;
    padding-left: 0px;
    position: absolute;
    right: 50px;
}
.navbar_menu2 li{
    padding: 8px 12px;
    display: block;
}
.navbar_menu2 li a{
    text-align: center;
    text-decoration: none;
    font-size: 0.9rem;
    font-family: sans-serif;
}
.navbar_menu2 li a:hover{
    color: gold;
}
/*header style end*/

/*오른쪾메뉴끝*/
/*

/*submenu*/
/*오른쪽 줄세개짜리 메뉴 end*/

/*반응형*/
@media screen and (max-width: 768px) {
    .navbar {
        flex-direction: column;
        align-items: flex-start;
        padding: 8px 24px;
        list-style : none;
        /*상단고정*/
        position: sticky;
        top: 0;
        z-index:4;
    }
    .navbar_menu{
        flex-direction: column;
        align-items: center;
        width: 100;
        float:left;
    }
    .navbar_menu li{
        width: 100;
        text-align: center;
        list-style: none;
    }
    .navbar_icons{
        justify-content: center;
        width:100%;
    }
}

/*body start*/
#bg{
   
    left:0;
    top:0;
    width:auto;
    height:auto;
    min-width:100%;
    min-height:100%;
    z-index: 0px; <!--수정필요-->
   
}
/*body end*/
/* 움직이는 영업시간*/
.runtime {
    position: fixed;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 70px;
    background: #fff;
    text-align: center;
    line-height: 70px;
    font-size: 12px;
    color: #222;
    z-index: 100;
    letter-spacing: 1px;
}
/*영업끝
/*footer style*/
.footer{
    height:100px;
}
#wrap{
    height: 230px;
    min-height: 200px;
    position: relative;
    width: 100%;
    background-color: black;
    text-align: center;
}
#wrap section a{
    font-size:3rem;
    font-family: fantasy;
   
}
#wrap a{
    color: white;
    text-align: center;
    font-size: 0.8rem;
    text-decoration: none;
}
footer p{
    color: white;
    font-family: 'Noto+Sans+KR';
    font-size: 1.2rem;
}
footer p1{
    font-size: 0.6rem;
}
footer{
    width: 100%;
    height: 130px;
    bottom: 0px;
    position: absolute;
}
section{
    padding-bottom: 0px;
    height:300px;
}
 .navbar_icons{
 color:white;
 }
/*footer end*/

</style>
<body>
   <!--헤드-->
    <div class="header" id="header">
    <nav class="navbar">
        <ul class= "navbar_menu">
           
          <li><a href="">BRAND </a></li>
         
            <li><a href="">PERFUME</a>
                <ul class="sub">
                    <li><a href="#">MENU1</a></li>
                    <li><a href="www.nate.com">MENU2</a></li>              
                    <li><a href="www.naver.com">MENU#</a></li>
                        </ul></li>
                 
                   
            <li><a href="">COMMUNITY</a>
                <ul class="sub">
            <li><a href="/notice/list">Notice</a></li>
            <li><a href="">QnA</a></li>              
            <li><a href="">Review</a></li>
                </ul>
            </li>
        </ul>
       
         
   
        <div class = "navbar_logo">
           <!-- 로고 <i class="fab fa-accusoft"></i> -->
            <a href="">FragBit</a>
        </div>
 <div class="iconmenu">
       <a href="#"> <img src="${root}/image/login.png" id="loginicon" style="width:30px"> </a>
       <a href="#"> <img src="${root}/image/cart.png" id="carticon" style="width:30px"></a>
   
    </div>

       
        <!-- <a href="" class="navbar_toogleBtn">
        <i class="fas fa-bars"></i>
        </a>-->
        </div>
    </nav>
</div>
    <!--헤드 끝-->
    <!-- 임시본문 -->
   
   

<!-- 경계선 -->
<div class="layout">
	<div class="title">
		<tiles:insertAttribute name="title"/>
		
	</div>
	<div class="main">
		<tiles:insertAttribute name="main"/>
	</div>
	<div class="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
	
</div>
</body>
</html>









