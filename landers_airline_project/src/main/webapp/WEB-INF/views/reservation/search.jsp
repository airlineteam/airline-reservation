<%@page import="utill.price_util"%>
<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<FlightinfoDto> list = (List<FlightinfoDto>)request.getAttribute("list");
String person_num = (String)request.getAttribute("person_num");
FlightinfoDto info = list.get(0);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iKt6U01L3/cBEQ5TOglHilj7C1PQIXDTE+PnIpE2hXntj5nE2tSR84Q" crossorigin="anonymous">
    <title>항공 조회 결과</title>
    <style type="text/css">
.fare-list {
   margin: auto;
   margin-top: 8px; /* Adjust the top margin as needed */
   max-width: 1000px; /* Set a maximum width for the container */
}

body {
   color: #333
}

ol, ul, li {
   list-style: none;
}

time, mark, audio, video, p {
   margin: 0;
   padding: 0;
   border: 0;
   font-size: 100%;
   font-family: inherit;
   font-weight: inherit;
   vertical-align: baseline;
   line-height: 1.5;
   letter-spacing: -.2px;
}

html {
   box-sizing: border-box;
   box-sizing: border-box;
}

*, *:before, *:after {
   box-sizing: border-box;
}
 .fare-container {
            background-color: #fff;
            padding: 20px;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

.fare-list .list-item:first-child {
   margin-top: 0;
}

.fare-list .list-item {
   position: relative;
   margin-top: 20px;
   border: 1px solid #ddd;
   border-radius: 6px;
}

.fare-list .list-summary {
   position: relative;
   width: 384px;
   height: 137px;
   padding: 0 30px;
   box-sizing: border-box;
}

.fare-list .list-summary .head {
   display: flex;
   align-items: center;
   padding: 16px 0;
   height: 49px;
   border-bottom: 1px solid #ddd;
}

.fare-list .list-summary .tk-num {
   color: #666;
   font-size: 13px;
   line-height: 14px;
}

.fare-list .list-summary .head {
   display: flex;
   align-items: center;
   padding: 16px 0;
   height: 49px;
   border-bottom: 1px solid #ddd;
}

.fare-list .util-menu {
   overflow: hidden;
   position: absolute;
   top: 17px;
   right: 24px;
}

.fare-list .list-summary .time {
   display: flex;
   align-items: center;
   justify-content: space-between;
   height: 87px;
}

.fare-list .list-summary .time-num {
   width: 100%;
   font-weight: 900;
   font-size: 20px;
   line-height: 23px;
   color: #000;
}

.fare-list .list-summary .moving-time {
   position: relative;
   top: -8px;
   width: 100%;
   color: #666;
   font-weight: 700;
   font-size: 11px;
   line-height: 12px;
   padding-bottom: 10px;
   text-align: center;
}

.fare-list .list-summary .moving-time:after {
   content: '';
   position: absolute;
   bottom: 0;
   left: 50%;
   width: 88px;
   height: 6px;
   margin-left: -44px;
   background: url(./images/icon_target_arrow.png) 0 0/auto 6px
      no-repeat;
}

.fare-list .list-summary .time-num.target {
   text-align: right;
}

.fare-list .list-summary .time-num {
   width: 100%;
   font-weight: 900;
   font-size: 20px;
   line-height: 23px;
   color: #000;
}

.fare-list .fare-pare-tab {
   display: flex;
   width: calc(100% - 384px);
   position: absolute;
   top: 0;
   right: 0;
}

.fare-list .tab-btn-in .grade.fly {
   color: #00a2de;
}

.fare-list .tab-btn-in .grade {
   display: block;
   font-weight: 900;
   font-size: 14px;
   line-height: 18px;
   text-align: center;
}

.fare-list .tab-btn {
   display: flex;
   align-items: center;
   justify-content: center;
   position: relative;
   width: 100%;
   height: 137px;
   border-left: 1px solid #ddd;
}

.fare-list .fare-pare-tab {
   display: flex;
   width: calc(100% - 384px);
   position: absolute;
   top: 0;
   right: 0;
}

</style>
</head>
<body class="text-center">
    <h1>예약조회완료!</h1>
    <div class="container fare-container">
    <div align="center"><strong><h2><%=info.getDeparture_airport() %> <img alt="#" src="./images/icon_target_arrow.png"> <%=info.getArrival_airport() %></h2></strong></div>
    <%for(int i = 0;i < list.size(); i++) { 
    	FlightinfoDto dto = list.get(i);%>
    <ul class="fare-list">
      <li class="list-item">
         <div class="list-summary">
            <div class="head">
               <span class="tk-num"><%=dto.getFlight_name() %>&nbsp;&nbsp;&nbsp;<img src="./images/logo.png" style="width: 70px; height: 30px"/></span>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <div class="chips">
               <form action="seat.do" method="post">
                <input type="hidden" name="flight_id" value="<%=dto.getFlight_id() %>">
                <input type="hidden" name="person_num" value="<%=person_num %>">
                <input type="hidden" name="departure_date" value="<%=dto.getDeparture_date()%>">
                <input type="hidden" name="arrival_date" value="<%=dto.getArrival_date()%>">
                <input type="hidden" name="departure_airport" value="<%=dto.getDeparture_airport()%>">
                <input type="hidden" name="arrival_airport" value="<%=dto.getArrival_airport()%>">
                <input type="submit" class="btn btn-danger" style="background-color: #9A161F" value="예약하기">
            </form></div>
            </div>
            <div class="time">
               <span class="time-num start"><%=date_util.tooDates(dto.getDeparture_date()) %></span> 
               <span class="moving-time"><%=date_util.travel_time(dto.getDeparture_date(), dto.getArrival_date()) %></span> 
               <span class="time-num target"><%=date_util.tooDates(dto.getArrival_date())%></span>
            </div>
         </div>
         <div class="fare-pare-tab">
            <span class="tab-btn grade-default">
               <div class="tab-btn-in">
                  <span class="grade fly">A</span><span class="price_txt"><%=price_util.price_numA(dto.getPrice()) %>원</span></strong>
                  </span>
               </div>
            </span> 
            <span class="tab-btn grade-default">
               <div class="tab-btn-in">
                  <span class="grade fly">B</span><span class="price_txt"><%=price_util.price_numB(dto.getPrice())%>원</span></strong>
                  </span>
               </div>
            </span>
            <span class="tab-btn grade-default">
               <div class="tab-btn-in">
                  <span class="grade fly">C</span><span class="price_txt"><%=dto.getPrice() %>원</span></strong>
                  </span>
               </div>
            </span>
         </div>
      </li>
   </ul>
   <%} %>
 </div>
</body>
</html>


