<%@page import="utill.price_util"%>
<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<FlightinfoDto> list = (List<FlightinfoDto>) request.getAttribute("list");
String person_num = (String) request.getAttribute("person_num");
FlightinfoDto info = null;
if(list == null || list.isEmpty()) {
	%>
	<script>
	alert("조회된 항공이 없습니다.");
	location.href = "reservationHome.do";
	</script>
	<%
	return;
	}
	else{
		info = list.get(0); 
	}
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iKt6U01L3/cBEQ5TOglHilj7C1PQIXDTE+PnIpE2hXntj5nE2tSR84Q"
	crossorigin="anonymous">
<link href="reservationcss/search.css" rel="stylesheet">
<title>항공 조회 결과</title>
</head>
<body>
<div class="loading-container">
    <div class="loader"></div>

    <div class="cont">
        <div class="container fare-container">
            <div align="center">
                <strong>
                    <h2>
                        <%=info.getDeparture_airport()%>
                        <img alt="#" src="./images/icon_target_arrow.png">
                        <%=info.getArrival_airport()%>
                    </h2>
                </strong>
            </div>
            <% for (int i = 0; i < list.size(); i++) {
                FlightinfoDto dto = list.get(i);
            %>
            <ul class="fare-list">
                <div style="width: 100%; text-align: right; margin-right: 0;">
                    남은좌석 : <%=dto.getEmptynum() %>석
                </div>
                <li class="list-item">
                    <div class="list-summary">
                        <div class="head">
                            <span class="tk-num">
                                <%=dto.getFlight_name()%>&nbsp;&nbsp;&nbsp;<img src="./images/logo.png" style="width: 70px; height: 30px" />
                            </span>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="chips">
                                <form action="seat.do" method="post">
                                    <input type="hidden" name="flight_id" value="<%=dto.getFlight_id()%>">
                                    <input type="hidden" name="person_num" value="<%=person_num%>">
                                    <input type="hidden" name="departure_date" value="<%=dto.getDeparture_date()%>">
                                    <input type="hidden" name="arrival_date" value="<%=dto.getArrival_date()%>">
                                    <input type="hidden" name="departure_airport" value="<%=dto.getDeparture_airport()%>">
                                    <input type="hidden" name="arrival_airport" value="<%=dto.getArrival_airport()%>">
                                    <input type="hidden" name="price_A" value="<%=price_util.price_numA(dto.getPrice())%>">
                                    <input type="hidden" name="price_B" value="<%=price_util.price_numB(dto.getPrice())%>">
                                    <input type="hidden" name="price_C" value="<%=dto.getPrice()%>">
                                    <input type="submit" class="btn btn-danger" style="background-color: #9A161F" value="예약하기">
                                </form>
                            </div>
                        </div>
                        <div class="time">
                            <span class="time-num start"><%=date_util.tooDates(dto.getDeparture_date())%></span>
                            <span class="moving-time"><%=date_util.travel_time(dto.getDeparture_date(), dto.getArrival_date())%></span>
                            <span class="time-num target"><%=date_util.tooDates(dto.getArrival_date())%></span>
                        </div>
                    </div>
                    <div class="fare-pare-tab">
                        <span class="tab-btn grade-default">
                            <div class="tab-btn-in">
                                <span class="grade fly">A</span><span class="price_txt"><%=price_util.price_numA(dto.getPrice())%>원</span></div>
                        </span>
                        <span class="tab-btn grade-default">
                            <div class="tab-btn-in">
                                <span class="grade fly">B</span><span class="price_txt"><%=price_util.price_numB(dto.getPrice())%>원</span></div>
                        </span>
                        <span class="tab-btn grade-default">
                            <div class="tab-btn-in">
                                <span class="grade fly">C</span><span class="price_txt"><%=dto.getPrice()%>원</span></div>
                        </span>
                    </div>
                </li>
            </ul>
            <% } %>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
const html = $('html');

html.css({'overflow' : 'hidden'}); // Prevent scrolling during loading

$(window).on('load', function(){
    $('.loader').delay(1000).fadeOut();
    html.css('overflow', 'auto'); // Restore scrolling after loader is hidden
});
</script>

</body>
</html>


