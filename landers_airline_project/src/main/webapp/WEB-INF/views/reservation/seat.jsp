<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    List<SeatDto> list = (List<SeatDto>)request.getAttribute("list");
    String flightId = request.getParameter("flight_id");
    List<String> selectedSeats = (List<String>)request.getAttribute("selectedSeats");

    // selectedSeats가 null인 경우 초기화
    if (selectedSeats == null) {
        selectedSeats = new java.util.ArrayList<>();
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>좌석 선택</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .seat {
            width: 70px;
            height: 70px;
            border: 1px solid #dee2e6;
            margin: 5px;
            text-align: center;
            cursor: pointer;
            transition: border-color 0.3s ease-in-out, transform 0.3s ease-in-out;
        }

        .seat:hover {
            border-color: #adb5bd; /* lighter shade of grey */
            background-color:#adb5bd;
            transform: scale(0.85);
        }

        .selected {
            background-color: #28a745;
            color: white;
            border-color: #28a745;
        }

        .unavailable {
            background-color: #dc3545;
            color: white;
            cursor: not-allowed;
        }

        .chair-icon {
            font-size: 24px;
            margin-bottom: 5px;
        }

        .container {
            text-align: center;
            margin-top: 50px;
        }

        #seatsContainer {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .card {
            text-align: center;
        }

        .btn-primary {
            background-color: #9A161F;
            border-color: #9A161F;
        }
    </style>
</head>
<body class="bg-light">

    <div class="container">
        <h2 class="mb-4">좌석 선택</h2>

        <form id="seatForm" action="seatselect.do" method="post">
            <div id="seatsContainer" class="row row-cols-4 justify-content-center">
                <% 
                   int personNum = Integer.parseInt(request.getParameter("person_num"));
                   for (int i = 0; i < list.size(); i++) { 
                       SeatDto dto = list.get(i);
                       String seatName = dto.getSeat_name();
                       String seatClass = "seat";

                       if (!dto.isIs_available()) {
                           seatClass += " unavailable";
                       } else if (selectedSeats.contains(seatName)) {
                           seatClass += " selected";
                       }
                %>
                    <div class="col mb-4">
                        <div class="card seat <%= seatClass %>" onclick="toggleSeat(this, '<%= seatName %>', '<%= dto.isIs_available() %>')" data-person-num="<%= personNum %>">
                            <div class="card-body">
                                <input type="checkbox" name="selectedSeats" value="<%= seatName %>" style="display:none;" <%= dto.isIs_available() ? "" : "disabled" %>>
                                <i class="bi bi-chair chair-icon"></i>
                                <p class="card-text"><%= seatName %></p>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
           <input type="hidden" name="flightId" value="<%= flightId %>">
           <input type="submit" class="btn btn-primary mt-3" value="선택완료">
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        var selectedSeats = <%= (selectedSeats != null) ? new org.json.JSONArray(selectedSeats).toString() : "null" %>;

        function toggleSeat(seatElement, seatName, isAvailable) {
            if (isAvailable === 'false') {
                alert('이 좌석은 현재 선택할 수 없습니다.');
                return;
            }

            var checkbox = seatElement.querySelector('input[type="checkbox"]');
            var personNum = seatElement.getAttribute('data-person-num');

            // 좌석이 선택 가능하고, 선택된 좌석의 수가 personNum보다 작거나 같은 경우에만 처리
            if (isAvailable === 'true' && (selectedSeats.length < personNum || checkbox.checked)) {
                checkbox.checked = !checkbox.checked;

                // 좌석 색상 변경
                seatElement.classList.toggle('selected');

                // 선택된 좌석 정보 저장 또는 제거
                var index = selectedSeats.indexOf(seatName);
                if (index === -1) {
                    selectedSeats.push(seatName);
                } else {
                    selectedSeats.splice(index, 1);
                }
            } else {
                alert('더 이상 좌석을 선택할 수 없습니다.');
            }
        }
    </script>

</body>
</html>





