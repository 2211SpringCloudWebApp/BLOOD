<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<title>헌혈 예약 페이지</title>
		
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
		
		<link rel="stylesheet" href="../../../resources/css/booking.css" />
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../layout/header.jsp"></jsp:include>
	
		<!-- main -->
		<main>
			<h2>헌혈의집 헌혈예약</h2>
			
			<form action="/book/register.bld" accept-charset="utf-8" name="register" method="post">
				<fieldset>
					예약자 : <input type="text" name="memberName">
					헌혈의집 : <input type="text" name="pNo">
					예약날짜 : <input type="text" name="bkDate">
					예약시간 : <input type="text" name="bkTime">
					<input type="submit" value="예약하기">
					<!-- <input type="reset" value="취소"> -->

				</fieldset>
			</form>
		
		</main>
		
		<!-- footer -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>