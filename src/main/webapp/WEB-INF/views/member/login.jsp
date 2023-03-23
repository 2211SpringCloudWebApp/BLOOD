<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
 
<!--  -->
  <title>로그인</title>
  <meta property="og:type" content="website" />
  <meta property="og:site_name" content="heartbeat" />
  <meta property="og:title" content="Heart Beat" />
  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
  <meta property="og:description" content="./resources/images/bg.png">
  <link rel="stylesheet" href="../../../resources/css/member/login.css">
  <link rel="icon" href="./resources/images/favicon.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="/resources/css/main2.css" />
  <script defer src="/resources/js/youtube.js"></script>
  <script defer src="/resources/js/main.js"></script>
  <script type="jquery-3.4.1.js"></script>
</head>
<body>



	<c:if test= "${loginUser eq null }">
	
	<section class="login-form">
		<form action="/member/login.bld" method="post" class="form" >
				
				<div class="int-area">
					<input type="text" name="member-id" id="id" class="login-input"
					autocomplete="off" required>
					<label for="id">로그인</label>
				</div>
				<div class="int-area">
					<input type="password" name="member-pw" id="pw" class="login-input"
					autocomplete="off" required>
					<label for="pw">비밀번호</label>
				</div>
				<div class="btn-area">
					<button type="submit">로그인</button>
				</div>
		</form>
					<ul class="find">
						<li>아이디를 잊으셨나요?<a href="findId.bld"> 아이디 찾기</a></li>
						<li>비밀번호를 잊으셨나요?<a href="findPw.bld"> 비밀번호 찾기</a></li>
					</ul>
					
	</section>
	</c:if>
	<c:if test="${loginUser ne null }">
		<b>${loginUser.memberName }</b>님 환영합니다.<br>
		<a href="/member/mypage.bld">마이페이지</a>
		<a href="/member/logout.bld">로그아웃</a>
		</c:if>
		
		
</body>
</html>