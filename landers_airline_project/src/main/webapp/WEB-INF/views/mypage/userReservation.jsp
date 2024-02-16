<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.TicketDto"%>
<%@page import="com.landers.airline.dto.TicketParam"%>

<%@page import="java.util.List"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<%

	UserDto login = (UserDto)session.getAttribute("login");
    List<TicketDto> list = (List<TicketDto>)request.getAttribute("list");

	int pageTicket = (Integer)request.getAttribute("pageTicket");
	
	TicketParam param = (TicketParam)request.getAttribute("param");
	int pageNumber = param.getPageNumber();
	String choice = param.getChoice();	
	String search = param.getSearch();
	if(search == null || search.equals("")){
		search = "";
		choice = "start";
}
%>
<html>
<head>
<title>환불요청</title>
</head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript" src="./js/jquery.twbsPagination.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<link href="mypagecss/userReservation.css" rel="stylesheet">

<body>

<div style="margin-top: 50px;">

<table class="table-fill" id="refundTable">
	<thead>
		<tr>
			<th class="text-left">
				번호
			</th>
			<th class="text-left" hidden>
				티켓번호
			</th>
			<th class="text-left">
				아이디
			</th>
			<th class="text-left" hidden>
				스케줄
			</th>
			<th class="text-left">
				가격
			</th>
			<th class="text-left">
				날짜
			</th>
			<th class="text-left">
				비행기번호
			</th>
			<th class="text-left">
				좌석번호
			</th>
			<th class="text-left">
				환불
			</th>
		</tr>
	<thead>
	<tbody class="table-hover">
		<%
		for(int i = 0; i < list.size(); i++){
			TicketDto dto = list.get(i);
				%>
				<tr>
					<td class="text-left">
						<%=i + 1 %>
					</td>
					<td class="text-left" hidden>
						<%=dto.getTicket_id() %>
					</td>
					<td class="text-left">
						<%=dto.getUser_id() %>
					</td>
					<td class="text-left" hidden>
						<%=dto.getSchedule_id() %>
					</td>
					<td class="text-left">
						<%=dto.getFinal_price() %>
					</td>
					<td class="text-left">
						<%=dto.getFinal_date() %>
					</td>
					<td class="text-left">
						<%=dto.getFlight_id() %>
					</td>
					<td class="text-left">
						<%=dto.getSeat_id() %>
					</td>
					<td class="text-left">
						<button type="button" class="btn btn-danger"  onclick="myRefund(<%=dto.getTicket_id() %>)">환불요청</button>
					</td>
				</tr>
				<%		
					}
				%>
 </tbody>
</table>

</div>

<br><br>

<div class="container">
    <nav aria-label="Page navigation" >
        <ul class="pagination my" id="pagination" style="justify-content:center "></ul>
    </nav>
</div>


<div class="container">
	<div class="row justify-content-center">
		<div class="col-md-10">
			<div class="form-row align-items-center d-flex justify-content-center align-items-center container">
				<select id="choice" class="form-control" style="width:auto;">
					<option value="start">검색</option>
					<option value="ticket_id">티켓번호</option>
					<option value="schedule_id">스케줄</option>
				</select>
				
				<div class="col-sm-3 my-1" style="width:auto;">
					<input type="text" class="form-control" id="search" value="<%=search %>">
				</div>
				
				<button type="button" class="btn btn-primary" onclick="searchBtn()" style="background-color: #9A161F; border-color: #9A161F">
				검색
				</button>
			</div>
		</div>
	</div>
</div>
<br/><br/>
<script type="text/javascript">

function myRefund(ticket_id) {
	location.href = "myRefund.do?ticket_id=" + ticket_id;
}

let search = "<%=search %>";
if(search != null){
	let choice = document.getElementById("choice");
	choice.value = "<%=choice %>";
	choice.setAttribute("selected", "selected");
}

function searchBtn() {
	let choice = document.getElementById("choice").value;
	let search = document.getElementById("search").value;
	
	location.href = "myTicket.do?choice=" + choice + "&search=" + search;
}

$("#pagination").twbsPagination({
	startPage: <%=pageNumber+1 %>,
	totalPages: <%=pageTicket %>,
	visiblePages: 10,
	first: '<span sris-hidden="true">«</span>',
	prev:"이전",
	next:"다음",
	last: '<span sris-hidden="true">»</span>',
	initiateStartPageClick:false,			// 처음 실행시에 자동실행이 되지 않도록 한다
	onPageClick:function(event, page){
		// alert(page);
		let choice = document.getElementById("choice").value;
		let search = document.getElementById("search").value;
		
		let user_id = "<%=login.getUser_id()%>";
		
		location.href = "myTicket.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1) + "&user_id=" + user_id;
	}	
});
</script>

</body>
</html>