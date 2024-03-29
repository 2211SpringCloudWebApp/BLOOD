<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>원하는 예약 날짜 선택</title>
	</head>
	
	<script type="text/javascript">
		var today = new Date();
		function buildCalendar(){
		  var row = null;
		  var cnt = 0;
		  // 달력을 만들어서 출력할 table 및 tableTitle을 참조 (today -> 현재 연도와 월)
		  var calendarTable = document.getElementById("calendar");
		  var calendarTableTitle = document.getElementById("calendarTitle");
		  calendarTableTitle.innerHTML = today.getFullYear()+"년"+(today.getMonth()+1)+"월";
		  // 현재 달력의 첫날과 마지막날을 구함
		  var firstDate = new Date(today.getFullYear(), today.getMonth(), 1);
		  var lastDate = new Date(today.getFullYear(), today.getMonth()+1, 0);
		  // 작성할 테이블을 초기화
		  while(calendarTable.rows.length > 2){
		  	calendarTable.deleteRow(calendarTable.rows.length -1);
		  }
		
		  // 달의 첫 날까지 빈 셀을 생성
		  // 달력에 요일 채우기
		  row = calendarTable.insertRow();
		  for(i = 0; i < firstDate.getDay(); i++){
		  	cell = row.insertCell();
		  	cnt += 1;
		  }
		  // i = 요일
		  for(i = 1; i <= lastDate.getDate(); i++){
		  	cell = row.insertCell();
		  	cnt += 1;
		
		    cell.setAttribute('id', i);
		  	cell.innerHTML = i;
		  	cell.align = "center";
		
		  	// 선택한 일자를 출력
		    cell.onclick = function(){
		    	clickedYear = today.getFullYear();
		    	clickedMonth = ( 1 + today.getMonth() );
		    	clickedDate = this.getAttribute('id');
		
		    	clickedDate = clickedDate >= 10 ? clickedDate : '0' + clickedDate;
		    	clickedMonth = clickedMonth >= 10 ? clickedMonth : '0' + clickedMonth;
		    	clickedYMD = clickedYear + "-" + clickedMonth + "-" + clickedDate;
		
		    	opener.document.getElementById("date").value = clickedYMD;
		    	self.close();
		    }
		
		  	// 토요일, 일요일 색상
		    if (cnt % 7 == 1) {	// 나머지가 1이면 일요일
		    	cell.innerHTML = "<font color=#F79DC2>" + i + "</font>";
		    }
		
		    if (cnt % 7 == 0){	// 7로 나눠떨어지면 토요일
		    	cell.innerHTML = "<font color=skyblue>" + i + "</font>";
		    	row = calendar.insertRow();
		    }
		  }
		
		  // 달력의 마지막 날 뒤를 빈칸 행으로 채우기
		  if(cnt % 7 != 0){
		  	for(i = 0; i < 7 - (cnt % 7); i++){
		  		cell = row.insertCell();
		  	}
		  }
		}
		
		
		// 이전달로 넘기는 화살표
		function prevCalendar(){
			today = new Date(today.getFullYear(), today.getMonth()-1, today.getDate());
			buildCalendar();
		}
		// 다음달로 넘기는 화살표
		function nextCalendar(){
			today = new Date(today.getFullYear(), today.getMonth()+1, today.getDate());
			buildCalendar();
		}
		
		
	</script>
	
	
	<body>
		<table id="calendar" align="center">
			<tr>
				<td align="center"><label onclick="prevCalendar()"> ◀ </label></td>
				<td colspan="5" align="center" id="calendarTitle">yyyy년 m월</td>
				<td align="center"><label onclick="nextCalendar()"> ▶ </label></td>
			</tr>
			<tr>
				<td align="center"><font color ="#F79DC2">일</td>
				<td align="center">월</td>
				<td align="center">화</td>
				<td align="center">수</td>
				<td align="center">목</td>
				<td align="center">금</td>
				<td align="center"><font color ="skyblue">토</td>
			</tr>
			<script type="text/javascript">buildCalendar();</script>
		</table>
	
	
	</body>
</html>