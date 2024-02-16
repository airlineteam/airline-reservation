
<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
	margin-top: 100px;	
	margin-bottom: 100px;	
}
th{
	background: white;
	color: #9A161F;
}
</style>

</head>
<body>
<%

String date = (String)request.getAttribute("date");
String time = (String)request.getAttribute("time");

CalendarDto dto = (CalendarDto)request.getAttribute("dto");
%>
 


<div class="center">

<form id="frm" action="calendarupdateAf.do" method="post">

<table class="table table-bordered">
<col width="200"><col width="500">

<tr>
	<th>아이디</th>
	<td align="left">
		<%=dto.getUser_id() %>
		<input type="hidden" name="seq" value="<%=dto.getSeq()%>">
	</td>
</tr>
<tr>
	<th>일정</th>
	<td>
		<div class="input-group triple-input">
			<input type="date" name="date" class="form-control" value="<%=date %>">&nbsp;
			<input type="time" name="time" class="form-control" value="<%=time %>">
		</div>
	</td>
</tr>
<tr>
	<th>제목</th>
	<td>
		<input type="text" size="60" id="title" name="title" class="form-control" value="<%=dto.getTitle() %>">
	</td>
</tr>
<tr>
	<th>내용</th>
	<td>
		<textarea rows="15" cols="60" id="content" name="content" class="form-control" ><%=dto.getContent() %></textarea>
	</td>
</tr>
</table>

<button type="button" id="updateBtn" class="btn btn-primary" style="background-color:#9A161F; border-color:#9A161F">수정완료</button>

</form>

</div>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#updateBtn").on("click", function () {
		// 제목이 비어 있는지 첵크
		if( $("#title").val().trim() === "" ){
			alert("제목을 기입해 주십시오");
			return;
		}		
		// 내용이 비어 있는지 첵크
		if( $("#content").val().trim() === "" ){
			alert("내용을 기입해 주십시오");
			return;
		}
		
		$("#frm").attr("action", "calendarupdateAf.do").submit();
	});	
})
</script>
</body>
</html>








