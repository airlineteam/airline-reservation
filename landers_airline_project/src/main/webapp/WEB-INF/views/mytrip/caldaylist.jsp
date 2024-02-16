
<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.spi.CalendarNameProvider"%>
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
=======
<title>일별일정보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap');
.center{
	margin-top: 10px;
	margin-bottom: 150px;
	margin-left: 260px;
	width: 1000px;
	text-align: center;
}

th{
	background: #9a161f;
	color: white;
}

tr{
	line-height: 30px;
}

h2 {
	color: black;
	text-align: center;
}

#txx a {
	text-decoration: none;
}

#txx a:link{
	color: black;
}

#txx a:visited{
	color: black;
}

#txx a:hover{
	text-decoration: underline;
	color: black;
}

body {
  background-color: #white;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 400px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #9A161F;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}



.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 200px;
  margin: auto;
  max-width: 1000px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#ffffff;
  background: #a12a32;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:18px;
  font-weight: 300;
  padding:20px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:15px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#9E9E9E;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#9E9E9E;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:15px;
  text-align:left;
  vertical-align:middle;
  font-weight:400;
  font-size:17px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}

h3 {
	text-align: center;
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






=======
<br/><br/><br/>
<h3><font style="font-family: fantasy"><< <%=year %>년 <%=month %>월 <%=day %>일의 일정 >></font></h3>

<div class="center">
<table class="table-fill">
<col width="100"><col width="450"><col width="300">
<thead>
	<tr>
		<th>번호</th><th>제목</th><th>시간</th>
	</tr>
</thead>
<tbody class="table-hover">
<%
if(list == null || list.size() == 0) {
	%>
	<tr>
	<td colspan="3" style="vertical-align: middle;">※등록된 일정이 없습니다. 일정을 생성해 주세요.</td>
	</tr>
	<% 
 }else{
	for(int i = 0; i < list.size(); i++) {
		CalendarDto dto = list.get(i);
		%>
		<span id="tx">
		 <tr>
			<th><%=(i + 1) %></th>
			<td align="left">
				<span id="txx">
				<a href="./calendardetail.do&seq=<%=dto.getSeq() %>">
					<%=dto.getTitle() %>
				</a>
				</span>
			</td>
			<td><%=CalendarUtil.toDates(dto.getWdate()) %></td>
		</tr>
		</span>
		<% 
	}
 }
%>
</tbody>
</table>
</div>
</body>
</html>

