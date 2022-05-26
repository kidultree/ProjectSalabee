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
<link
	href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Gowun+Dodum&family=Jua&family=Lobster&family=Nanum+Pen+Script&display=swap"
	rel="stylesheet">
<style type="text/css">
	div.content {
	font-family: 'Jua';
	}
	
	span.heart{
		cursor: pointer;
		font-size: 20px;
	}
	
	td.asave{
		font-size: 25px;
		font-weight: bold;
		cursor: pointer;
		background-color: #ebebeb;
	}
	
	#afrm{
		margin-top: 20px;
	}
	
	table.t{
	margin-left: 20px;
	}
	
	pre.m{
		background-color: white;
		border: none;
		font-size: 14px;
		font-family:'Gowun Dodum';
	}
	
	span.day{
		float: right;
		color: gray;
		font-size: 12px;
	}
	
	span.adel{
		margin-left: 10px;
		color: red;
		cursor: pointer;
	}
</style>
<script type="text/javascript">

</head>
<body>
	<div class = "qnacontent" style="width: 800px;">
		<h2><b>${dto.qtitle}</b></h2>
		<hr>
		<span class="glyphicon glyphicon-user"></span>&nbsp;<b>${dto.mid}</b>
		<span style="color: gray;">
			<fmt:formatDate value="${dto.qdate}" pattern="yyyy-MM-dd HH:mm"/>
		</span>
		<br><br>
		<pre style="background-color: white; border: none; font-family:'Jua'; font-size: 1.5em;"><b>${dto.qcontent}</b></pre>
		<br><br>
		<c:if test="${dto.qimg!='no'}">
			<c:forTokens var="qimg" items="${dto.qimg}" delims="," varStatus="n">
				<a href="../save/${qimg}" target="_new" style="cursor: pointer;">
				<img src="../save/${qimg}"
				style="max-width: 300px; border: 1px solid black;">
				<c:if test="${n.count%2==0}"><br><br></c:if>
			</c:forTokens>
		</c:if>
		<br><br>
			
			&nbsp;
			<span class="glyphicon glyphicon-comment"></span>&nbsp;&nbsp;
			<span class="answercnt">0</span>
			
			<!-- 댓글 부분 -->
			<h4 class="alist" style="cursor: pointer;"><b>댓글</b></h4>
			<div class="alist" id="alist">&nbsp;&nbsp;댓글 목록 나올 곳 ~~~</div>
			<script type="text/javascript">
				$("h4.alist").click(function(){
					$("div.alist").slideToggle('fast');
				});
			</script>
			
			<!-- 로그인을 한 상태에서만 댓글 입력을 할 수 있다 -->
			<c:if test="${sessionScope.loginok!=null}">
			<form id="afrm">
				<!--  hidden -->
				<input type="hidden" name="qnum" value="${dto.qnum}">
				<input type="hidden" name="mid" value="${sessionScope.loginid}">
				<input type="hidden" name="name" value="${sessionScope.loginname}">
				<table style="width: 600px;" class="table table-bordered">
					<tr height="70">
						<td>
							<textarea style="width: 100%; height: 70px;"
							name="message" id="message"
							class="form-control"
							placeholder="댓글을 남겨주세요"></textarea>
						</td>
						<td class="asave">
							저장
						</td>
					</tr>
				</table>
			</form>
			</c:if>
		</div>
		<div class="buttons">
			<button type="button" class="btn btn-default"
			onclick="location.href='list?currentPage=${currentPage}'">목록</button>
			
			<button type="button" class="btn btn-default" 
			onclick="location.href='form?num=${dto.qnum}&reg=${dto.reg}&restep=${dto.restep}&relevel=${dto.relevel}&currentPage=${currentPage}'">답글</button>
			
			<c:if test="${sessionScope.loginok!=null}">
				<c:if test="${sessionScope.loginid==dto.mid}">
				<button type="button" class="btn btn-default" onclick="location.href='updateform?num=${dto.qnum}&currentPage=${currentPage}'">
				<span class="glyphicon glyphicon-edit"></span>
				수정</button>
				
				<button type="button" class="btn btn-default" id="delbtn" onclick="location.href='delete?num=${dto.qnum}&currentPage=${currentPage}'">
				<span class="glyphicon glyphicon-trash"></span>
				삭제</button>
				
				<!-- 삭제시 컨펌 -->
               <script type="text/javascript">
               $(document).ready(function() {
                  $("#delbtn").click(function(){
                     var choice = confirm("삭제 하시겠습니까");
                     var del = "delete?num=${dto.qnum}&currentPage=${currentPage}";
                     if(choice){
                        location.assign(del);
                     };
                  });
               });
               </script>
				</c:if>
			</c:if>
			
      </div>
	</div>
</body>
</html>