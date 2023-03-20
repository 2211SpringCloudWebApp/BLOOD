+
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지</title>

<meta property="og:type" content="website" />
<meta property="og:site_name" content="heartbeat" />
<meta property="og:title" content="Heart Beat" />
<meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
<meta property="og:description" content="./resources/images/bg.png">
<link rel="stylesheet" href="/resources/css/member/register.css">
<link rel="icon" href="./resources/images/favicon.png" />
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
<script defer src="/resources/js/main.js"></script>

</head>
<body>
	<jsp:include page="../layout/header.jsp"></jsp:include>
	<main class="login-form">

		<form action="/member/register.bld" method="post"
			style="margin-top: 200px">

			<div class="int-area">
				<input type="text" id="id" name="member-id" onchange="validateId()">
				<label for="id">아이디</label>
			</div>
			<div class="int-area">
				<input type="password" id="pw" name="member-pw"
					onchange="validatePw()"> <label for="id">비밀번호</label>
			</div>
			<div class="int-area">
				<input type="text" id="name" name="member-name"
					onchange="validateName()"> <label for="id">이름</label>
			</div>
			<div class="int-area">
				<input type="text" id="kn1" name="member-kn" placeholder="앞 6자리"
					onchange="validateResidentNumber1()"> <input
					type="password" id="kn2" name="member-kn" placeholder="뒤 7자리"
					onchange="validateResidentNumber2()"> <label for="id">주민번호</label>
			</div>
			<div class="bloodtype">
				<label for="id" class="bldtype">혈액형</label><br> <input
					type="radio" class="bldtype" name="bloodtype" value="A">A형
				<input type="radio" class="bldtype" name="bloodtype" value="B">B형
				<input type="radio" class="bldtype" name="bloodtype" value="O">O형
				<input type="radio" name="bloodtype" value="AB">AB형<br>
			</div>
			<div class="int-area">
				<input type="text" id="email" name="member-email"
					onchange="validateEmail()"> <label for="id">이메일</label>
			</div>
			<div class="int-area">
				<input type="text" id="sample4_postcode" name="member-addr">
				<label for="id">주소</label>
			</div>

			<input type="button" class="btn-area2"
				onclick="sample4_execDaumPostcode()" value="우편번호 찾기">

			<div class="int-area">
				<input type="text" name="member-phone"> <label for="id">전화번호</label>
			</div>
			<div class="btn-area">
				<button type="reset"  onclick="location.href='/'">취소</button>
				<button type="submit"  onclick="return check()">등록</button>
			</div>
		</form>
	</main>



	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
			//아이디 유효성 검사
			function validateId() {
 	 			var id = document.getElementById("id");
  				var regExp = /^[a-zA-Z0-9]+$/;  // 영문과 숫자만 가능한 정규식
  
  				if (!regExp.test(id.value)) {
    				alert("아이디는 영문과 숫자만 입력해주세요.");
    				id.value = "";
    				return false;
  					}
  					return true;
				}
			//비밀번호 유효성 6글자이상 한글 사용못하게
				function validatePw() {
  					var pw = document.getElementById("pw");
  					var regExp = /^[a-zA-Z0-9!@#$%^&*()_+|{}[\]:'"<>,.?/`~\\-]+$/;  // 비밀번호 정규식
  					
  					if (pw.value.length < 6) {
   			 			alert("비밀번호는 6글자 이상 입력해주세요.");
   			 			pw.value = "";
    					return false;
  						} 
  						return true;
				}
			//이름한글만 적게 유효성
			function validateName() {
  				var name = document.getElementById("name");
  				var regExp = /^[가-힣]+$/;  // 한글만 가능한 정규식
  
  				if (!regExp.test(name.value)) {
    			alert("이름은 한글로만 입력해주세요.");
    			name.value = "";
    				return false;
  					}
  					return true;
				}
			//email 유효성
			function validateEmail() {
  				var email = document.getElementById("email");
  				var regExp = /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+$/;  // 이메일 주소 정규식
  
  				if (!regExp.test(email.value)) {
    			alert("유효한 이메일 주소를 입력해주세요.");
    			email.value = "";
    					return false;
  					}
  						return true;
				}	
			// 주민번호 유효성검사
			function validateResidentNumber1() {
 				var kn1 = document.getElementById("kn1");
  				var regExp1 = /^\d{2}(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/g;  // 6자리 숫자만 가능한 정규식
  
  				if (!regExp1.test(kn1.value)) {
    			alert("주민등록번호가 유효하지 않습니다.");
    			kn1.value = "";
   					return false;
  					}
  					return true;
				}
			function validateResidentNumber2() {
  				var kn2 = document.getElementById("kn2");
 				var regExp2 = /[1-4][0-9]{6}$/g;  // 3자리 숫자-4자리 숫자만 가능한 정규식
  
  				if (!regExp2.test(kn2.value)) {
    			alert("주민등록번호가 유효하지 않습니다.");
    			kn2.value = "";
   					return false;
  					}
  					return true;
				}

			//주소 api 스크립트
			function sample4_execDaumPostcode() {
				new daum.Postcode(
				{
					oncomplete : function(data) {
						console.log(data);
						document.getElementById("sample4_postcode").value = data.zonecode+ ","+ data.roadAddress+","+ data.buildingName;
					}
				}).open();
			}
			// 제출 유효성 검사
			function check(){
				var valid = true;
				valid = valid && validateId();
				valid = valid && validatePw();
				valid = valid && validateName();
				valid = valid && validateEmail();
				valid = valid && validateResidentNumber();
				return valid;
			}
			
		</script>

</body>
</html>