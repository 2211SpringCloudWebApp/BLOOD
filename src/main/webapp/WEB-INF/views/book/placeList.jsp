<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>헌혈의집 선택 페이지</title>
	</head>
	<body>
		<!-- header -->
		<%-- <jsp:include page="../layout/header.jsp"></jsp:include> --%>
		
		<!-- main -->
		<main>
			헌혈의집 선택
			<form action="/book/placelist.bld" accept-charset="utf-8" name="placelist" method="post">
				<table>
					<thead>
						<tr>
							<th>헌혈원</th>
							<th>헌혈의집 주소</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pList }" var="place">
						<tr>
							<td>${place.pHome }</td>
							<td>${place.pAddr }</td>
							<td>${place.pPhone }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
		</main>
		
		
		
		<!-- footer -->
		<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
		
	</body>
</html>