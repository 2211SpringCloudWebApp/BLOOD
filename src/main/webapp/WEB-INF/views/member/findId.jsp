<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<title>아이디 찾기</title>
	  <meta property="og:type" content="website" />
	  <meta property="og:site_name" content="heartbeat" />
	  <meta property="og:title" content="Heart Beat" />
	  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
	  <meta property="og:description" content="./resources/images/bg.png">
	  <link rel="stylesheet" href="../../../resources/css/member/findid.css">
	  <link rel="icon" href="./resources/images/favicon.png" />
	  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
	  <link rel="preconnect" href="https://fonts.gstatic.com" />
	  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
	  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
	  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	  <link rel="stylesheet" href="/resources/css/main2.css" />
	  <script defer src="/resources/js/youtube.js"></script>
	  <script defer src="/resources/js/main.js"></script>
	  <script type="jquery-3.4.1.js"></script>
	</head>
	<body>
		<jsp:include page="../layout/header.jsp"></jsp:include>
		
		<div class="id_container">
			<h1 class="findId-title">아이디 찾기</h1>
			<h2 class="findId-subtitle">아이디는 입력하신 주민등록번호로 찾으실 수 있습니다</h2>
			<form action="/member/findId.bld"  method="post" class="findId-form">
			<!-- <fieldset class="findid"> -->
				<div class="field-container">
				   <label for="name">이름</label>
				   <input type="text" name="memberName" class="input" placeholder="이름" > <br>
				</div>
				<div class="field-container">
				   <label for="koreanNo">주민등록번호</label>
				   <input type="text" name="memberKn" class="input_kn" placeholder="주민번호" > - <input type="password" name="memberKn" class="input_kn" placeholder="주민번호" ><br>  
				</div>
		 	    <button type="submit" class="btn findBtn">찾기</button>
			<!-- </fieldset> -->
		    </form>
		</div>
	</body>
	
	
</html>