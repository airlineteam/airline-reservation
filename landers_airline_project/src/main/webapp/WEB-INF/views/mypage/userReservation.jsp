<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="com.landers.airline.dto.TicketDto"%>
<%@page import="com.landers.airline.dto.TicketParam"%>

<%@page import="java.util.List"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<%
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
<style type="text/css">
body {
  background-color: #9E9E9E;
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
  font-weight: 100;
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
  font-weight:300;
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


</style>


<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
<meta charset="UTF-8">

</head>
<body>

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
						<%=i+1 %>
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

<br/>

<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination" style="justify-content:center"></ul>
    </nav>
</div>


<br/>
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
	</button><br/>
</div>
	
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
		
		location.href = "myTicket.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1);
	}	
});
</script>

</body>
</html>