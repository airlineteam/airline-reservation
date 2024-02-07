<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	List<SeatDto> list = (List<SeatDto>)request.getAttribute("list");
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
    </style>
</head>
<body>

    <h2>좌석 선택</h2>
    
    <form id="seatForm" action="#" method="post">
        <div id="seatsContainer">
            <% int seatsPerRow = 4;
               for (int i = 0; i < list.size(); i++) { 
                   SeatDto dto = list.get(i);
            %>
                <div class="seat" onclick="toggleSeat(this, '<%= dto.getSeat_name() %>')">
                    <input type="checkbox" name="selectedSeats" value="<%= dto.getSeat_name() %>" style="display:none;">
                    <%= dto.getSeat_name() %>
                </div>
                <% if ((i + 1) % seatsPerRow == 0) { %>
                    <br>
                <% } %>
            <% } %>
        </div>
        
        <button type="button" onclick="completeSelection()">선택 완료</button>
    </form>

    <script>
        var selectedSeats = [];

        function toggleSeat(seatElement, seatName) {
            var checkbox = seatElement.querySelector('input[type="checkbox"]');
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
        }

        function completeSelection() {
            if (selectedSeats.length > 0) {
                alert('선택한 좌석: ' + selectedSeats.join(', '));
                var url = 'processSelectedSeats.jsp?selectedSeats=' + encodeURIComponent(selectedSeats.join(','));
                window.location.href = url;
            } else {
                alert('좌석을 선택하세요.');
            }
        }
    </script>

</body>
</html>


