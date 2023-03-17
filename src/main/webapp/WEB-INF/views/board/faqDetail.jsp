<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 상세</title>
	</head>
	<body>
		<h1>공지사항 상세</h1>
		
		제목 : ${faq.faqTitle }
		<br>
		내용 : ${faq.faqContent }
		<br>
		<c:if test="${loginUser.memberType eq 0 && loginUser ne null}">
			<a href="javascript:void(0);" onclick="removeCheck(${faq.faqNo});">삭제하기</a>
		</c:if>
		<script>
			function removeCheck(faqNo) {
				if(confirm("정말 삭제하시겠습니까?")) {
					location.href="/board/faqRemove.bld?faqNo="+faqNo;
				}
			}
		</script>
	</body>
</html>