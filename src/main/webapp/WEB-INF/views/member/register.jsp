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

  <link rel="icon" href="./resources/images/favicon.png" />
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
  <link rel="preconnect" href="https://fonts.gstatic.com" />
  <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
  <link rel="stylesheet" href="/resources/css/main.css" />
  <script defer src="/resources/js/youtube.js"></script>
  <script defer src="/resources/js/main.js"></script>
  
</head>
	<body>
		<jsp:include page="../layout/header.jsp"></jsp:include>
		<form action="/member/register.bld" method="post" style="margin-top:200px">
			아이디 : <input type="text"  name="member-id"><br>
			비밀번호 : <input type="password" name="member-pw"><br>
			이름 : <input type="text" name="member-name"><br>
			주민번호: <input type="text" id="kn1" name="member-kn">-
					<input type="password" id="kn2" name="member-kn"><br>
			혈액형 : <input type="radio" name="bloodtype" value="A">A형
					<input type="radio" name="bloodtype" value="B">B형
					<input type="radio" name="bloodtype" value="O">O형
					<input type="radio" name="bloodtype" value="AB">AB형<br>
			E-MAIL : <input type="text" name="member-email"><br>
			주소 : <input type="text" id="sample4_postcode" name="member-addr">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
			전화번호 : <input type="text" name="member-phone"><br>
			<input type="submit" value="등록">
			<input type="reset" value="취소">
		</form>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script>
			//주소 api 스크립트
			function sample4_execDaumPostcode() {
				new daum.Postcode(
				{
					oncomplete : function(data) {
						console.log(data);
						document.getElementById("sample4_postcode").value = data.zonecode+ ","+ data.autoJibunAddress+ ","+ data.buildingName;
					}
				}).open();
			}
			// 주민번호 유효성검사
			function isValidResidentRegistrationNumber(residentRegistrationNumber) {
			    if (residentRegistrationNumber === null || residentRegistrationNumber.length !== 13) {
			        return false;
			    }
			    var regex = /^[0-9]{6}-?[1-4]\d{6}$/;
			    return regex.test(residentRegistrationNumber);
			}
			
		</script>
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
</html>