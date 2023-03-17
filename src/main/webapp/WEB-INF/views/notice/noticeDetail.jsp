<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>게시글</title>
  </head>
  <body>
    <h1>댓글이 있는 게시글</h1>
    
    <h2>제목 : ${notice.noticeTitle }</h2> <br>
    <p>내용 : ${notice.noticeContent }</p>
    
    <hr>
    
    <h2>댓글 목록</h2>
    <ul>
      <li>
        <p><strong>작성자id:</strong> id</p>
        <p><strong>내용:</strong> 댓글 내용</p>
      </li>
    </ul>

<%-- 						<c:forEach items="${nList }" var="notice" varStatus="i">
						<tr>
							<td>${i.count }</td>
							<td><a href="/notice/detail.bld?noticeNo=${notice.noticeNo }">${notice.noticeTitle }</a></td>
							<td>${notice.memberId }</td>
							<td>${notice.nCreateDate }</td>
							<td>
								${notice.viewCount }
							</td>
						</tr>
						</c:forEach> --%>
    
    <hr>
    
    <h2>댓글 쓰기</h2>
    <form>
      
      <label for="comment">댓글:</label>
      <textarea id="comment" name="comment" rows="5" cols="50"></textarea><br><br>
      <c:if test="${loginUser eq null }">
      <button type="submit">댓글 달기</button>
      </c:if>
      <c:if test="${loginUser ne null }">
      <button type="submit">댓글 달기</button>
      </c:if>      
    </form>
    
	<c:url var="nModify" value="/notice/modifyView.bld">
		<c:param name="noticeNo" value="${notice.noticeNo }"/>
	</c:url>					
	
	<c:if test="${notice.memberId eq loginUser.memberId }">
	<a href="${nModify }">수정 페이지로 이동</a>
	<a href="javascript:void(0);" onclick="removeCheck(${notice.noticeNo});">삭제하기</a>
	</c:if>    
		
		<script>
			function removeCheck(noticeNo) {
				if(confirm("정말 삭제하시겠습니까?")) {
					location.href="/notice/freeRemove.bld?noticeNo="+noticeNo;
				}
			}
		</script>    
    
  </body>
</html>
	</body>
</html>