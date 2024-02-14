<%@page import="utill.price_util"%>
<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="java.util.List"%>
<%@page import="com.landers.airline.dto.TicketDto"%>
<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
FlightinfoDto flight = (FlightinfoDto) request.getAttribute("flight");
UserDto login = (UserDto) session.getAttribute("login");
String final_price = (String) request.getAttribute("final_price");
List<String> selectedSeats = (List<String>) request.getAttribute("selectedSeats");
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<style type="text/css">
body {
	font-family: sans-serif;
	background-color: #fff;
	color: #535353;
	margin: 5px;
}

table {
	border-collapse: collapse;
	padding: 0;
	width: 100%;
}

td {
	padding: 0;
	vertical-align: top;
}

.ticket-title {
	color: #999;
	font-size: 16px;
	letter-spacing: 0;
	line-height: 16px;
	margin-top: 10px;
}

.ticket-info {
	color: #535353;
	font-size: 14px;
	line-height: 21px;
}

.ticket-wrapper {
	border: 2px solid #999;
	border-top: 12px solid #9A161F;
	margin: 15px auto 0;
	padding-bottom: 15px;
	width: 650px;
}

.ticket-wrapper:first-child {
	margin-top: 0;
}

.ticket-table {
	
}

.ticket-table .first-col {
	width: 570px;
}

.ticket-logo {
	border-left: 2px dashed #ccc;
	text-align: center;
	vertical-align: middle;
}

.ticket-logo img {
	height: 189px;
	width: 38px;
}

.ticket-name-div {
	border-bottom: 2px dotted #ccc;
	margin: 0 12px 0 22px;
	padding: 15px 0px 15px 0;
	text-align: left;
}

.ticket-event-longtitle {
	color: #535353;
	font-size: 22px;
	letter-spacing: -1px;
	line-height: 22px;
}

.ticket-event-shorttitle {
	color: #535353;
	font-size: 18px;
	letter-spacing: -1px;
	line-height: 22px;
}

.ticket-event-details {
	border-bottom: 2px dotted #ccc;
	margin: 0 12px 0px 22px;
	padding: 15px 0px 15px 0;
	text-align: left;
}

.ticket-event-details .first-col {
	text-align: left;
	width: 40%;
}

.ticket-event-details .second-col {
	text-align: right;
	vertical-align: top;
	width: 60%;
}

.ticket-venue {
	color: #535353;
	font-size: 14px;
	line-height: 21px;
}

.ticket-venue:first-child {
	font-size: 16px;
}

.ticket-ticket-details {
	margin: 0 12px 0px 22px;
	text-align: left;
}

.ticket-ticket-details .first-col {
	border-right: 2px dashed #ccc;
	padding-top: 4px;
	text-align: left;
	vertical-align: top;
	width: 150px;
}

.ticket-ticket-details .second-col {
	padding: 4px 0px 0px 32px;
	text-align: left;
	width: 225px;
}

.ticket-ticket-details .third-col {
	text-align: right;
}

.ticket-qr-code {
	height: 95px;
	margin-top: 10px;
	width: 95px;
}

/* Print specific styles */
@media print {
	a[href]:after, abbr[title]:after {
		content: "";
	}
	.ticket-wrapper {
		width: 16cm;
	}
	.ticket-table .first-col {
		width: 13.8cm;
	}
	.ticket-logo img {
		height: auto;
		max-width: 100%;
	}
	.ticket-ticket-details .first-col {
		width: 4cm;
	}
	.ticket-ticket-details .second-col {
		width: 6cm;
	}
	.ticket-ticket-details .third-col {
		width: 2.5cm;
	}
	@page {
		margin: 1cm;
	}
}
.reservation-complete {
    text-align: center;
    margin-top: 20px;
}

.reservation-complete p {
    font-size: 18px;
    color: #9A161F; /* Green color or choose a color that suits your design */
}

.home-button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #9A161F; /* Green color or choose a color that suits your design */
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    margin-top: 10px;
}
.home-button:hover{
	background-color: #7F0E16;
}
</style>
</head>
<body>
	<!-- Start Ticket -->
	<div class="ticket-wrapper">
		<table class="ticket-table">
			<tr>
				<td class="first-col">
					<!-- title -->
					<div class="ticket-name-div">
						<span class="ticket-event-longtitle"><%=flight.getDeparture_airport()%>
							<img alt="#" src="./images/icon_target_arrow.png"> <%=flight.getArrival_airport()%></span>
					</div> <!-- /.ticket-name-div --> <!-- venue details start -->
					<div class="ticket-event-details">
						<table>
							<tr>
								<td class="first-col">
									<div class="ticket-info"><%=date_util.toDates(flight.getDeparture_date()) %></div> <!-- /.ticket-info -->
									<div class="ticket-title">TIME</div> <!-- /.ticket-title -->
									<div class="ticket-info">
										<%=date_util.tooDates(flight.getDeparture_date())%>
									</div> <!-- /.ticket-info -->
								</td>
								<!-- /.first-col -->
								<td class="second-col">
									<div class="ticket-venue"></div> <!-- /.ticket-venue -->
									<div class="ticket-venue"><%=flight.getDeparture_airport() %> 공항</div>

								</td>
								<!-- /.second-col -->
							</tr>
						</table>
					</div> <!-- /.ticket-event-details --> <!-- ticket details start -->
					<div class="ticket-ticket-details">
						<table>
							<tr>
								<td class="first-col">
									<div class="ticket-title">TICKET #</div> <!-- /.ticket-title -->
									<div class="ticket-info"><%= String.format("%06d", new java.util.Random().nextInt(1000000)) %></div> <!-- /.ticket-info -->
									<div class="ticket-title">PRICE</div> <!-- /.ticket-title -->
									<div class="ticket-info">
										<%=price_util.price_dot(final_price)%>원
									</div> <!-- /.ticket-info -->
								</td>
								<!-- /.first-col -->
								<td class="second-col">
									<div class="ticket-title">TICKET OWNER</div> <!-- /.ticket-title -->
									<div class="ticket-info">
										<%=login.getUser_name()%>
									</div> <!-- /.ticket-info -->
									<div class="ticket-title">TICKET SEAT</div> <!-- /.ticket-title -->
									<div class="ticket-info">
										<%
										for (int i = 0; i < selectedSeats.size(); i++) {
											String seat = selectedSeats.get(i);
										%>
										<%=seat%>
										<%
										if (i < selectedSeats.size() - 1) {
										%>,
										<%
										}
										%>
										<%
										}
										%>
									</div> <!-- /.ticket-info -->
								</td>
								<!-- /.second-col -->
								<td class="third-col"><a href="#" target="_blank"> <img
										class="ticket-qr-code"
										src='./images/qrcode.png' alt="qrcode" />
								</a></td>
								<!-- /.third-col -->
							</tr>
						</table>
					</div> <!-- /.ticket-ticket-details -->
				</td>
				<!-- /.first-col -->
				<td class="ticket-logo"><img
					src="./images/logo.png" alt="#" style="width: 100px;height: 50px" /></td>
				<!-- /.ticket-logo -->
			</tr>
		</table>
	</div>
	<div class="reservation-complete">
    <p>예약이 완료되었습니다.</p>
    <a href="/home" class="home-button" onclick="home(event)">홈으로 이동</a>

</div>

<script type="text/javascript">
    function home(event) {
        event.preventDefault();
        location.href = "./home.do"; // or "home.do" depending on your project structure
    }
</script>

</body>
</html>
