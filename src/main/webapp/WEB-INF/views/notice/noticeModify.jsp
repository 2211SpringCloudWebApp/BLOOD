<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>공지사항 수정화면</title>
		
		<!-- <link rel="stylesheet" href="../../../resources/css/modify.css" /> -->
		<link rel="stylesheet" href="../../../resources/css/update.css" />
		<link rel="stylesheet" href="css/bootstrap.min.css">
		
	</head>
	<body>
<%-- 		<h1>"${notice.noticeNo}"번 수정페이지</h1>
		<form action="/notice/modify.bld" method="post">
			<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
			작성자Id : <input type="text" name="memberId" value="${loginUser.memberId }" readonly> <br><br>
			제목 : <input type="text" name="noticeTitle" value="${notice.noticeTitle }"> <br>
			내용 : <textarea rows="5" cols="30" name="noticeContent">${notice.noticeContent }</textarea> <br>
			<input type="submit" value="수정">
			<input type="reset" value="취소">			
		</form> --%>
		
<%-- <div class="content">
<div class="container">
<div class="row justify-content-center">
<div class="col-md-10">
<div class="row align-items-center">
<div class="col-lg-7 mb-5 mb-lg-0">
<h2 class="mb-5">${notice.noticeNo}"번 수정페이지</h2>

<form class="border-right pr-5 mb-5" method="post" id="contactForm" name="contactForm">

<input type="hidden" name="noticeNo" value="${notice.noticeNo }">

<div class="row">
<div class="col-md-6 form-group">
<input type="text" class="form-control" name="memberId" id="fname" value="ID : ${loginUser.memberId }" readonly>
</div>
<div class="col-md-6 form-group">
<input type="text" class="form-control" name="noticeTitle" id="lname" value="제목 : ${notice.noticeTitle }">
</div>
</div>

<div class="row">
<div class="col-md-12 form-group">
<textarea class="form-control" name="noticeContent" id="message" cols="50" rows="10">${notice.noticeContent }</textarea>
</div>
</div>

<div class="row">
<div class="col-md-12">
<input type="submit" value="Update" class="btn btn-primary rounded-0 py-2 px-4">
<span class="submitting"></span>
</div>
</div>
</form>

<div id="form-message-warning mt-4"></div>
<div id="form-message-success">
Your message was sent, thank you!
</div>
</div>
<div class="col-lg-4 ml-auto">
<h3 class="mb-4">자유게시판 </h3>
<p></p>
<br>
<p><a href="/notice/free.bld">목록으로</a></p>
</div>
</div>
</div>
</div>
</div>
</div> --%>
	
<div class="content">
<div class="container">
<div class="row">
<div class="col-md-5 mr-auto">
<h2>Contact Us</h2>
<p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quaerat autem corrupti asperiores accusantium et fuga! Facere excepturi, quo eos, nobis doloremque dolor labore expedita illum iusto, aut repellat fuga!</p>
<ul class="list-unstyled pl-md-5 mb-5">
<li class="d-flex text-black mb-2">
<span class="mr-3"><span class="icon-map"></span></span> 34 Street Name, City Name Here, <br> United States
</li>
<li class="d-flex text-black mb-2"><span class="mr-3"><span class="icon-phone"></span></span> +1 (222) 345 6789</li>
<li class="d-flex text-black"><span class="mr-3"><span class="icon-envelope-o"></span></span> <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="bdd4d3dbd2fdd0c4cad8dfced4c9d893ded2d0">[email&#160;protected]</a> </li>
</ul>
</div>
<div class="col-md-6">

<form action="/notice/modify.bld" class="mb-5" method="post" id="contactForm" name="contactForm">
<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
<div class="row">
<div class="col-md-12 form-group">
<label for="name" class="col-form-label">작성자 ID</label>
<input type="text" class="form-control" name="memberId" id="name">
</div>
</div>
<div class="row">
<div class="col-md-12 form-group">
<label for="email" class="col-form-label">제목</label>
<input type="text" class="form-control" name="noticeTitle" id="email">
</div>
</div>
<div class="row">
<div class="col-md-12 form-group">
<label for="message" class="col-form-label">내용</label>
<textarea class="form-control" name="message" id="noticeContent" cols="30" rows="7"></textarea>
</div>
</div>
<div class="row">
<div class="col-md-12">
<input type="submit" value="Update" class="btn btn-primary rounded-0 py-2 px-4">
<span class="submitting"></span>
</div>
</div>
</form>

<div id="form-message-warning mt-4"></div>
<div id="form-message-success">
Your message was sent, thank you!
</div>
</div>
</div>

</div>
		
	</body>
	
</html>