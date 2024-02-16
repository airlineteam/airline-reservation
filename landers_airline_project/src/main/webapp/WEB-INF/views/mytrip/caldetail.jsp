<%@page import="java.util.List"%>
<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@page import="util.CalendarUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	CalendarDto dto = (CalendarDto)request.getAttribute("dto");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
.center{
	margin: auto;
	width: 800px;
	text-align: center;		
}
.th1{
	background: white;
	color: #9A161F;
}

</style>
</head>
<body>

<br>

<div class="center">
<form action="calendardetail.do" method="post">
<table class="table table-bordered">
<col width="200"><col width="500">

<tr>
	<th class="th1">아이디</th>
	<td align="left"><%=dto.getUser_id() %></td>
</tr>
<tr>
	<th>일정</th>
<%-- 	<td align="left"><%=CalendarUtil.toDates(dto.getWdate()) %></td> --%>
<td align="left"><%=dto.getWdate() %></td>
</tr>
<tr>
	<th>제목</th>
	<td>
		<input type="text" class="form-control" value="<%=dto.getTitle() %>" readonly="readonly">
	</td>
</tr>
<tr>
	<th>내용</th>
	<td>
		<textarea rows="15" cols="50" class="form-control" readonly="readonly" placeholder="내용을 기입"><%=dto.getContent() %></textarea>
	</td>
</tr>
</table>

<button type="button" class="btn btn-primary" onclick="updateCal(<%=dto.getSeq() %>)" style="background-color:#9A161F; border-color:#9A161F">일정수정</button>
&nbsp;&nbsp;&nbsp;&nbsp;	
<button type="button" class="btn btn-primary" onclick="deleteCal(<%=dto.getSeq() %>)" style="background-color:#9A161F; border-color:#9A161F">일정삭제</button>
</form>
</div>

<script type="text/javascript">
function updateCal( seq ) {
	location.href = "calupdate.do?seq=" + seq;	
}
function deleteCal( seq ) {
	location.href = "caldelete.do?seq=" + seq;
}
</script>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</body>
</html>