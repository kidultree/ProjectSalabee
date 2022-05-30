<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Jua&family=Lobster&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
<style type="text/css">
	
	table.boardform{
		font-family: 'Noto Sans KR';
		font-size: 1.3em;
	}
	
</style>

<c:set var="root" value="<%=request.getContextPath() %>"/> <!-- 프로젝트경로 -->
<script type="text/javascript" src="${root}/se2/js/HuskyEZCreator.js"
   charset="utf-8"></script>

<script type="text/javascript" src="${root}/se2/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js"
   charset="utf-8"></script> 
   
</head>
<body>
	<c:if test="${sessionScope.loginok==null}">
	<script type="text/javascript">
		alert("다시 로그인 후 글수정을 시도해주세요");
		location.href='../login/updateform'
	</script>
</c:if>
<form action="update" method="post" enctype="multipart/form-data">
	<!-- hidden 2개 -->
	<input type="hidden" name="currentPage" value="${currentPage}">
	<input type="hidden" name="qnum" value="${dto.qnum}">


	<table class="table table-bordered boardform" style="width: 500px">
		<caption><b>글 수정</b></caption>
			<tr>
				<th style="width: 100px; background-color: #ddd">제 목</th>
				<td>
					<input type="text" name="subject" class="form-control"
					required="required" autofocus="autofocus"
					value="${dto.qtitle}"
					placeholder="제목을 써주세요">
				</td>
			</tr>
			<tr>
				<th style="width: 100px; background-color: #ddd">사진들</th>
				<td>
					<b>사진을 업로드하지 않으면 기존 사진이 유지됩니다</b><br>
					<input type="file" name="upload" class="form-control"
					multiple="multiple">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea style="width: 100%; height: 100px;" name="qcontent"
					class="form-control" required="required">${dto.qcontent}</textarea>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-default"
					style="width: 100px;">글수정</button>
					
					<button type="button" class="btn btn-default"
					style="width: 100px;" onclick="history.back()">이전</button>
				</td>
			</tr>
	</table>
	</form>





<!-- 스마트게시판에 대한 스크립트 코드 넣기 -->
<script type="text/javascript">
   var oEditors = [];
   
   nhn.husky.EZCreator.createInIFrame({
   
       oAppRef: oEditors,
   
       elPlaceHolder: "qcontent",
   
       sSkinURI: "${root}/se2/SmartEditor2Skin.html",
   
       fCreator: "createSEditor2"
   
   }); 
   
   //‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.
   
   function submitContents(elClickedObj) {
   
       // 에디터의 내용이 textarea에 적용된다.
   
       oEditors.getById["qcontent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
   
    
   
       // 에디터의 내용에 대한 값 검증은 이곳에서
   
       // document.getElementById("textAreaContent").value를 이용해서 처리한다.
       try {
           elClickedObj.form.submit();
       } catch(e) { 
   
       }
   
   }
   
   // textArea에 이미지 첨부
   
   function pasteHTML(filepath){
       var sHTML = '<img src="${root}/save/'+filepath+'">';
       oEditors.getById["qcontent"].exec("PASTE_HTML", [sHTML]); 
   
   }
</script>
	
</body>
</html>