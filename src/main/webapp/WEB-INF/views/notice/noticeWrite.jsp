<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
			<h1>공지글 등록페이지</h1>
			<form action="/notice/freeWrite.bld" method="post" enctype="multipart/form-data">
				작성자 id : <textarea name="noticeContent"></textarea> <br>
				제목 : <input type="text" name=faqTitle> <br>
				내용 : <textarea name="faqContent"></textarea> <br>		
				<input type="submit" value="등록">
				<input type="reset" value="취소">
				<a href="/notice/free.bld">뒤로가기</a>
			</form>
	</body>
</html>