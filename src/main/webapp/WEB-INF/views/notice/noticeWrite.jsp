<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
			<h1>자유게시판 등록페이지</h1>
			<form action="/notice/freeWrite.bld" method="post">
				작성자 id : ${loginUser.memberId } <br>
				제목 : <input type="text" name="noticeTitle"> <br>
				내용 : <textarea name="noticeContent"></textarea> <br>		
				<input type="submit" value="등록">
				<input type="reset" value="취소">
				<a href="/notice/free.bld">뒤로가기</a>
			</form>
	</body>
</html>