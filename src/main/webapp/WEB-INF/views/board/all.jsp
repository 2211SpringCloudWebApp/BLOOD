<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<title>Insert title here</title>
		
	  <meta property="og:type" content="website" />
	  <meta property="og:site_name" content="heartbeat" />
	  <meta property="og:title" content="Heart Beat" />
	  <meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
	  <meta property="og:description" content="/resources/images/bg.png">		
		
		<link rel="icon" href="/resources/images/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
		<link rel="stylesheet" href="/resources/css/main.css" />
		<script defer src="/resources/js/youtube.js"></script>
		<script defer src="/resources/js/main.js"></script>
		<style>

		
		</style>
	</head>
	<body>
		<jsp:include page="../layout/header.jsp"></jsp:include>
		
		<!-- 메인 스타트 -->

			
		<main style="margin-top:120px">
			<section>
				<div>
					<a href="/board/faq.bld"><img src="../../../resources/images/칠판.png"/></a>
				</div>
				<div>
					<a href="/notice/free.bld"><img src="../../../resources/images/칠판.png"/></a>
				</div>				
			</section>
		</main>

		
		
		<jsp:include page="../layout/footer.jsp"></jsp:include>
		
		<script>
			
		//		window.onload=function() {
		//			alert("글작성 ok");
		//		}
			
		</script>
	</body>
</html>