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
    <title>좌석 선택</title>
    <style>
        .seat {
            width: 50px;
            height: 50px;
            border: 1px solid #000;
            margin: 5px;
            text-align: center;
            line-height: 50px;
            display: inline-block;
            cursor: pointer;
        }

        .selected {
            background-color: green;
            color: white;
        }

        .unavailable {
            background-color: red;
            color: white;
            cursor: not-allowed;
        }
    </style>
</head>
<body>

    <h2>좌석 선택</h2>
    
    <form id="seatForm" action="seatselect.do" method="post">
        <div id="seatsContainer">
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
                <div class="<%= seatClass %>" onclick="toggleSeat(this, '<%= seatName %>', '<%= dto.isIs_available() %>')" data-person-num="<%= personNum %>">
                    <input type="checkbox" name="selectedSeats" value="<%= seatName %>" style="display:none;" <%= dto.isIs_available() ? "" : "disabled" %>>
                    <%= seatName %>
                </div>
                <% if ((i + 1) % seatsPerRow == 0) { %>
                    <br>
                <% } %>
            <% } %>
        </div>
       <input type="hidden" name="flightId" value="<%= flightId %>">
       <input type="submit" value="선택완료">
    </form>

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





