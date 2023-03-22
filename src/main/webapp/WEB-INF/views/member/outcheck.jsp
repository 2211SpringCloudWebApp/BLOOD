<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>탈퇴</title>
	<link rel="stylesheet" href="../../../resources/css/member/outcheck.css">
</head>
<body>
	<form action="/member/out.bld" method="post" style="margin-top:250px">
		<div class= "int-area">
		<h1>${member.memberId }</h1>
		PW : <input type="password" name="member-pw" id="pw" >
		</div>
		<div class="btn-area">
		<button type="submit" onclick="location.href='/'">탈퇴</button>
		</div>
	</form>
</body>
</html>