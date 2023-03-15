<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 메세지</title>
</head>
<body>
<jsp:include page="../layout/header.jsp"></jsp:include>
	<fieldset>
		<h2>${msg}</h2>
	</fieldset>
<jsp:include page="../layout/footer.jsp"></jsp:include>
</body>
</html>