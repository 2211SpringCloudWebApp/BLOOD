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

  <link rel="icon" href="./resources/images/favicon.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="/resources/css/main.css" />
  <script defer src="/resources/js/youtube.js"></script>
  <script defer src="/resources/js/main.js"></script>
</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<c:if test= "${loginUSer eq null }">
	<fieldset>
	<legend>로그인</legend>
	<form action="/member/login.bld" method="post" style="margin-top:200px">
		ID : <input type="text" name="member-id"><input type="submit" value="로그인"><br>
		PW : <input type="password" name="member-pw"><br>
		<button type="button" onclick="location.href='/member/findId.bld'">아이디 찾기</button>
		<button type="button" onclick="location.href='/member/findPw.bld'">비밀번호 찾기</button>
	</form>
	</fieldset>
	</c:if>
	<c:if test="${loginUser ne null }">
		<b>${loginUser.memberName }</b>님 환영합니다.<br>
		<a href="/member/mypage.bld">마이페이지</a>
		<a href="/member/logout.bld">로그아웃</a>
		</c:if>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>