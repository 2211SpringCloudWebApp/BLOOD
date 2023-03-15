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
			<form action="/book/placelist.bld" accept-charset="utf-8" name="placelist" method="post">
				지역선택
			        <select name="pCity" id="pCity" class="place_city">
			            <option value="0">전체</option>
			            <c:forEach items="${siList }" var="sido">
				            <option value="${sido }">${sido}</option>
						</c:forEach>
			        </select>
			        <select name="pCountry" id="pCountry" class="place_country">
			            <option value="0">군/구</option>
						<c:forEach items="${gunGuList }" var="gungu">
				            <option value="${gungu }">${gungu}</option>
						</c:forEach>
			        </select> <br>
			        키워드 검색 <input type="text" name="keyword" id="kInput" class="search_keyword">
			        <input type="submit" value="검색"><br>
	<!-- 				        <input type="button" value="확인" onclick="checkPlace()"> -->
	<!-- 				        <input type="reset" value="취소"> -->
				</form>
				<table>
					<thead>
						<tr>
							<th>헌혈원</th>
							<th>헌혈의집 주소</th>
							<th>전화번호</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${pList }" var="place">
						<tr>
							<td>${place.pHome }</td>
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
			document.querySelector("#pCity").addEventListener("change", function(e) {
				var opt = e.target.options[e.target.selectedIndex];
				//console.log(opt.value);
				location.href="/book/placelistView.bld?searchArea="+opt.value;
			});
		</script>	
	</body>
</html>