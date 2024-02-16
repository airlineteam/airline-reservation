
<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@page import="java.util.List"%>

<%@page import="util.CalendarUtil"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	List<CalendarDto> list = (List<CalendarDto>)request.getAttribute("list");

	String year = (String)request.getAttribute("year");
	String month = (String)request.getAttribute("month");
	String day = (String)request.getAttribute("day");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일별일정</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>


<style type="text/css">
.center{
	margin: auto;
	width: 1000px;
	text-align: center;
}
th{
	background: royalblue;
	color: white;
} 
tr {
   line-height: 12px;   
}
</style>
</head>
<body>

<h2>일별일정</h2>
<br>
<h3><%=year %>년 <%=month %>월 <%=day %>일의 일정</h3>
<br>

<div class="center">

<table class="table table-hover">
<col width="100"><col width="450"><col width="300">
<tr>
	<th>번호</th><th>제목</th><th>시간</th>
</tr>

<%
for(int i = 0; i < list.size(); i++){
	CalendarDto dto = list.get(i);
	%>
	<tr>
		<td><%=(i + 1) %></td>
		<td align="left">
			<a href="calendar?param=caldetail&seq=<%=dto.getSeq() %>">
				<%=dto.getTitle() %>
			</a>
		</td>
		<td><%=CalendarUtil.toDates(dto.getWdate()) %></td>		
	</tr>
	<%
}
%>
</table>
<br>

<a href="calendar?param=calendarList">일정목록</a>

</div>

</body>
</html>






