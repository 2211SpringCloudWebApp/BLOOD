<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약 내역조회 페이지</title>
		<link rel="stylesheet" href="../../../resources/css/bookingList.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../layout/header.jsp"></jsp:include>
		
		<!-- main -->
		<!-- <form action="/book/registerlist.bld" accept-charset="utf-8" name="registerlist" method="post"></form>
			<label></label> -->
		<main>
			<h1>헌혈의집 헌혈예약 내역</h1>
			<table>
				<thead>
					<tr>
						<th>예약번호</th>
						<th>예약날짜</th>
						<th>예약시간</th>
						<th>헌혈의집</th>
						<th>주소</th>
						<th>전화번호</th>
						<th>헌혈완료여부</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${bList }" var="book">
					<tr>
						<td>${book.bkNo }</td>
						<td>${book.bkDate }</td>
						<td>${book.bkTime }</td>
						<td>${book.pNo }</td>
						<td>${place.pAddr }</td>
						<td>${book.bkPhone }</td>
						<td>${book.dnCheck }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</main>
		
		<!-- footer -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
		
	</body>
</html>