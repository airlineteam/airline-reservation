<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.RefundDto"%>

<%@page import="com.landers.airline.dto.TicketDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	UserDto login = (UserDto)session.getAttribute("login");



	String ticket_id_str = request.getParameter("ticket_id");
	int ticket_id = Integer.parseInt(ticket_id_str);


%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환불</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<link href="mypagecss/userRefund.css" rel="stylesheet">

</head>
<body>


<div class="center">

<form action="userRefund.do?ticket_id=<%=ticket_id %>" id="frm" method="post">
<div style="margin-top: 50px;">
	<table class="table table-bordered">
	<col width="200"/><col width="500"/>
	
	<tbody>
	<tr>
		<th colspan = 2 style="background: #9A161F; color: white;">
			환불
		</th>
	</tr>
	<tr>
		<th>아이디</th>
		<td>
			<input type="text" id="user_id" name="user_id" class="form-control" value="<%=login.getUser_id() %>" readonly />
		</td>
	</tr>
	<tr>
		<th>환불사유</th>
		<td>
			<input type="text" id="content" name="content" class="form-control"/>
		</td>	
	</tr>
	
	
	</tbody>
	</table>
</div>
<br/>

<input type="submit" id="refundBtn" class="btn btn-danger" value="환불요청"/>


</form>
<br>
<br>
<br>
</div>

<script type="text/javascript">
$(document).ready(function(){
	
	$("#refundBtn").on("click", function () {
		// 환불사유 첵크
		if( $("#content").val().trim() === "" ){
            alert("환불사유를 작성해 주세요.");
            return false; // 페이지 넘기지 않음
        }   
        $("#frm").submit();
	});	
})

</script>

</body>
</html>









