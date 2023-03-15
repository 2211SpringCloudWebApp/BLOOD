<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<body>
<h1>비밀번호 찾기</h1>
	    <h2>비밀번호는 가입한 이름,아이디,주민등록번호를 통해 찾으실 수 있습니다.</h2>
	    <form action="/member/findPw.bld" method="post">
		    <input type="text" name="memberId" placeholder="아이디"> <br>
		    <input type="text" name="memberName" placeholder="이름"> <br>
		    <input type="password" name="memberKn" placeholder="주민번호">- <input type="password" name="memberKn" placeholder="주민번호"> <br>
		   
		    <button type="submit">비밀번호 찾기</button>
	    </form>
</body>
</html>