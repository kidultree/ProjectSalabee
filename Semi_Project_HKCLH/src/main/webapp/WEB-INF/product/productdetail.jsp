<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 

<%@ taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix= "fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
<!DOCTYPE html>
<html>
<head> 
<link rel="icon" href="/favicon.ico">
<link rel="icon" href="http://localhost:9002/product/detail?pnum=#" />
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>   
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />

<style type="text/css">
*{
	font-family: 'Noto Sans KR', sans-serif;
}
.content{
	position: relative;
	top : 100px;
}
/*tab*/
body{
		margin-top: 100px;
		line-height: 1.6
	}
		.container{
			width:1040px;
			margin: 0 auto;
		}

		ul.tabs{
			margin-left: 150px;
			padding: 0px;
			list-style: none;
		}
		ul.tabs li{
			text-align:center;
			min-width: 125px;
			background: none;
			color: #636363;
			display: inline-block;
			padding: 10px 15px;
			cursor: pointer;
			
		}

		ul.tabs li.current{
			background: white;
			border-bottom: solid black;
			color: black;
			font-weight: 600;
		}

		.tab-content{
			display: none;
			background: white;
			padding: 15px;
		}

		.tab-content.current{
			display: inherit;
		}

.tab-3con th{
	width: 240px;
}
.tab-3con th,td{
	vertical-align: top;
}

		
/*옵션테이블*/
.optiontable, .optiontable td { border: 1px solid #E4E5E1; } 
.optiontable{
	position: relative;
	bottom : 30px;
}
.optiontable td,tr{
	max-height: 120px;
}
		
/*전체 lay*/
.content{
	position: relative;
	left: 400px;
	width: 1100px;
}
.leftlay{
	position: relative;
	left: 40px;
	top :20px;
}
.rightlay{
	position: relative;
	left: 160px;
	top :20px;
}

/*x버튼*/
span.adel{
   	margin-left: 10px;
   	color: magenta;
   	cursor: pointer;
   }
   
/*셀렉트박스*/
select { 
	position: relative;
	bottom :7px;
	float:right;
	width: 340px; 
	padding: .6em .8em; /* 여백으로 높이 설정 */ 
	font-family: inherit; /* 폰트 상속 */ 
	background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
	border: 1px solid #ddd; 
	border-radius: 0px; /* iOS 둥근모서리 제거 */ 
	-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
	-moz-appearance: none; appearance: none; 
	
}

/*수량추가 input box*/
#quantity{
	width: 100px; 
}
input[type="number"] {
  -webkit-appearance: textfield;
  -moz-appearance: textfield;
  appearance: textfield;
}

input[type=number]::-webkit-inner-spin-button,
input[type=number]::-webkit-outer-spin-button {
  -webkit-appearance: none;
}

.number-input {
  border: 1px solid #ddd;
  display: inline-flex;
  
}

.number-input,
.number-input * {
  box-sizing: border-box;
  width: 100px;
}

.number-input button {
  outline:none;
  -webkit-appearance: none;
  background-color: transparent;
  border: none;
  align-items: center;
  justify-content: center;
  width: 3rem;
  height: 3rem;
  cursor: pointer;
  margin: 0;
  position: relative;
  font-size: 10px;
}

.number-input button:after {
  display: inline-block;
  position: absolute;
  font-family: "Font Awesome 5 Free"; 
  font-weight: 900;
  content: '\f077';
  transform: translate(-50%, -50%) rotate(180deg);
}
.number-input button.plus:after {
  transform: translate(-50%, -50%) rotate(0deg);
}

.number-input input[type=number] {
  font-family: sans-serif;
  max-width: 5rem;
  padding: .5rem;
  border: 1px solid #ddd;
  border-width: 0 1px;
  font-size: 1.3rem;
  height: 3rem;
  font-weight: bold;
  text-align: center;
}

.directbtn{
	width:187px;
	height:50px;
	font-weight : 550;
	background-color: white; border: 1.5px solid black; color: black; padding: 10px 0;
	text-align: center; text-decoration: none; display: inline-block;
	font-size: 15px; margin: 4px; cursor: pointer;
}
.cartbtn{
	width:187px;
	height:50px;
	font-weight : 550;
	background-color: black; border: 1.5px solid black; color: white; padding: 10px 0;
	text-align: center; text-decoration: none; display: inline-block;
	font-size: 15px; margin: 4px; cursor: pointer;
}

/*이미지 슬라이드*/
	/*GLOBALS*/
	*{margin:0; padding:0; list-style:none;}
	a{text-decoration:none; color:#666;}
	a:hover{color:#1bc1a3;}
	body, hmtl{background: #ecf0f1; font-family: 'Anton', sans-serif;}
	
	
	#wrapper{
	  width:480px;
	  margin:50px auto;
	  height:600px;
	  position:relative;
	  bottom:80px;
	  color:#fff;
	  text-shadow:rgba(0,0,0,0.1) 2px 2px 0px;  
	}
	
	#slider-wrap{
	  width:480px;
	  height:600px;
	  position:relative;
	  overflow:hidden;
	}
	
	#slider-wrap ul#slider{
	  width:100%;
	  height:100%;
	  
	  position:absolute;
	  top:0;
	  left:0;   
	}
	
	#slider-wrap ul#slider li{
	  float:left;
	  position:relative;
	  width:480px;
	  height:600px; 
	}
	
	#slider-wrap ul#slider li > div{
	  position:absolute;
	  top:20px;
	  left:35px;  
	}
	
	#slider-wrap ul#slider li > div h3{
	  font-size:36px;
	  text-transform:uppercase; 
	}
	
	#slider-wrap ul#slider li > div span{
	  font-family: Neucha, Arial, sans serif;
	  font-size:21px;
	}
	
	#slider-wrap ul#slider li img{
	  display:block;
	  width:100%;
	  height: 100%;
	}
	
	
	/*btns*/
	.btns{
	  position:absolute;
	  width:50px;
	  height:60px;
	  top:50%;
	  margin-top:-25px;
	  line-height:57px;
	  text-align:center;
	  cursor:pointer; 
	  background:rgba(0,0,0,0.1);
	  z-index:100;
	  
	  
	  -webkit-user-select: none;  
	  -moz-user-select: none; 
	  -khtml-user-select: none; 
	  -ms-user-select: none;
	  
	  -webkit-transition: all 0.1s ease;
	  -moz-transition: all 0.1s ease;
	  -o-transition: all 0.1s ease;
	  -ms-transition: all 0.1s ease;
	  transition: all 0.1s ease;
	}
	
	.btns:hover{
	  background:rgba(0,0,0,0.3); 
	}
	
	#next{right:-50px; border-radius:7px 0px 0px 7px;}
	#previous{left:-50px; border-radius:0px 7px 7px 7px;}
	#counter{
	  top: 30px; 
	  right:35px; 
	  width:auto;
	  position:absolute;
	}
	
	#slider-wrap.active #next{right:0px;}
	#slider-wrap.active #previous{left:0px;}
	
	
	/*bar*/
	#pagination-wrap{
	  min-width:140px;
	  margin-top:560px;
	  margin-left: auto; 
	  margin-right: auto;
	  height:15px;
	  position:relative;
	  text-align:center;
	  
	}
	
	#pagination-wrap ul {
	  width:100%;  
	}
	
	#pagination-wrap ul li{
	  display: inline-block;
	  width:70px;
	  height:5px;
	  background:#fff;
	  opacity:0.5;
	  position:relative;
	  
	}
	
	#pagination-wrap ul li.active{
	  width:70px;
	  height:5px;
	  background-color:black;
	  opacity:2;
	  box-shadow:rgba(0,0,0,0.1) 1px 1px 0px; 
	}
	
	/*Header*/
	h1, h2{text-shadow:none; text-align:center;}
	h1{ color: #666; text-transform:uppercase;  font-size:36px;}
	h2{ color: #7f8c8d; font-family: Neucha, Arial, sans serif; font-size:18px; margin-bottom:30px;} 
	
	
	
	
	/*ANIMATION*/
	#slider-wrap ul, #pagination-wrap ul li{
	  -webkit-transition: all 0.3s cubic-bezier(1,.01,.32,1);
	  -moz-transition: all 0.3s cubic-bezier(1,.01,.32,1);
	  -o-transition: all 0.3s cubic-bezier(1,.01,.32,1);
	  -ms-transition: all 0.3s cubic-bezier(1,.01,.32,1);
	  transition: all 0.3s cubic-bezier(1,.01,.32,1); 
	}

</style>
</head>
<body>
<div class="content">
	<div class="leftlay">
		
		<div id="wrapper" style="float: left;">
	     <div id="slider-wrap">
	        <ul id="slider">
	          <li>               
				<img  src="../save/${dto.pphoto}" style="width: 480px; height: 600px" align="left">
	          </li>
	          <li>               
				<img  src="../save/detailpphoto.jpg" style="width: 480px; height: 600px" align="left">
	          </li>     
	         </ul>   
	           <!--controls-->
	          <div class="btns" id="next"><i class="fa fa-arrow-right"></i></div>
	          <div class="btns" id="previous"><i class="fa fa-arrow-left"></i></div>
	          <div id="counter"></div>
	          
	          <div id="pagination-wrap">
	            <ul>
	            </ul>
	          </div>
	          <!--controls-->               
	      </div>
	  	 </div>
	
	</div> <!-- leftlay -->
	
	
	
	<div class="rightlay">
      <table class="optiontable" style="width: 400px; height: 650px" >
      	<tr>
      		<td style="font-size: 28px; font-weight: 600;">${dto.pname}</td>
      	</tr>
		<tr style="text-align: right; font-weight: 600;">
			<td><fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원</td>
		</tr>
		
		<!-- ajax로 구현 -->
		<!-- 옵션 선택마다 수량추가 tr이 추가되어야함(이때 옵션에 따른 가격반영된 tr이어야함) -->
		<!-- 삭제도 가능해야함 by span태그 <span class='glyphicon glyphicon-remove adel' idx="+d.idx+"></span>-->
		<!-- 이미 선택된 옵션일시 이미 선택된 옵션이라는 알럿 띄워줘야함 "아래 리스트에서 이미 선택된 옵션을 삭제 후 다시 선택해 주세요."-->
		<!-- 최종적으로 수량추가 tr에 value(수량)에 따라 총 금액 ++(상품가_옵션포함*수량) 되어야함 -->
		<!-- But, goods는 수량추가만 -->
		<tr>
			<td><div style="float: left; display: flex;">옵션 &nbsp;</div>
				<select name="pop" id="pop" style="font-size: 15px; color: gray;">
				    <option value="" selected="selected" disabled="disabled">&nbsp;
				    - 옵션을 선택해주세요 -</option>
				    <option value="no">선택안함</option>
				    <option value="40">40ml</option>
				    <option value="80">80ml</option>
				</select>
			</td>
		</tr>
		<tr>	
			<td>
				<span style="width: 80px;">수량 선택 &nbsp;</span>
				<div class="number-input">
				  <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()" class="minus"></button>
				  <input class="quantity" min="0" name="quantity" value="1" type="number" id="quantity">
				  <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()" class="plus"></button>
				</div>
			</td>
		</tr>
		
		<tr>
			<td style="border-top: 1px solid #B6B7B4;">
				<div style="float: left;"><br>총 상품금액</div>
	      	    <div style="float: right; font-weight: 600;"><br>
	            <fmt:formatNumber value="${dto.pprice}" type="number" maxFractionDigits="3"/>원
	        	</div>
			</td>
		</tr>
		
		<tr>	
			<td style="height: 120px;">
				 <button class="directbtn">바로 구매</button>
				 <button class="cartbtn">장바구니</button>
			</td>
		</tr>
      </table>
    
      <br><br><br><br><br>
      </div><!-- right -->
      <!-- tab -->
      <div class="container">

		<ul class="tabs">
			<li class="tab-link current" data-tab="tab-1">상세정보</li>
			<li class="tab-link" data-tab="tab-2">사용법 및 주의사항</li>
			<li class="tab-link" data-tab="tab-3">배송 및 반품안내</li>
			<li class="tab-link" data-tab="tab-4">상품후기</li>
			<li class="tab-link" data-tab="tab-4">상품문의</li>
		</ul>
	
		<div id="tab-1" class="tab-content current">
			${dto.pcontent}
		</div>
		<div id="tab-2" class="tab-content">
			<br><br>
			<img src="../save/use.jpg" style="width: 1000px;"><br><br>
			귀 뒤나 손목 안쪽 등 맥박이 느껴지거나 체온이 높은 부위에 가볍게 1~2회 뿌려줍니다.<br>
			기능성화장품 심사필여부 : 해당사항 없음<br>				
			사용시 주의사항 : 1) 화장품 사용 시 또는 사용 후 직사광선에 의하여 사용부위가 붉은 반점, 부어오름 또는 가려움증 등의 이상 증상이나 부작용이 있는 경우 전문의 등과 상담 할 것 <br>
			2) 상처가 있는 부위 등에는 사용을 자제할 것 <br>
			3) 안구 및 점막에 묻지 않도록 주의하고 묻었을 경우 즉시 흐르는 물에 씻어낸 후 의사와 상의할 것 <br><br>
			[보관 및 취급시의 주의사항] <br>가) 어린이의 손에 닿지 않는 곳에 보관할 것 <br>나) 직사광선을 피해서 보관할 것<br>
			품질보증기준 : 공정거래위원회 고시 소비자분쟁해결기준에 의해 보상해 드립니다.
		</div>
		<div id="tab-3" class="tab-content">
			<br><br><br><br>
			<table style="border: none; width: 1000px; height: 210px; font-size: 20px;"  class="tab-3con" >
				<tr>
					<th>환불보증기준</th>
					<td>출고일로부터 7일이내에 개봉하지 않은 새 제품 (개봉흔적X)일 경우에 가능합니다.</td>
				</tr>
				<tr>
					<th>품질보증기준</th>
					<td>상품에 이상이 있을경우 공정거래위원회 고시 소비자분쟁해결 기준에 의해 보상해드립니다.</td>
				</tr>
				<tr>
					<th>소비자상담관련 전화번호</th>
					<td>소비자 상담실 : 1544-5012</td>
				</tr>
				<tr>
					<th>예상배송기간</th>
					<td>주문 후 1~2일(예약상품과 입고지연상품 제외<br>택배사 상황에 따라 지연될 수도 있으니 양해부탁드립니다.</td>
				</tr>
				
			</table>
		</div>
		<div id="tab-4" class="tab-content">
			상품후기
		</div>
		<div id="tab-5" class="tab-content">
			상품문의
		</div>
		
	</div><!-- container -->
	
	<br><br><br>
	
	<!-- tab -->
	<script type="text/javascript">
		$(document).ready(function(){
			$('ul.tabs li').click(function(){
				var tab_id = $(this).attr('data-tab');

				$('ul.tabs li').removeClass('current');
				$('.tab-content').removeClass('current');

				$(this).addClass('current');
				$("#"+tab_id).addClass('current');
			});	
		});
	</script>
	
	
     
      <button type="button" class="btn btn-default go-top" id="go-top"
		style="position: fixed; right: 70px; bottom:120px;">
		<span class="glyphicon glyphicon-chevron-up"></span>
	  </button>
	  <script type="text/javascript">
	  <!-- 위로가기 플로팅 -->
		    /* 클릭시 스크롤 이동 */
			$(document).ready(function($) {
			    $(".scroll_move").click(function(event){
			            event.preventDefault();
			            $('html,body').animate({scrollTop:$(this.hash).offset().top}, 600);
			    });
		    
				/* scroll top button */
				// 1. 특정 위치에서 부터 버튼 나타고, 사라지게(fade)
			    $(window).scroll(function () {
					if ($(this).scrollTop() > 600) {
						$('.go-top').fadeIn(400);
					} else {
						$('.go-top').fadeOut(400);
					}
				});
	
				// 2. 버튼 클릭하면 원하는 위치로 이동
				$('.go-top').click(function (event) {
					event.preventDefault();
					$('html, body').animate({ scrollTop: 0 }, 300);
					});
			});
	  	
	  <!--이미지 슬라이드-->
			//current position
			var pos = 0;
			//number of slides
			var totalSlides = $('#slider-wrap ul li').length;
			//get the slide width
			var sliderWidth = $('#slider-wrap').width();
			$(document).ready(function(){
			  //set width to be 'x' times the number of slides
			  $('#slider-wrap ul#slider').width(sliderWidth*totalSlides);
			  
			    //next slide  
			  $('#next').click(function(){
			    slideRight();
			  });
			  
			  //previous slide
			  $('#previous').click(function(){
			    slideLeft();
			  });
			  
			
			  //automatic slider
			  var autoSlider = setInterval(slideRight, 3000);
			  
			  //for each slide 
			  $.each($('#slider-wrap ul li'), function() { 
	
			     //create a pagination
			     var li = document.createElement('li');
			     $('#pagination-wrap ul').append(li);    
			  });
			  
			  //counter
			  countSlides();
			  
			  //pagination
			  pagination();
			  
			  //hide/show controls/btns when hover
			  //pause automatic slide when hover
			  $('#slider-wrap').hover(
			    function(){ $(this).addClass('active'); clearInterval(autoSlider); }, 
			    function(){ $(this).removeClass('active'); autoSlider = setInterval(slideRight, 3000); }
			  );
			});//DOCUMENT READY
			  
			/*SLIDE LEFT*/
			function slideLeft(){
			  pos--;
			  if(pos==-1){ pos = totalSlides-1; }
			  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos));  
			  
			  //*> optional
			  countSlides();
			  pagination();
			}
	
			/*SLIDE RIGHT*/
			function slideRight(){
			  pos++;
			  if(pos==totalSlides){ pos = 0; }
			  $('#slider-wrap ul#slider').css('left', -(sliderWidth*pos)); 
			  
			  //*> optional 
			  countSlides();
			  pagination();
			}
			
			function countSlides(){
			  $('#counter').html();
			}
			function pagination(){
			  $('#pagination-wrap ul li').removeClass('active');
			  $('#pagination-wrap ul li:eq('+pos+')').addClass('active');
			}
		       
	  </script>
	  
	  
      <div class="buttons" style="margin-left: 0px;">   
      <br>   
         <!-- 목록 -->   
         <button type="button" class="btn btn-info" id="listbtn"
         onclick="location.href='list'">
         목록</button>
          
         <!-- 수정삭제(관리자만) -->
<%--          <c:if test="${sessionScope.loginok!=null}"> 
            <c:if test="${dto.id==sessionScope.loginid}">  --%>
            
               <button type="button" class="btn btn-warning" id="upbtn"   
               onclick="location.href='updateform?num=${dto.pnum}'"> 
               수정</button> 
               
               <button type="button" class="btn btn-danger" id="delbtn" pnum="${dto.pnum }"> 
               삭제</button> 
               
               <!-- 삭제시 컨펌 -->
               <script type="text/javascript">
               $(document).ready(function() {
            		$("#delbtn").click(function(){
            			var pnum=$(this).attr("pnum");
            			var choice = confirm("삭제 하시겠습니까?");
            			var del = "delete?pnum=${dto.pnum}"; //?pnum은 컨트롤러 dto 인자와 같아야함
            			if(choice){
            				location.assign(del);
            				alert("삭제되었습니다!^^");
            			};
            		});
            		
            	});
               </script>
<%--             </c:if> --%>
<%--          </c:if> --%>
      </div> 
      <br><br>
   </div> <!-- content전체!!!! -->
   
   <!-- 카트 담기 버튼 -->
<!--    <form action="/cart/insert"> -->
<!--    	<input type="submit"/> -->
<!--    </form> -->
   <input type="hidden" value="${dto.pnum}" id="pnum"/>
   <button type="button" class="btn btn-default" id="addcart">장바구니 추가</button>
   <br><br><br><br><br><br><br><br>
</body>



<script type="text/javascript">
<!--수량추가-->
$('.btn-plus, .btn-minus').on('click', function(e) {
	  const isNegative = $(e.target).closest('.btn-minus').is('.btn-minus');
	  const input = $(e.target).closest('.input-group').find('input');
	  if (input.is('input')) {
	    input[0][isNegative ? 'stepDown' : 'stepUp']()
	  };
	});

<!-- 카트 담기 스크립트 -->
$(document).ready(function() {
	$("#addcart").click(function(){
		
		var pnum = ${dto.pnum};
		
		$.ajax({
         type:"post",
         dataType:"json",
         url:"/cart/insert",
         data:{
        	 "mid":$("#mid").val()
        	 "pnum":$("#pnum").val()
        	 "cquantity":$("#cquantity").val()
         },
         success:function(data){
        	alert(data.message);
         }   
        });
	}
	});
	
	
</script>
</html>