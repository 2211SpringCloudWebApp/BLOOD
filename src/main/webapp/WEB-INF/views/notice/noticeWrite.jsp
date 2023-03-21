<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="icon" href="../../../resources/images/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
		<link rel="stylesheet" href="../../../resources/css/main.css" />
		<script defer src="../../../resources/js/youtube.js"></script>
		<script defer src="../../../resources/js/main.js"></script>
		
	</head>
	<body>
		<jsp:include page="../layout/header.jsp"></jsp:include>
		<main style="margin-top: 120px">
		<section>
		
		<h1>자유게시판 등록</h1>
		<form action="/notice/freeWrite.bld" method="post">
			작성자 id : ${loginUser.memberId } <br> 제목 : <input type="text"
				name="noticeTitle"> <br> 내용 :
			<textarea name="noticeContent"></textarea>
			<br> <input type="submit" value="등록"> <input type="reset"
				value="취소"> <a href="/notice/free.bld">뒤로가기</a>
		</form>
		
		</section>
		</main>	
	</body>
</html>