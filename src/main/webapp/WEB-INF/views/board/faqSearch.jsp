<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="icon" href="../../../resources/images/favicon.png" />
	<link rel="stylesheet"
		href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
	<link rel="preconnect" href="https://fonts.gstatic.com" />
	<link
		href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
		rel="stylesheet" />
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<link rel="stylesheet" href="../../../resources/css/main.css" />
	<script defer src="../../../resources/js/youtube.js"></script>
	<script defer src="../../../resources/js/main.js"></script>
	<link rel="stylesheet" href="../../../resources/css/table.css" />
	
	</head>
	<body>
		<jsp:include page="../layout/header.jsp"></jsp:include>
	
		<!-- 메인 스타트 -->
	
		<main style="margin-top: 150px;">
			<section>
			
		<h1>FAQ 목록</h1>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>제목</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${sList }" var="faq" varStatus="i">
				<tr>
					<td><a href="/faq/detail.bld?faqNo=${faq.faqNo }">${faq.faqTitle }</a></td>
				</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td>
						<form action="/faq/search.bld" method="get">
							<select name="searchCondition">
								<option value="all">전체</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select>
							<input type="text" name="searchValue" value="${find.searchValue }" placeholder="검색어를 입력하세요">						
							<input type="submit" value="검색">
						</form>
						<c:if test="${loginUser.memberType eq 0 }">
							<button onclick="location.href='/board/faqWriteView.bld'">글쓰기</button>
						</c:if>						
					</td>
				</tr>
			</tfoot>
		</table>			

					
			</section>
		</main>
	
		<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
	</body>
	<script>
		document.querySelector("[value=${find.searchCondition}]").selected = true;
	</script>
</html>