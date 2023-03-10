<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>헌혈 예약 페이지</title>
		
		<link rel="stylesheet" href="./resources/css/booking.css" />
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../layout/header.jsp"></jsp:include>
	
		<!-- main -->
		<h2>헌혈의집 헌혈예약</h2>
		
		<form action="/book/register.bld" method="post">
			예약자 : <input type="text" name="memberName">
			헌혈의집 : <input type="text" name="pNo">
			예약날짜 : <input type="text" name="bkDate">
			예약시간 : <input type="text" name="bkTime">
			<input type="submit" value="예약하기">
			<!-- <input type="reset" value="취소"> -->
		</form>
		
		<!-- footer -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>