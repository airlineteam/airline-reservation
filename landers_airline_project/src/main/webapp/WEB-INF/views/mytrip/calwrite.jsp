<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="util.CalendarUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
   UserDto login = (UserDto)session.getAttribute("login");

   String year = (String)request.getAttribute("year");
   String month = (String)request.getAttribute("month");
   String day = (String)request.getAttribute("day");
   System.out.println(year + "-" + month + day);
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정추가</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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



<div class="center">

<form id="frm" action="calendarwriteAf.do" method="post">

<table class="table table-bordered">
<col width="200"><col width="500">
<tr>
   <th>아이디</th>
   <td align="left">
      <%=login.getUser_id() %>
      <input type="hidden" name="user_id" value="<%=login.getUser_id() %>">
   </td>
</tr>
<tr>
   <th>일정</th>
   <td align="left">
      <div class="input-group triple-input">      
         <input type="date" name="date" class="form-control" id="date" style="width: 30%">      
         <input type="time" name="time" class="form-control" id="time" style="width: 30%">
      </div>      
   </td>
</tr>
<tr>
   <th>제목</th>
   <td>
      <input type="text" id="title" name="title" size="80" class="form-control" >
   </td>
</tr>
<tr>
   <th>내용</th>
   <td>
      <textarea rows="15" cols="80" id="content" name="content" class="form-control" ></textarea>
   </td>
</tr>
</table>

<button type="submit" id="writeBtn" class="btn btn-primary" style="background-color:#9A161F; border-color:#9A161F">일정추가</button>

</form>
</div>

<script type="text/javascript">
$(document).ready(function(){

   let year = "<%=year %>";
   let month = "<%=month %>";
   let day = "<%=day %>";
   console.log(year + "=" + month + "=" + day);
   
   // 2023-07-05
   document.getElementById("date").value = year + "-" + two(month) + "-" + two(day);
   
   let d = new Date();
   document.getElementById("time").value = d.getHours() + ":" + d.getMinutes();
})

function two( str ) {
   return str.length>1?str:"0"+str;
}
$(document).ready(function(){
	
	$("#writeBtn").on("click", function () {
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
		
		$("#frm").attr("action", "calendarwriteAf.do").submit();
	});	
})
</script>


</body>
</html>