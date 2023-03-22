<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html lang="ko">

	<head>
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<title>헌혈자인증</title>
		
		<meta property="og:type" content="website" />
		<meta property="og:site_name" content="heartbeat" />
		<meta property="og:title" content="Heart Beat" />
		<meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
		<meta property="og:description" content="./images/bg.png">
		
		<link rel="icon" href="./images/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
		<link rel="stylesheet" href="../../../resources/css/munjin/intro.css" />
	</head>
	
	<body>
	
		<!-- HEADER                                -->
		<jsp:include page="../layout/header.jsp"></jsp:include>
		
		
		
		<!--     MAIN                                                       -->
		<main>
		  <section class="munjin">
		    <div class="inner">
		      <div class="munjin1">
		        <img src="../../../resources/images/munjin_bike.png" alt="munjin_bike">
		      </div>
		
		      <form action="/book/identity.bld" method="post" id="identityForm">
              	<input type="hidden" name="memberId" value="${loginUser.memberId }">
		        <div class="munjin2">
		          <div class="munjin2__1">
		            <div class="munjin2__1__top">성명</div>
		            <div class="munjin2__1__bottom">
		              <input type="text" id="user_name" name="member-name" placeholder="성명" value="" onchange="validateName()">
		            </div>
		          </div>
		          <div class="munjin2__2">
		            <div class="munjin2__2__top">주민등록번호</div>
		            <div class="munjin2__2__bottom">
		              <input type="text" id="kn1" name="member-kn-1" placeholder="주민등록번호(앞)" value="" onchange="validateResidentNumber1()">
		              <input type="password" id="kn2" name="member-kn-2" placeholder="주민등록번호(뒤)" value="" onchange="validateResidentNumber2()">
		            </div>
		          </div>
		        </div>
		        <div class="munjin3">
		          <button type="submit" >
		          <!-- <a href="#" onclick="submit()">헌혈예약</a> -->
		          	<div>헌혈예약</div>
		          </button>
		        </div>
		      </form>
		    </div>
		
		  </section>
		</main>
		
		
		
		
		
		<!--     FOOTER                                               -->
		
		<div class="wavefooter">
		  <div>
		    <svg class="waves" viewBox="0 24 150 28" preserveAspectRatio="none">
		      <defs>
		        <path id="gentle-wave" d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z" />
		      </defs>
		      <g class="parallax">
		        <use xlink:href="#gentle-wave" x="48" y="0" fill="rgb(255, 188, 126, 1)" />
		        <use xlink:href="#gentle-wave" x="48" y="3" fill="rgb(255, 134, 21, 0.5)" />
		        <use xlink:href="#gentle-wave" x="48" y="5" fill="rgb(255, 95, 21, 0.3)" />
		        <use xlink:href="#gentle-wave" x="48" y="7" fill="rgb(255, 100, 50, 1)" />
		      </g>
		    </svg>
		  </div>
		</div>
		
		<div class="content flex"></div>
		
		
		
		
		<script>
		
		  // 이름 유효성 검사
		  function validateName() {
		    var name = document.getElementById("user_name");
		    var nameRegExp = /[ㄱ-힣]+$/;
		
		    if (!nameRegExp.test(name.value)) {
		      alert("이름은 한글로만 입력해주세요");
		      name.value="";
		      return false;
		    }
		    return true;
		  }
		  
		  
		  // 주민번호 유효성검사
		  function validateResidentNumber1() {
		    var kn1 = document.getElementById("kn1");
		    var id1RegExp = /^\d{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/g;
		
		    if (!id1RegExp.test(kn1.value)) {
		      alert("주민등록번호가 유효하지 않습니다.");
		      kn1.value="";
		      return false;
		    }
		    return true;
		  }
		  function validateResidentNumber2() {
		    var kn2 = document.getElementById("kn2");
		    var id2RegExp = /[1-4][0-9]{6}$/g;
		
		    if (!id2RegExp.test(kn2.value)) {
		      alert("주민등록번호가 유효하지 않습니다.");
		      kn2.value="";
		      return false;
		    }
		    return true;
		  }
		
		  
		  
		  // 제출 유효성 검사
		  function check(){
		    var valid = true;
		    valid = valid && validateName();
		    valid = valid && validateResidentNumber1();
		    valid = valid && validateResidentNumber2();
		    return valid;
		  }
		
		</script>
	</body>
</html>