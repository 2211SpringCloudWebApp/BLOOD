<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<link rel="stylesheet" href="../../../resources/css/member/findid.css">
<link rel="stylesheet" href="../../../resources/css/main2.css" >

</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>

	<div class="pw_container">
		<h1 class="findPw-title">비밀번호 찾기</h1>
	    <h2 class="findPw-subtitle">비밀번호는 가입한 이름, 아이디, 주민등록번호를 통해 찾으실 수 있습니다.</h2>
	    <form action="/member/findPw.bld" method="post" class="findPw-form">
			<div class="field-container">
				<label for="id">아이디</label>
				<input type="text" name="memberId" class="input" placeholder="아이디"> <br>
			</div>
			<div class="field-container">
				<label for="name">이름</label>
				<input type="text" name="memberName" class="input" placeholder="이름"> <br>
			</div>
			<div class="field-container">
				<label for="kn">주민등록번호</label>
				<input type="text" name="memberKn" class="input_kn" placeholder="주민번호"> - <input type="password" name="memberKn" class="input_kn" placeholder="주민번호"> <br>
			</div>
		   
		    <button type="submit" class="btn findBtn">비밀번호 찾기</button>
	    </form>
	</div>
</body>
</html>