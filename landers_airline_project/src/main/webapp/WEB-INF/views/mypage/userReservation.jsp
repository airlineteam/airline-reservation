<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.landers.airline.dto.TicketDto"%>

<%@page import="java.util.List"%>
<!DOCTYPE html>
<%
    List<TicketDto> list = (List<TicketDto>)request.getAttribute("list");
%>
<html>
<head>
<meta charset="UTF-8">
<title>예약정보</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>

	<table>
		<tr>
			<th>
				티켓번호
			</th>
			<th>
				아이디
			</th>
			<th>
				스케줄
			</th>
			<th>
				가격
			</th>
			<th>
				날짜
			</th>
			<th>
				비행기번호
			</th>
			<th>
				좌석번호
			</th>
		</tr>
		
		<%
		for(int i = 0; i < list.size(); i++){
			TicketDto dto = list.get(i);
				%>
				<tr>
					<th>
						<%=dto.getTicket_id() %>
					</th>
					<th>
						<%=dto.getUser_id() %>
					</th>
					<th>
						<%=dto.getSchedule_id() %>
					</th>
					<th>
						<%=dto.getFinal_price() %>
					</th>
					<th>
						<%=dto.getFinal_date() %>
					</th>
					<th>
						<%=dto.getFlight_id() %>
					</th>
					<th>
						<%=dto.getSeat_id() %>
					</th>
					<th>
						<button type="button" class="btn btn-danger"  onclick="myRefund(<%=dto.getTicket_id() %>)">환불요청</button>
					</th>
				</tr>
				<%		
}
	%>
	</table>
	
<script type="text/javascript">

function myRefund(ticket_id) {
	location.href = "myRefund.do?ticket_id=" + ticket_id;
}
</script>

</body>
</html>