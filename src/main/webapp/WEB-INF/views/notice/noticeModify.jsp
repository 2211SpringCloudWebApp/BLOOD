<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 수정화면</title>
	</head>
	<body>
		<h1>공지사항 수정</h1>
		<form action="/notice/modify.bld" method="post">
			<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
			작성자Id : <input type="text" name="memberId" value="${loginUser.memberId }" readonly> <br><br>
			제목 : <input type="text" name="noticeTitle" value="${notice.noticeTitle }"> <br>
			내용 : <textarea rows="5" cols="30" name="noticeContent">${notice.noticeContent }</textarea> <br>
			<input type="submit" value="수정">
		</form>
	</body>
	
</html>