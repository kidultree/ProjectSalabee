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
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="new_main.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



<style type="text/css">


	input::placeholder {
		font-size: 0.7em;
	}
	
	body *{
	font-family: 'Noto Sans KR';
	}
	
	btn.addbtn{
		width: 50px;
		height: 50px;
		border-radius: 10px;
		border
	}

</style>

<script type="text/javascript">
	$(function(){
				
		//비밀번호 눈모양 클릭시 비밀번호 보이기/숨김
		$("span.eye1").click(function(){
			if($("input.pass").attr("type")=="password")
				{
					$(this).removeClass("bi bi-eye eye1");
					$(this).addClass("bi bi-eye-slash eye1");
					$("input.pass").attr("type","text");
				}
			else
				{
					$("input.pass").attr("type","text");
					$(this).removeClass("bi bi-slash eye1");
					$(this).addClass("bi bi-eye eye1");	
					$("input.pass").attr("type","password");

				}
		});
		
		//비밀번호 확인 눈모양 클릭시 비밀번호 보이기/숨김
		$("span.eye2").click(function(){
			if($("input.pass2").attr("type")=="password")
				{
					$(this).removeClass("bi bi-eye eye2");
					$(this).addClass("bi bi-eye-slash eye2");
					$("input.pass2").attr("type","text");
				}
			else
				{
					$("input.pass2").attr("type","text");
					$(this).removeClass("bi bi-slash eye2");
					$(this).addClass("bi bi-eye eye2");	
					$("input.pass2").attr("type","password");

				}
		});
		
	
	});
</script>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>

</head>
<body>

	<br><br><br><br>
	<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h3 class="mb-3" style="text-align: center;">회원가입</h3><br><br>
        <form class="validation-form" action="insert" method="post">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="mId">아이디</label>
              <input type="text" class="form-control" name="mId" id="mId" placeholder="" required>
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
            <div class="col-md-6 mb-3">
              <label for="mName">이름</label>
              <input type="text" class="form-control" name="mName" id="mName" placeholder="" required>
              <div class="invalid-feedback">
                별명을 입력해주세요.
              </div>
            </div>
          </div>

          <div class="mb-3">
            <label for="mPassword">비밀번호</label>
            <input type="text" class="form-control" name="mPassword" id="mPassword" placeholder="최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자를 입력해주세요" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="pass2">비밀번호 확인</label>
            <input type="text" class="form-control" id="pass2" placeholder="비밀번호를 한번 더 입력해주세요" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="mEmail">이메일</label>
            <input type="text" class="form-control" name="mEmail" id="mEmail" placeholder="you@example.com" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="mPhone">휴대폰 번호</label>
            <input type="text" class="form-control" name="mPhone" id="mPhone" placeholder="- 없이 번호만 입력해주세요" required>
            <div class="invalid-feedback">
              이메일을 입력해주세요.
            </div>
          </div>
          
          <div class="mb-3">
            <label for="mBirth">생년월일</label>
            <input type="date" class="form-control" name="mBirth" id="mBirth" required>
            <div class="invalid-feedback">
            </div>
          </div>

          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="member_addr">주소&nbsp;&nbsp;&nbsp;&nbsp;
              
              <button class="addbtn">검색</button>
              
              </label>
          	  
              <input type="text" class="form-control" name="mAddress1" id="member_addr" placeholder="서울특별시 강남구" required
              readonly="readonly">
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
            
            <div class="col-md-6 mb-3">
              <label for="member_post">우편번호</label>              
              <input type="text" class="form-control" name="mPost" id="member_post" required readonly="readonly">
              <div class="invalid-feedback">
                별명을 입력해주세요.
              </div>
            </div>
            
          </div>

          <div class="mb-3">
            <label for="mAddress2">상세주소<span class="text-muted">&nbsp;(필수 아님)</span></label>
            <input type="text" class="form-control" name="mAddress2" id="mAddress2" placeholder="상세주소를 입력해주세요.">
          </div>
          
          <hr class="mb-4">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" class="custom-control-input" id="aggrement" required>
            <label class="custom-control-label" for="aggrement">이용약관, 개인정보 수집 및 이용, 개인정보 정보 제공을 확인하였고 동의합니다.</label>
          </div>

          <button class="btn btn-primary btn-lg btn-block" type="submit">Sign up</button>
        </form>
      </div>
    </div>

  </div>
</form>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br>

</body>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</html>