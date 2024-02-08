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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>좌석 선택</title>
    <!-- Add Bootstrap CSS and Font Awesome CSS links here -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        /* Custom styles */
        body {
            background-color: #f8f9fa;
        }

        .seat {
            width: 60px;
            height: 60px;
            margin: 5px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .chair-icon {
            width: 40px;
            height: 40px;
            background-color: #dee2e6;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 20px;
        }

        .seat:hover {
            background-color: #e2e6ea;
            transform: scale(1.1);
        }

        .selected {
            background-color: #28a745 !important;
            color: white;
        }

        .unavailable {
            background-color: #dc3545;
            color: white;
            cursor: not-allowed;
        }

        #seatsContainer {
            text-align: center;
        }

        .container {
            margin-top: 50px;
        }

        .btn-primary {
            background-color: #9a161f;
            border-color: #9a161f;
            padding: 10px 20px;
            font-size: 18px;
            letter-spacing: 1px;
        }

        .btn-primary:hover {
            background-color: #740f16;
            border-color: #740f16;
        }

        h2 {
            color: #007bff;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2 class="my-4 text-center">좌석 선택</h2>

        <form id="seatForm" action="seatselect.do" method="post">
            <div id="seatsContainer">
                <div class="row justify-content-center">
                    <% 
                       int seatsPerRow = 4;
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
                        <div class="col-2 mb-3">
                            <div class="<%= seatClass %>" onclick="toggleSeat(this, '<%= seatName %>', '<%= dto.isIs_available() %>')" data-person-num="<%= personNum %>">
                                <div class="chair-icon">
                                    <i class="fas fa-chair"></i>
                                </div>
                                <div><%= seatName %></div>
                            </div>
                        </div>
                        <% if ((i + 1) % seatsPerRow == 0) { %>
                            <div class="w-100"></div>
                        <% } %>
                    <% } %>
                </div>
            </div>
            <input type="hidden" name="flightId" value="<%= flightId %>">
            <div class="text-center mt-3">
                <button type="submit" class="btn btn-primary">선택 완료</button>
            </div>
        </form>
    </div>

    <!-- Add Bootstrap JS, Popper.js, and Font Awesome JS links here -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"></script>
    
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
            var seatIcon = seatElement.querySelector('.chair-icon');
            seatIcon.style.backgroundColor = seatElement.classList.toggle('selected') ? '#28a745' : '#dee2e6';

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





