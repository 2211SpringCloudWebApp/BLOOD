<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	  <meta property="og:type" content="website" />
	  <meta property="og:site_name" content="heartbeat" />
	  <meta property="og:title" content="Heart Beat" />
	  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
	  <meta property="og:description" content="/resources/images/bg.png">		
		
		<link rel="icon" href="/resources/images/favicon.png" />
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
			<jsp:include page="../layout/header.jsp"></jsp:include>
			<h1 style="margin-top:200px;">공지글 등록페이지</h1>
			<form action="/board/faqWrite.bld" method="post">
				제목 : <input type="text" name="faqTitle"> <br>
				내용 : <textarea name="faqContent"></textarea> <br>
				<input type="submit" value="등록">
				<input type="reset" value="취소">
				<a href="/board/faq.bld">뒤로가기</a>
			</form>
	</body>
</html>