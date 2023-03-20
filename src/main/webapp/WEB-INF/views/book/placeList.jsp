<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>헌혈의집 선택 페이지</title>
		<link rel="stylesheet" href="../../../resources/css/book/placeList.css">
		
	</head>
	<body>
		<!-- header -->
		<%-- <jsp:include page="../layout/header.jsp"></jsp:include> --%>
		
		<!-- main -->
		<main>
			<h2 class="pageTitle">헌혈의집 선택</h2>
        <!-- 검색한 결과를 리스트(place_tbl)로 출력하고, 선택하고자 하는 헌혈의집을 선택 -->
			<form action="/book/placelistView.bld" accept-charset="utf-8" name="placelist" method="get" >
				<div class="tbl1">
					<table>
						<caption>헌혈의집 찾기</caption>
						<colgroup>
							<col style="width:30%;">
							<col style="width:70%;">
						</colgroup>
						<tbody>
							<tr>
								<th>지역 선택</th>
								<td class="al">
									<label for="selCity"></label>
									<select name="pCity" id="pCity" class="pLocal">
										<option value="" selected>시도</option>
										<c:forEach items="${siList }" var="sido">
											<option value="${sido }">${sido}</option>
										</c:forEach>
									</select>
									
									<label for="selCountry"></label>
							        <select name="pCountry" id="pCountry" class="pLocal">
							            <option value="" selected>시군구</option>
										<c:forEach items="${gunGuList }" var="gungu">
								            <option value="${gungu }">${gungu}</option>
										</c:forEach>
							        </select>
								</td>
							</tr>
							
							<tr>
								<th>키워드 검색</th>
								<td class="al">
									<label for="seachKeyword"></label>
							        <input type="text" name="pHome" id="seachKeyword" value="${place.pHome }" class="pLocal" placeholder="검색어를 입력해주세요">
							        <input type="submit" class="pLocal" value="검색" >
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			
			</form>
			
			
			<div class="tbl2">
				<table>
					<caption>
						<span>헌혈의집 목록을 확인할 수 있습니다</span>
					</caption>
					<colgroup>
						<col style="width:20%;">
						<col style="width:50%;">
						<col style="width:17%;">
						<col style="width:13%;">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">헌혈의집</th>
							<th scope="col">주소</th>
							<th scope="col">전화번호</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<!-- 검색 결과가 존재하면 리스트 출력 -->
						<c:forEach items="${pList }" var="place">
							<tr>						
								<td id="cInput_home">${place.pHome }</td>
								<td id="cInput_addr">${place.pAddr }</td>
								<td id="cInput_phone">${place.pPhone }</td>
								<td><input type="button" value="선택" class="pChoose" onclick="choosePlace(${place.pNo}, this)"></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

		</main>
		
		
	
		<!-- footer -->
		<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
		
		
		<script>
			/* '시' 선택 시 유지 */
			document.querySelector("#pCity").addEventListener("change", function(e) {
			    var opt = e.target.options[e.target.selectedIndex];
			    /* console.log(opt.value); */
			    
			    // Construct the URL based on the value of the selected option
			    var url = "/book/gunGulistView.bld?pCity=" + opt.value;

			    // Save the selected value in local storage
			    localStorage.setItem("selectedCity", opt.value);

			    // Redirect the page to the constructed URL
			    location.href = url;
			});

			// Set the selected option to be the value saved in local storage, if available
 			var selectedCity = localStorage.getItem("selectedCity");
			if (selectedCity) {
			    document.querySelector("#pCity").value = selectedCity;
			}
			
			
			
			
			/* 선택 클릭 시 해당 열에 해당하는 pNo를 booking.jsp로 전달 */
			function choosePlace(pNo, obj) {
				console.log(obj);
				/* window.opener.document.getElementById("chooseBtn").value; */
				opener.document.getElementById("pInput_home").value = obj.parentElement.previousElementSibling.previousElementSibling.previousElementSibling.innerText;
				opener.document.getElementById("pInput_addr").value = obj.parentElement.previousElementSibling.previousElementSibling.innerText;
				opener.document.getElementById("pInput_phone").value = obj.parentElement.previousElementSibling.innerText;
				opener.document.getElementById("pInput_num").value = pNo;
				window.close();
				/* alert('선택함'); */

			}

			
		</script>	
	</body>
</html>