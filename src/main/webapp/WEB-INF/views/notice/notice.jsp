<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
<!-- 		<link rel="icon" href="../../../resources/images/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
		<link rel="stylesheet" href="../../../resources/css/main.css" />
		<script defer src="../../../resources/js/youtube.js"></script>
		<script defer src="../../../resources/js/main.js"></script> -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
		<style>
			table {
				border : 1px solid black;
			}
			th, td {
				border : 1px solid blakc;
			}
		</style>		
	</head>
	<body>
		<%-- <jsp:include page="../layout/header.jsp"></jsp:include> --%>
			
		<!-- 메인 스타트 -->

		<h1>공지사항 목록</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자id</th>
							<th>작성날짜</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${nList }" var="notice" varStatus="i">
						<tr>
							<td>${i.count }</td>
							<td><a href="/notice/detail.kh?noticeNo=${notice.noticeNo }">${notice.noticeTitle }</a></td>
							<td>${notice.noticeWriter }</td>
							<td>${notice.nCreateDate }</td>
							<td>
								<c:if test="${!empty notice.noticeFilename }">조회수 동적쿼리</c:if>
							</td>
						</tr>
						</c:forEach>
					</tbody>
					<tfoot>
						<tr align="center">
							<td colspan="5">
								<c:forEach begin="${pi.startNavi }" end="${pi.endNavi }" var="p">
									<c:url var="pageUrl" value="/notice/list.kh">
										<c:param name="page" value="${p }"></c:param>
									</c:url>
									<a href="${pageUrl }">${p }</a>&nbsp;
								</c:forEach>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<form action="/notice/search.kh" method="get">
									<select name="searchCondition">
										<option value="all">전체</option>
										<option value="writer">작성자</option>
										<option value="title">제목</option>
										<option value="content">내용</option>
									</select>
									<input type="text" name="searchValue" placeholder="검색어를 입력하세요">						
									<input type="submit" value="검색">
								</form>
							</td>
							<td>
								<button onclick="location.href='/notice/writeView.kh'">글쓰기</button>
							</td>
						</tr>
					</tfoot>
				</table>			
			
			
		<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
	</body>
</html>