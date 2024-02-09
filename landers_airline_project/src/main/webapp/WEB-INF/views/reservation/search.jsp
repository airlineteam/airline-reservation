<%@page import="utill.date_util"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
List<FlightinfoDto> list = (List<FlightinfoDto>)request.getAttribute("list");
String person_num = (String)request.getAttribute("person_num");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>항공 조회 결과</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        body {
            background-color: #f8f9fa;
        }

        h1 {
            color: #9A161F;
            text-align: center;
            margin-top: 20px;
        }

        .main-container {
            margin-top: 30px;
            background-color: #ffffff;
            border: 1px solid rgba(0, 0, 0, 0.125);
            border-radius: 0.25rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        table {
            margin: 20px auto;
            width: 90%;
            border-collapse: collapse;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 15px;
            text-align: center;
            position: relative;
            border: 1px solid #dee2e6;
        }

        th {
            background-color: #004080;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        a {
            color: #9A161F;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease-in-out;
        }

        a:hover {
            color: #751114;
            text-decoration: underline;
        }

        td:hover {
            background-color: #edf2f7;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            z-index: 1;
        }
        
    </style>
</head>
<body>
    <div class="container-fluid">
        <h1>예약 조회 완료!</h1>

        <div class="main-container">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>번호</th>
                        <th>비행기</th>
                        <th>출발지</th>
                        <th>도착지</th>
                        <th>출발시간</th>
                        <th>도착시간</th>
                        <th>가격</th>
                        <th>예약</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(int i = 0; i < list.size(); i++) {
                        FlightinfoDto dto = list.get(i);
                    %>
                    <tr>
                        <td><%=i + 1 %></td>
                        <td><%=dto.getFlight_name() %></td>
                        <td><%=dto.getDeparture_airport() %></td>
                        <td><%=dto.getArrival_airport() %></td>
                        <td><%=date_util.toDates(dto.getDeparture_date())%></td>
                        <td><%=date_util.toDates(dto.getArrival_date())%></td>
                        <td><%=dto.getPrice() %>원</td>
                        <td>
                            <form action="seat.do" method="post">
       							 <input type="hidden" name="flight_id" value="<%=dto.getFlight_id() %>">
       							 <input type="hidden" name="person_num" value="<%=person_num %>">
        						 <input type="hidden" name="departure_date" value="<%=dto.getDeparture_date()%>">
        						 <input type="hidden" name="arrival_date" value="<%=dto.getArrival_date()%>">
        						 <input type="hidden" name="departure_airport" value="<%=dto.getDeparture_airport()%>">
        						 <input type="hidden" name="arrival_airport" value="<%=dto.getArrival_airport()%>">
        						 <input type="submit" value="예약하기">
    						</form>
                        </td>
                    </tr>
                    <%
                    }
                    %>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>


