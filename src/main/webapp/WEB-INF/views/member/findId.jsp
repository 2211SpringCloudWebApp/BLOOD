<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
	<h1>아이디 찾기</h1>
	<h2>아이디는 입력하신 주민등록번호로 찾으실 수 있습니다</h2>
	<fieldset>
	<form action="/member/findId.bld" method="post" >
	
		   <input type="text" name="memberName" placeholder="이름" > <br>
		   <input type="text" name="memberKn" placeholder="주민번호" >- <input type="password" name="memberKn" placeholder="주민번호" ><br>  
	 	   <button type="submit">찾기</button>
	    </form>
	</fieldset>
</body>
</html>