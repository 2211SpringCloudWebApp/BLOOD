<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="icon" href="../../../resources/images/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
		<link rel="stylesheet" href="../../../resources/css/main.css" />
		<script defer src="../../../resources/js/youtube.js"></script>
		<script defer src="../../../resources/js/main2.js"></script>
		
	</head>
	<body>
		<jsp:include page="../layout/header.jsp"></jsp:include>
		
		<h1>자유게시판 등록</h1>
		<form action="/notice/freeWrite.bld" method="post">
			작성자 id : ${loginUser.memberId } <br> 제목 : <input type="text"
				name="noticeTitle"> <br> 내용 :
			<textarea name="noticeContent"></textarea>
			<br> <input type="submit" value="등록"> <input type="reset"
				value="취소"> <a href="/notice/free.bld">뒤로가기</a>
		</form>
		
	</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="/resources/css/write1.css" />
<link rel="stylesheet" href="/resources/css/write2.css" />
<link rel="stylesheet" href="/resources/css/write3.css" />
<link rel="stylesheet" href="/resources/css/write4.css" />
<link rel="stylesheet" href="/resources/css/write5.css" />


<title>Contact Form #2</title>
<script nonce="b84ec570-bb47-4d21-ab6d-cdc8a57f83df">(function(w,d){!function(bv,bw,bx,by){bv[bx]=bv[bx]||{};bv[bx].executed=[];bv.zaraz={deferred:[],listeners:[]};bv.zaraz.q=[];bv.zaraz._f=function(bz){return function(){var bA=Array.prototype.slice.call(arguments);bv.zaraz.q.push({m:bz,a:bA})}};for(const bB of["track","set","debug"])bv.zaraz[bB]=bv.zaraz._f(bB);bv.zaraz.init=()=>{var bC=bw.getElementsByTagName(by)[0],bD=bw.createElement(by),bE=bw.getElementsByTagName("title")[0];bE&&(bv[bx].t=bw.getElementsByTagName("title")[0].text);bv[bx].x=Math.random();bv[bx].w=bv.screen.width;bv[bx].h=bv.screen.height;bv[bx].j=bv.innerHeight;bv[bx].e=bv.innerWidth;bv[bx].l=bv.location.href;bv[bx].r=bw.referrer;bv[bx].k=bv.screen.colorDepth;bv[bx].n=bw.characterSet;bv[bx].o=(new Date).getTimezoneOffset();if(bv.dataLayer)for(const bI of Object.entries(Object.entries(dataLayer).reduce(((bJ,bK)=>({...bJ[1],...bK[1]})))))zaraz.set(bI[0],bI[1],{scope:"page"});bv[bx].q=[];for(;bv.zaraz.q.length;){const bL=bv.zaraz.q.shift();bv[bx].q.push(bL)}bD.defer=!0;for(const bM of[localStorage,sessionStorage])Object.keys(bM||{}).filter((bO=>bO.startsWith("_zaraz_"))).forEach((bN=>{try{bv[bx]["z_"+bN.slice(7)]=JSON.parse(bM.getItem(bN))}catch{bv[bx]["z_"+bN.slice(7)]=bM.getItem(bN)}}));bD.referrerPolicy="origin";bD.src="/cdn-cgi/zaraz/s.js?z="+btoa(encodeURIComponent(JSON.stringify(bv[bx])));bC.parentNode.insertBefore(bD,bC)};["complete","interactive"].includes(bw.readyState)?zaraz.init():bv.addEventListener("DOMContentLoaded",zaraz.init)}(w,d,"zarazData","script");})(window,document);</script></head>
<body>
<div class="content">
<div class="container">
<div class="row">
<div class="col-md-5 mr-auto">
<h2>게시글 등록</h2>
<p class="mb-5">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iste quaerat autem corrupti asperiores accusantium et fuga! Facere excepturi, quo eos, nobis doloremque dolor labore expedita illum iusto, aut repellat fuga!</p>
<ul class="list-unstyled pl-md-5 mb-5">
<li class="d-flex text-black mb-2">
<span class="mr-3"><span class="icon-map"></span></span> 34 Street Name, City Name Here, <br> United States
</li>
<li class="d-flex text-black mb-2"><span class="mr-3"><span class="icon-phone"></span></span> +1 (222) 345 6789</li>
<li class="d-flex text-black"><span class="mr-3"><span class="icon-envelope-o"></span></span> <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6f060109002f0216180a0d1c061b0a410c0002">[email&#160;protected]</a> </li>
</ul>
</div>
<div class="col-md-6">


<form action="/notice/freeWrite.bld" class="mb-5" method="post" id="contactForm" name="contactForm">
<div class="row">
<div class="col-md-12 form-group">
<label for="name" class="col-form-label">ID</label><br>
<label style="font-size : xx-large; color:red;" for="name" class="col-form-label"> "${loginUser.memberId }"</label>

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
<textarea class="form-control" name="noticeContent" id="message" cols="30" rows="7"></textarea>
</div>
</div>
<div class="row">
<div class="col-md-12">
<input type="submit" value="등록" class="btn btn-primary rounded-0 py-2 px-4">
<input type="reset" value="취소" class="btn btn-primary rounded-0 py-2 px-4">
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
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/main.js"></script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/vb26e4fa9e5134444860be286fd8771851679335129114" integrity="sha512-M3hN/6cva/SjwrOtyXeUa5IuCT0sedyfT+jK/OV+s+D0RnzrTfwjwJHhd+wYfMm9HJSrZ1IKksOdddLuN6KOzw==" data-cf-beacon='{"rayId":"7ababa2a5c278376","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2023.2.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>