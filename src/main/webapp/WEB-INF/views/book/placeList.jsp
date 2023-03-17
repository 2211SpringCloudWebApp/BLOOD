<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>헌혈의집 선택 페이지</title>
	</head>
	<body>
		<!-- header -->
		<%-- <jsp:include page="../layout/header.jsp"></jsp:include> --%>
		
		<!-- main -->
		<main>
			헌혈의집 선택
        <!-- 검색한 결과를 리스트(place_tbl)로 출력하고, 선택하고자 하는 헌혈의집을 선택 -->
			<form action="/book/searchView.bld" accept-charset="utf-8" name="placelist" method="get" >
				지역선택
		        <select name="place_city" id="pCity">
		            <option value="city" selected>시도</option>
		            <c:forEach items="${siList }" var="sido">
			            <option value="${sido }">${sido}</option>
					</c:forEach>
		        </select>
		        <select name="place_country" id="pCountry" >
		            <option value="country">시군구</option>
					<c:forEach items="${gunGuList }" var="gungu">
			            <option value="${gungu }">${gungu}</option>
					</c:forEach>
		        </select> <br>
		        키워드 검색
		        <input type="text" name="searchValue" placeholder="검색어를 입력해주세요">
		        <input type="submit" value="검색" ><br>
			</form>
			<table>
				<thead>
					<tr>
						<th>헌혈의집</th>
						<th>주소</th>
						<th>전화번호</th>
					</tr>
				</thead>
				<tbody>
					<!-- 검색 결과가 존재하면 리스트 출력 -->
					<c:forEach items="${pList }" var="place">
					<tr>						
						<td id="cInput_home">${place.pHome }</td>
						<td id="cInput_addr">${place.pAddr }</td>
						<td id="cInput_phone">${place.pPhone }</td>
						<td><input type="button" value="선택" onclick="choosePlace(${place.pNo}, this)"></td>
					</tr>
					</c:forEach>
					
				</tbody>
			</table>

		</main>
		
		
	
		<!-- footer -->
		<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
		<script>
	
			document.querySelector("#pCity").addEventListener("change", function(e) {
			    var opt = e.target.options[e.target.selectedIndex];
			    /* console.log(opt.value); */
			    
			    // Construct the URL based on the value of the selected option
			    var url = "/book/placelistView.bld?searchArea=" + opt.value;

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