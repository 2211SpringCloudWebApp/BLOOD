<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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
	
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
	<script>
		document.querySelector("[value=${find.searchCondition}]").selected = true;
	</script>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>공지사항</title>
<meta property="og:title" content="카카오톡 PC - 공지사항" />
<meta property="og:site_name" content="pc.kakao.com" />
<meta property="og:image"
	content="https://mk.kakaocdn.net/dn/talkserver/notice/og_talkpc_notice.png" />
<meta property="og:description" content="카카오톡 PC 공지 사항입니다." />
<link rel="stylesheet" media="all" href="../../../resources/css/faq.css" " />
<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token"
	content="yBjzDo-zaLg9_xBTOcVuNVvebE0oFhsZtq6Do7PUUqB9KeoR-z7Q9Y2p_wEmqm3Ysu2Fw9sQYguh_4mhdW0h7w" />

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
<link rel="stylesheet" href="../../../resources/css/main2.css" />
<script defer src="../../../resources/js/youtube.js"></script>
<script defer src="../../../resources/js/main2.js"></script>


</head>
<jsp:include page="../layout/header.jsp"></jsp:include>

<body cz-shortcut-listen="true">


	<div id="kakaoIndex">
		<!-- 웹접근성용 바로가기 링크 모음 -->
		<a href="#kakaoBody">본문 바로가기</a>
	</div>
	<div id="kakaoWrap">
		<div id="kakaoHead" role="banner">
			<div class="inner_head">
				<h1 class="tit_logo">
					<a class="tit_notice link_windows" href="/talk/notices/ko"> <span
						class="ir_wa">자주묻는 질문</span>
					</a>
				</h1>
			</div>
		</div>
		<hr class="hide">
		<div id="kakaoContent" role="main">
		
<form action="/faq/search.bld" method="get">
	<select name="searchCondition">
		<option value="all">전체</option>
		<option value="title">제목</option>
		<option value="content">내용</option>
	</select> <input type="text" id="id" name="searchValue" placeholder="검색어를 입력하세요">
	<input type="submit" value="검색" onclick="return check()">
</form>
<c:if test="${loginUser.memberType eq 0 && loginUser ne null}">
	<button onclick="location.href='/board/faqWriteView.bld'">글쓰기</button>
</c:if>

			<div id="mArticle">
				<div class="cont_notice">
					<div class="wrap_tit">
						<h2 id="kakaoBody" class="tit_notice tit_ko">공지사항</h2>
					</div>
					<c:forEach items="${sList }" var="faq" varStatus="i">

						<ul class="list_notice">



							<li><a class="link_notice"
								href="/faq/detail.bld?faqNo=${faq.faqNo }"> <strong
									class="tit_item">${faq.faqTitle } </strong> <span id="qq"
									class="txt_date">Q</span>
							</a></li>

						</ul>

					</c:forEach>

					<!-- <script src="../../../resources/js/kkao.js"></script> -->
				</div>
			</div>
		</div>
		<hr class="hide">
		<div id="kakaoFoot" role="contentinfo">
			<small class="copy_info">Copyright © <a
				href="https://www.bloodinfo.net/knrcbs/main.do" class="link_corp">Blood Corp.</a>
				All rights reserved.
			</small>
		</div>
	</div>

			<!-- 유효성 검사  -->
			<script>
				
				function validateId() {
					var id = document.getElementById("id");

					if (!id.value) {
						alert("내용을 입력해주세요");
						id.value = "";
						return false;
					}
					return true;
				}
				
				function check(){
					var valid = true;
					valid = valid && validateId();
					return valid;
				}
			</script>


</body>
</html>