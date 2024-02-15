<%@page import="utill.price_util"%>
<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="java.util.List"%>
<%@page import="com.landers.airline.dto.TicketDto"%>
<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link href="reservationcss/payresult.css" rel="stylesheet">
</head>
<body>
<div class="loader"></div>
<div class="ticket-wrapper">
    <table class="ticket-table">
        <tr>
            <td class="first-col">
                <div class="ticket-name-div">
                    <img src="./images/logo.png" alt="#" style="width: 200px;height: 50px" />
                </div>
                <div class="ticket-event-details">
                    <table>
                        <tr>
                            <td class="first-col">
                                <div class="ticket-info"><%=date_util.toDates(flight.getDeparture_date()) %></div>
                                <div class="ticket-title">출발시간</div>
                                <div class="ticket-info"><%=date_util.tooDates(flight.getDeparture_date())%></div>
                                <div class="ticket-title">도착시간</div>
                                <div class="ticket-info"><%=date_util.tooDates(flight.getArrival_date())%></div>
                            </td>
                            <td class="second-col">
                                <div class="ticket-venue"></div>
                                <div class="ticket-venue"><%=flight.getDeparture_airport() %> 공항</div>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="ticket-ticket-details">
                    <table>
                        <tr>
                            <td class="first-col">
                                <div class="ticket-title">TICKET #</div>
                                <div class="ticket-info"><%= String.format("%06d", new java.util.Random().nextInt(1000000)) %></div>
                                <div class="ticket-title">PRICE</div>
                                <div class="ticket-info"><%=price_util.price_dot(final_price)%>원</div>
                            </td>
                            <td class="second-col">
                                <div class="ticket-title">TICKET OWNER</div>
                                <div class="ticket-info"><%=login.getUser_name()%></div>
                                <div class="ticket-title">TICKET SEAT</div>
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
                                </div>
                            </td>
                            <td class="third-col"><a href="#" target="_blank"> <img class="ticket-qr-code" src='./images/qrcode.png' alt="qrcode" /></a></td>
                        </tr>
                    </table>
                </div>
            </td>
            <td class="ticket-logo">
                <span class="ticket-event-longtitle"><%=flight.getDeparture_airport()%><br/><img alt="#" src="./images/arrow_down.png" style="width: 30px;height: 100px;"><br/><%=flight.getArrival_airport()%></span>
            </td>
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
        location.href = "./home.do";
    }
    const container = $('.container');
    const html = $('html');
    html.css({'overflow' : 'hidden'});
    $(window).on('load', function(){
        $('.loader').delay(1000).fadeOut();
        container.removeClass('loading-container');
        html.css('overflow', 'auto');
    });
</script>

</body>
</html>

