<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<link rel="stylesheet" href="/resources/css/main.css" />
<script defer src="/resources/js/youtube.js"></script>
<script defer src="/resources/js/main2.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,700,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="../../../resources/css/update.css" />

<title>Contact Form #1</title>
<script nonce="af410b32-a896-4930-994d-3c46bf2b00fb">(function(w,d){!function(bv,bw,bx,by){bv[bx]=bv[bx]||{};bv[bx].executed=[];bv.zaraz={deferred:[],listeners:[]};bv.zaraz.q=[];bv.zaraz._f=function(bz){return function(){var bA=Array.prototype.slice.call(arguments);bv.zaraz.q.push({m:bz,a:bA})}};for(const bB of["track","set","debug"])bv.zaraz[bB]=bv.zaraz._f(bB);bv.zaraz.init=()=>{var bC=bw.getElementsByTagName(by)[0],bD=bw.createElement(by),bE=bw.getElementsByTagName("title")[0];bE&&(bv[bx].t=bw.getElementsByTagName("title")[0].text);bv[bx].x=Math.random();bv[bx].w=bv.screen.width;bv[bx].h=bv.screen.height;bv[bx].j=bv.innerHeight;bv[bx].e=bv.innerWidth;bv[bx].l=bv.location.href;bv[bx].r=bw.referrer;bv[bx].k=bv.screen.colorDepth;bv[bx].n=bw.characterSet;bv[bx].o=(new Date).getTimezoneOffset();if(bv.dataLayer)for(const bI of Object.entries(Object.entries(dataLayer).reduce(((bJ,bK)=>({...bJ[1],...bK[1]})))))zaraz.set(bI[0],bI[1],{scope:"page"});bv[bx].q=[];for(;bv.zaraz.q.length;){const bL=bv.zaraz.q.shift();bv[bx].q.push(bL)}bD.defer=!0;for(const bM of[localStorage,sessionStorage])Object.keys(bM||{}).filter((bO=>bO.startsWith("_zaraz_"))).forEach((bN=>{try{bv[bx]["z_"+bN.slice(7)]=JSON.parse(bM.getItem(bN))}catch{bv[bx]["z_"+bN.slice(7)]=bM.getItem(bN)}}));bD.referrerPolicy="origin";bD.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(bv[bx])));bC.parentNode.insertBefore(bD,bC)};["complete","interactive"].includes(bw.readyState)?zaraz.init():bv.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script>
</head>
<body>

<jsp:include page="../layout/header.jsp"></jsp:include>

<%-- 		<h1>"${notice.noticeNo}"번 수정페이지</h1>
		<form action="/notice/modify.bld" method="post">
			<input type="hidden" name="noticeNo" value="${notice.noticeNo }">
			작성자Id : <input type="text" name="memberId" value="${loginUser.memberId }" readonly> <br><br>
			제목 : <input type="text" name="noticeTitle" value="${notice.noticeTitle }"> <br>
			내용 : <textarea rows="5" cols="30" name="noticeContent">${notice.noticeContent }</textarea> <br>
			<input type="submit" value="수정">
			<input type="reset" value="취소">			
		</form> --%>

 
<div class="col-lg-7 mb-5 mb-lg-0">
<h2 class="mb-5">"${notice.noticeNo}"번 게시글 Update.</h2>

<form action="/notice/modify.bld" class="border-right pr-5 mb-5" method="post" id="contactForm" name="contactForm" novalidate="novalidate">

<input type="hidden" name="noticeNo" value="${notice.noticeNo }">

<div class="row">
<div class="col-md-6 form-group">
ID <br>
<input type="text" name="memberId"  value="${notice.memberId } " readonly>
</div>
<br>

<div class="col-md-6 form-group">
제목 : <input type="text" class="form-control" name="noticeTitle" id="lname" value="${notice.noticeTitle }">
</div>
</div>

<div class="row">
<div class="col-md-12 form-group">
내용 : <textarea class="form-control" name="noticeContent" id="message" cols="30" rows="7" >${notice.noticeContent }</textarea>
</div>
</div>



<br><br><br>

<div class="row">
<div class="col-md-12">
<input type="submit" value="update" class="btn btn-primary rounded-0 py-2 px-4">
<span class="submitting"></span>
</div>
</div>
</form>

<div id="form-message-warning mt-4"></div>
<div id="form-message-success">
Your message was sent, thank you!
</div>
</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/main.js"></script>
	<script defer
		src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993"
		integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA=="
		data-cf-beacon='{"rayId":"7ab4aaf02d67afe8","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}'
		crossorigin="anonymous"></script>
</body>
</html>