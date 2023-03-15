<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
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
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<jsp:include page="../layout/header.jsp" ></jsp:include>
	<form action="/member/modify.bld" method="post">
		아이디: <input type= "text" 								value="${member.memberId }" 	readonly><br>
		비밀번호 : <input type= "password"  	name="memberPw" 	value="${member.memberPw }"><br>
		이름 : <input type="text" 								value="${member.memberName }"	readonly><br>
		주민번호: <input type="text" 								value="${member.memberKn }"		readonly>-
					<input type="text" 							value="${member.memberKn }"		readonly><br>
		이메일 : <input type="text" 			name="memberEmail" 	value="${member.memberEmail }"	><br>
		주소 : <input type="text" 			name="memberAddr" 	value="${member.memberAddr }"><br>
		전화번호 : <input type="text" 		name="memberPhone" 	value="${member.memberPhone }"><br>			
		<input type="submit" value="수정">
		<input type="submit" value="예약확인">
		<button type="button" onclick="location.href='/member/out.bld?memberId=${member.memberId }'">회원 탈퇴</button>
	</form>
	<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>