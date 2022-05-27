<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
   
  <style>
  
  	input::placeholder {
		font-size: 0.7em;
	}
	
	form *{
	font-family: 'Noto Sans KR';
	}
	
	button.btn{
		width: 150px;
	}
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, black 0%, black 100%);
    }

    .input-form {
      max-width: 680px;

      margin-top: 50px;
      padding: 32px;

      background: #fff;
      -webkit-border-radius: 10px;
      -moz-border-radius: 10px;
      border-radius: 10px;
      -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
      box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.05)
    }
    
    
</style>

<script type="text/javascript">
$(function(){
	
});

function test(){
	$.ajax({
		type: "get",
		dataType: "json",
		url: "member/idchkform",
		data: {"mId":$("#mId").val()},
		success:function(data){
			var id=document.getElementById("mId").value;
			var idreg=/^[a-zA-z0-9]{4,12}$/; //아이디 정규식

			if(!id){
				return false;		
			}else if(!idreg.test(id.value)){
				return false;
			}else if(data.count==0){
				$("div.id").text("사용 가능한 아이디입니다").css("color","blue");
				$("#hidden").val("ok");
			}else{
				$("div.id").text("이미 사용중인 아이디입니다");
				$("#hidden").val("no");
			}
		}
		
	});
}
	function Value(){
		document.getElementById("mId").value=opener.document.getElementById("mId").value;
	}
	
	function idchkok(){		
		if($("#hidden").val()=='ok'){
		opener.document.getElementById("idunchk").value="idchk";
		opener.document.getElementById("idmsg").innerHTML ="";
		//중복체크 결과값 전달
		opener.document.getElementById("mId").value=document.getElementById("mId").value;
		window.close();
		}else
			return false;
	}
</script>
</head>
<body onload="Value()">
	<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <form class="validation-form">   
        <label style="margin-left: 33%; font-size: 2.5em;">중복 확인</label><br><br> 
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="mId" style="margin-bottom: 10px;">아이디</label> &nbsp;&nbsp;&nbsp;
              <button type="button" id="idchk" style="background-color: black; color: white;"
              onclick="test()">중복확인</button><br>              
              <input type="text" class="form-control" name="mId" id="mId" placeholder="영어 대소문자,숫자 포함 4~12자리">
              <input type="hidden" id="hidden" value="">
              <div class="id" style="color: red;">
              </div>
            </div>
          </div>
          <div>
              <button style="background-color: black; color: white;" onclick="idchkok()">사용하기</button><br>
              <button style="background-color: black; color: white;" onclick="window.close()">닫기</button><br>
		  </div>		
		</form>
      </div>
    </div>
    </div>


</body>
</html>