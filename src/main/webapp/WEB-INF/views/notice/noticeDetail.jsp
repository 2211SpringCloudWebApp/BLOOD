<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    <h2>제목</h2>
    <p>내용</p>
    
    <hr>
    
    <h2>댓글 목록</h2>
    <ul>
      <li>
        <p><strong>작성자:</strong> 댓글 작성자 이름</p>
        <p><strong>내용:</strong> 댓글 내용</p>
      </li>
      <li>
        <p><strong>작성자:</strong> 댓글 작성자 이름</p>
        <p><strong>내용:</strong> 댓글 내용</p>
      </li>
    </ul>
    
    <hr>
    
    <h2>댓글 쓰기</h2>
    <form>
      <label for="username">이름:</label>
      <input type="text" id="username" name="username"><br><br>
      
      <label for="comment">댓글:</label>
      <textarea id="comment" name="comment" rows="5" cols="50"></textarea><br><br>
      
      <button type="submit">댓글 달기</button>
    </form>
    
  </body>
</html>
	</body>
</html>