<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		
		<title>헌혈 예약 페이지</title>
		
		<meta property="og:type" content="website" />
		<meta property="og:site_name" content="heartbeat" />
		<meta property="og:title" content="Heart Beat" />
		<meta property="og:description" content="의사가 아니어도 생명을 구할 수 있는 방법" />
		<meta property="og:description" content="./resources/images/bg.png">
		
		<link rel="icon" href="../../../resources/images/favicon.png" />
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" />
		<link rel="preconnect" href="https://fonts.gstatic.com" />
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" />
		<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
		<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
		
		<link rel="stylesheet" href="../../../resources/css/book/booking.css" />
	</head>
	

	
	<body>
		<!-- header -->
		<jsp:include page="../layout/header.jsp"></jsp:include>

	
		<!-- main -->
		<main>
			<h1 class="pageTitle">헌혈의집 헌혈예약</h1>
			
			<div class="divTags">
			
				<section class="form_section">
					<form action="/book/reserve.bld" accept-charset="utf-8" name="reserve" method="post">
						<label class="label">예약자</label><br>
						<input type="text" name="memberName" class="inputBtn" placeholder="예약자 성명 입력"><br>
						
						<label class="label">휴대폰번호</label><br>
						<input type="text" name="bkPhone" class="inputBtn" placeholder="휴대폰번호 입력"><br>
						
						<label for="booking_local" id="home" class="label">헌혈의집</label>
						<input type="button" id="search" class="clickBtn" value="찾기"><br>
						<input type="text" id="pInput_home" class="homeInfo" placeholder="헌혈의집" readonly><br>
						<input type="text" id="pInput_addr" class="homeInfo" placeholder="헌혈의집 주소" readonly><br>
						<input type="text" id="pInput_phone" class="homeInfo" placeholder="헌혈의집 전화번호" readonly>
						<input type="hidden" id="pInput_num"><br>
						
						<label for="booking_day" class="label">예약날짜 </label><br>
						<input type="date" name="bkDate" id="Date" class="inputBtn"><br>
						
						<label class="label">예약시간</label><br>
						<input type="time" name="bkTime" min="09:00" max="20:00" class="inputBtn">
						
						<br><br>
						
						<input type="submit" value="예약하기" class="reserveBtn">
						<input type="reset" value="취소" class="reserveBtn">
			
					</form>
				</section>
				<section class="img_section">
					<img alt="헌혈권장" src="../../../resources/images/card_img1.png" style="width:auto; height:auto;">
				
				</section>
			</div>
			
		</main>
		

		
		<!-- footer -->
		<jsp:include page="../layout/footer.jsp"></jsp:include>
	</body>
	
	<script type="text/javascript">
		let openWin;
		
		var now_utc = Date.now() // 지금 날짜를 밀리초로
		// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
		var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
		// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
		var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
		document.getElementById("Date").setAttribute("min", today);
		
		// window창으로 시군구 장소 입력받기 가능
		const pNoEl = document.querySelector("#search");
		pNoEl.addEventListener("click", function() {
			window.open("/book/placelistView.bld?searchArea=","newplace","width=800, height=600");
		});
		

	</script>
	
	
</html>