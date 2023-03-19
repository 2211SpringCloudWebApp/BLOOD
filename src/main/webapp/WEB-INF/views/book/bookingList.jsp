<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>예약 내역조회 페이지</title>
		<link rel="stylesheet" href="../../../resources/css/book/bookingList.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../layout/header.jsp"></jsp:include>
		
		<!-- main -->
		<!-- <form action="/book/registerlist.bld" accept-charset="utf-8" name="registerlist" method="post"></form>
			<label></label> -->
		<main>
			<h2 class="pageTitle">헌혈예약 내역</h2>
			<div class="tbl2">
				<table>
					<caption>
						<span>헌혈예약 내역을 확인할 수 있습니다</span>
					</caption>
					<colgroup>
						<col style="width:5%;">
						<col style="width:12%;">
						<col style="width:12%;">
						<col style="width:16%;">
						<col style="width:35%;">
						<col style="width:15%;">
						<col style="width:5%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">예약번호</th>
							<th scope="col">예약날짜</th>
							<th scope="col">예약시간</th>
							<th scope="col">헌혈의집</th>
							<th scope="col">헌혈의집 주소</th>
							<th scope="col">전화번호</th>
							<th scope="col">헌혈완료여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${bList }" var="book">
						<tr>
							<td>${book.bkNo }</td>
							<td>${book.bkDate }</td>
							<td>${book.bkTime }</td>
							<td>${book.pNo }</td>
							<td>${book.pAddr }</td>
							<td>${book.pPhone }</td>
							<td>${book.dnCheck }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</main>
		
		<!-- footer -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	
	</body>
</html>