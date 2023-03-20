<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
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

	<main style="margin-top: 150px;">
		<section>

			<h1>공지사항 상세</h1>

			제목 : ${faq.faqTitle } <br> 내용 : ${faq.faqContent } <br>
			<c:if test="${loginUser.memberType eq 0 && loginUser ne null}">
				<a href="javascript:void(0);" onclick="removeCheck(${faq.faqNo});">삭제하기</a>
			</c:if>

		</section>
	</main>

	<script>
			function removeCheck(faqNo) {
				if(confirm("정말 삭제하시겠습니까?")) {
					location.href="/board/faqRemove.bld?faqNo="+faqNo;
				}
			}
		</script>
</body>
</html>