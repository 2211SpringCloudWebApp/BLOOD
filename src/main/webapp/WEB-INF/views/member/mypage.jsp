<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
<!--  -->
  <title>마이페이지</title>
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="heartbeat" />
  <meta property="og:title" content="Heart Beat" />
  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
  <meta property="og:description" content="./resources/images/bg.png">

  <link rel="stylesheet" href="../../../resources/css/member/mypage.css">
  <link rel="icon" href="./resources/images/favicon.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="/resources/css/main2.css" />
  <script defer src="/resources/js/youtube.js"></script>
  <script defer src="/resources/js/main.js"></script>


</head>
<body>
	<jsp:include page="../layout/header.jsp" ></jsp:include>
	<section class="login-form">
	<form action="/member/modify.bld" class="main-form" method="post" style="margin-top:200px">
		<div class="int-area">
		<input type= "text" id="id"	name="memberId" value="${member.memberId }" readonly>
		<label for="id">아이디</label>
		</div>
		<div class="int-area">
		<input type= "password" id="pw"	name="memberPw" 	value="">
		<label for="id">비밀번호</label>
		</div>
		<div class="int-area">
		<input type="text" 	id="name"	name="memberName" value="${member.memberName }"	readonly>
		<label for="id">이름</label>
		</div>
			<div class="bloodtype">
						<input type="radio" class="bldtype" name="bloodType" value="A" disabled <c:if test="${member.bloodType eq 'A' }">checked</c:if>>A형
						<input type="radio" class="bldtype" name="bloodType" value="B" disabled <c:if test="${member.bloodType eq 'B' }">checked</c:if>>B형
						<input type="radio" class="bldtype" name="bloodType" value="O" disabled <c:if test="${member.bloodType eq 'O' }">checked</c:if>>O형
						<input type="radio" class="bldtype" name="bloodType" value="AB" disabled <c:if test="${member.bloodType eq 'AB' }">checked</c:if>>AB형<BR>
						<label for="id" class="bldtype">혈액형</label>
					</div>
		<div class="int-area">
		<input type="text" 	id="kn1" name="memberKn"	placeholder="앞 6자리"	value="${member.memberKn }"		readonly>
		<input type="password" 	id="kn2" name="memberKn" placeholder="앞 7자리"	value="${member.memberKn }"		readonly>
		<label for="id">주민번호</label>
		</div>
		<div class="int-area">
		<input type="text" 	id="email"		name="memberEmail" 	value="${member.memberEmail }"	>
		<label for="id">이메일</label>
		</div>
		<div class="int-area">
		<input type="text" 			name="memberAddr" 	value="${member.memberAddr }">
		<label for="id">주소</label>		
		</div>
		<input type="button" class="btn-area2" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
		<div class="int-area">
		<input type="text" 		name="memberPhone" 	value="${member.memberPhone }"><br>			
		<label for="id">전화번호</label>
		</div>		
		<div class="btn-area">
		<Button type="submit">수정</Button>
		<button type="button" onclick="removeMember();">회원 탈퇴</button>
		</div>
	</form>
	</section>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
	//주소 api 스크립트
	function sample4_execDaumPostcode() {
		new daum.Postcode(
		{
			oncomplete : function(data) {
				console.log(data);
				document.getElementById("sample4_postcode").value = data.zonecode+ ","+ data.roadAddress+","+ data.buildingName;
			}
		}).open();
	}
	//탈퇴 
	function removeMember() {
		location.href='/member/out.bld';
	}
	
	</script>
</body>
</html>