<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<FlightinfoDto> list = (List<FlightinfoDto>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>예약 조회 완료</h1>


<table border="1">
<tr>
<th>번호</th><th>비행기 코드</th><th>출발지</th><th>도착지</th><th>출발시간</th><th>도착시간</th><th>가격</th>
</tr>
<%
for(int i = 0; i < list.size(); i++) {
	FlightinfoDto dto = list.get(i);
	%>
	<tr>
		<td><%=i + 1 %></td>
		<th><%=dto.getFlight_name() %></th>
		<th><%=dto.getDeparture_airport() %></th>
		<th><%=dto.getArrival_airport() %></th>
		<th><%=date_util.toDates(dto.getDeparture_date()) %></th>
		<th><%=date_util.toDates(dto.getArrival_date()) %></th>
		<th><%=dto.getPrice() %></th>
	</tr>
	<% 
}
%>
</table>
</body>
</html>