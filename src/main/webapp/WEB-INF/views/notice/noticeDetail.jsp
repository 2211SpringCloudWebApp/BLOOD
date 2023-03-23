<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/css/reply.css" />

<meta property="og:type" content="website" />
<meta property="og:site_name" content="heartbeat" />
<meta property="og:title" content="Heart Beat" />
<meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
<meta property="og:description" content="/resources/images/bg.png">

<link rel="icon" href="/resources/images/favicon.png" />
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
<link rel="stylesheet" href="/resources/css/main2.css" />
<script defer src="/resources/js/youtube.js"></script>
<script defer src="/resources/js/main.js"></script>


<style>
			table {
				border : 1px solid black;
			}
			thead, tr {
				border : 1px solid blakc;
			}
		</style>
</head>
<body style="    display: flex;
    flex-direction: column;
    align-items: center; background-color:#fff;">

	<jsp:include page="../layout/header.jsp"></jsp:include>

<main style="margin-top:150px; width:90%;">
<section>

			<h1 style="font-size: 45px; text-align: center; color: #FF0080;">"${notice.noticeNo}"번
				게시글 상세페이지</h1>
			<c:url var="nModify" value="/notice/modifyView.bld">
				<c:param name="noticeNo" value="${notice.noticeNo }" />
			</c:url>
			<br>
			
			<c:if test="${notice.memberId eq loginUser.memberId || loginUser.memberType eq '0'}">
				<div style="text-align: right; margin-right: 40px;" >
					<div style="margin-bottom: 10px;">
						<a href="${nModify }">Update</a>
					</div>
					<div>
						<a href="javascript:void(0);"
							onclick="removeCheck(${notice.noticeNo});">삭제</a>
					</div>
				</div>
			</c:if>

			<br>
			<br>
			<br>
			
			<div style="margin-left: 50px; margin-bottom:50px;">
			<h2 style="font-size: 25px;">제목 : ${notice.noticeTitle }</h2>
			<br><br>
			<textarea style="font-size: 18px;" rows="10" cols="70" readonly>${notice.noticeContent }</textarea>	
			<br><br>		
			<a href="/notice/free.bld" id="linkList" data-locale="ko" class="link_list">목록</a>
			</div>



			<%--     <h2>댓글 목록</h2>
    <c:forEach items="${rList }" var="reply" varStatus="i">
    <ul>
      <li>
        <p><strong>작성자id :</strong> ${reply.memberId }</p>
        <p><strong>내용 :</strong> ${reply.replyContent }</p>
      </li>
		<c:if test="${reply.memberId eq loginUser.memberId }">
		<a href="javascript:void(0);" onclick="removeCheck2(${reply.replyNo});">삭제하기</a>
		</c:if>  
    </ul>
    </c:forEach> --%>


			<hr>

			<%--     <h2>댓글 쓰기</h2>
    <form method="post" action="/notice/reply.bld">
      
      <label for="comment">댓글:</label>
      <textarea id="comment" name="replyContent" rows="5" cols="50"></textarea><br><br>
      <input type="hidden" name="memberId" value="${loginUser.memberId }">
      <input type="hidden" name="noticeNo" value="${notice.noticeNo }">
      
     
      <button type="submit">댓글 달기</button>

    </form> --%>

			<br>
			<br>
			<form method="post" action="/notice/reply.bld">
				<div id="form-commentInfo">
					<div id="comment-count">댓글</div>
					<input id="comment-input" name="replyContent"
						placeholder="댓글을 입력해 주세요."><br> <br> <input
						type="hidden" name="memberId" value="${loginUser.memberId }">
					<input type="hidden" name="noticeNo" value="${notice.noticeNo }">

					<button type="submit" id="submit" style="background-color:#73685d;" >등록</button>
				</div>

				<c:forEach items="${rList }" var="reply" varStatus="i">
					<div style="margin-bottom:50px;" id=comments>
						<div class="eachComment">
							<div class="name">ID : ${reply.memberId }</div>
							<div class="inputValue" readonly>${reply.replyContent }</div>
							
							<c:if test="${reply.memberId eq loginUser.memberId || loginUser.memberType eq '0'}">
								<a href="javascript:void(0);"
									onclick="removeCheck2(${reply.replyNo});">삭제하기</a>
							</c:if>
						</div>


				</c:forEach>
			</form>

</section>
</main>

<br><br><br>


	<c:url var="nModify" value="/notice/modifyView.bld">
		<c:param name="noticeNo" value="${notice.noticeNo }" />
	</c:url>


	<script>
			function removeCheck(noticeNo) {
				if(confirm("정말 삭제하시겠습니까?")) {
					location.href="/notice/freeRemove.bld?noticeNo="+noticeNo;
				}
			}
			
			function removeCheck2(replyNo) {
				if(confirm("정말 삭제하시겠습니까?")) {
					location.href="/reply/Remove.bld?replyNo="+replyNo+"&noticeNo="+${notice.noticeNo};
				}
			}
		</script>


</body>
</html>
