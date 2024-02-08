
<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<FlightinfoDto> list = (List<FlightinfoDto>)request.getAttribute("list");
String person_num = (String)request.getAttribute("person_num");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
</head>
<body>
<h1>예약 조회 완료!</h1>


<table border="1">
<tr>
<th>번호</th><th>비행기 번호</th><th>비행기 코드</th><th>출발지</th><th>도착지</th><th>출발시간</th><th>도착시간</th><th>가격</th><th>예약</th>
</tr>
<%
for(int i = 0; i < list.size(); i++) {
	FlightinfoDto dto = list.get(i);
	%>
	<tr>
		<td><%=i + 1 %></td>
		<th><%=dto.getFlight_id() %></th>
		<th><%=dto.getFlight_name() %></th>
		<th><%=dto.getDeparture_airport() %></th>
		<th><%=dto.getArrival_airport() %></th>
		<th><%=date_util.toDates(dto.getDeparture_date())%></th>
		<th><%=date_util.toDates(dto.getArrival_date())%></th>
		<th><%=dto.getPrice() %>원</th>
		<th>
			<a href="seat.do?flight_id=<%=dto.getFlight_id() %>&person_num=<%=person_num %>">
			예약하기
			</a>
		</th>
	</tr>
	<% 
}
%>
</table>


</body>
</html>