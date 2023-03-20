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
			헌혈의집 선택<br>
			검색 결과<br>
        <!-- 검색한 결과를 리스트(place_tbl)로 출력하고, 선택하고자 하는 헌혈의집을 선택 -->
			<table>
				<thead>
					<tr>
						<th>헌혈의집</th>
						<th>주소</th>
						<th>전화번호</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${searchResult }" var="place">
					<tr>
						<td><a href="/book/placelistView.bld?pNo=${place.pNo}">${place.pHome }</a></td>
						<td>${place.pAddr }</td>
						<td>${place.pPhone }</td>
						<td><input type="button" value="선택"></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>

		</main>
		
		
	
		<!-- footer -->
		<%-- <jsp:include page="../layout/footer.jsp"></jsp:include> --%>
		<script>
			/* document.querySelector("#pCity").addEventListener("change", function(e) {
				var opt = e.target.options[e.target.selectedIndex];
				console.log(opt.value);
				location.href="/book/placelistView.bld?searchArea="+opt.value;

				e.target.value = opt.value;
			}); */
			
			
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


			
			function choosePlace() {
				window.opener.document.getElementById("chooseBtn").value = #{pNo};
				alert('선택함');

			}

			
		</script>	
	</body>
</html>