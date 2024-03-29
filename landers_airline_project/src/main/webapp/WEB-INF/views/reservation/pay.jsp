<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="utill.price_util"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@ page import="java.util.UUID" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // UUID 생성
    String merchantUid = "merchant_" + UUID.randomUUID().toString();
    // request 객체에 저장
    request.setAttribute("merchantUid", merchantUid);
%>
<%
    int person_num = (Integer)request.getAttribute("person_num");
    FlightinfoDto dto = (FlightinfoDto)request.getAttribute("dto");
    List<String> selectedSeats = (List<String>)request.getAttribute("selectedSeats");
    int flightId = (Integer)request.getAttribute("flightId");
    
    UserDto login = (UserDto)session.getAttribute("login");
    if ( login == null ) {
%>
    <script type="text/javascript">
        alert('로그인이 필요합니다.');
        location.href = "login.do";
    </script>
<%
        return; // 페이지 렌더링 중지
    }
%>

<!DOCTYPE html>
<html>
<head>
    <script src="https://cdn.iamport.kr/v1/iamport.js"></script>
    <script>
        var IMP = window.IMP;
        IMP.init("imp77645115");

        function requestPay() {
            var productNames = [];
            var amounts = [];
            var totalAmount = 0;

            var productInputs = document.getElementsByClassName("productName");
            var amountInputs = document.getElementsByClassName("price");

            for (var i = 0; i < productInputs.length; i++) {
                productNames.push(productInputs[i].value);
                amounts.push(parseInt(amountInputs[i].value));
                totalAmount += amounts[i];
            }

            var buyerName = document.getElementById("buyerName").value;
            var buyerTel = document.getElementById("buyerTel").value;
            var buyerAddr = document.getElementById("buyerAddr").value;
            var buyerarriver = document.getElementById("arriver").value;
            var buyerMerchant = '<%= request.getAttribute("merchantUid") %>';
            
            IMP.request_pay(
                {
                    pg: "kakaopay",
                    pay_method: "card",
                    merchant_uid: buyerMerchant,
                    name: buyerarriver,
                    amount: totalAmount,
                    buyer_name: buyerName,
                    buyer_tel: buyerTel,
                    buyer_addr: buyerAddr,
                },
                function (rsp) {
                    if (rsp.success) {
                        console.log(rsp);
                        moveToMainPage(totalAmount);
                    } else {
                        console.log(rsp);
                        alert('결제가 처리되지못했습니다.');
                    }
                }
            );
        }
        function generateRandomMerchantUid() {
            return "merchant_" + Math.floor(Math.random() * 1000000);
        }

        function moveToMainPage(totalAmount) {
            alert(totalAmount + "원이 결제되었습니다!!");
            
            var selectedSeats = <%
            List<String> selectedSeatsList = (List<String>) request.getAttribute("selectedSeats");
            if (selectedSeatsList != null) {
                out.print("[\"" + String.join("\",\"", selectedSeatsList) + "\"]");
            } else {
                out.print("[]");
            }
        %>;

            var flightId = '<%= request.getAttribute("flightId") %>';
            var userId = '<%=login.getUser_id() %>';
            var person_num = '<%=request.getAttribute("person_num") %>'

            selectedSeats = encodeURIComponent(selectedSeats);
            flightId = encodeURIComponent(flightId);

            var form = document.createElement("form");
            form.setAttribute("method", "post");
            form.setAttribute("action", "payresult.do");

            addInputField(form, "selectedSeats", selectedSeats);
            addInputField(form, "flight_id", flightId);
            addInputField(form, "user_id", userId);
            addInputField(form, "final_price", totalAmount);
            addInputField(form, "person_num", person_num);

            document.body.appendChild(form);
            form.submit();
        }
        function addInputField(form, name, value) {
            var input = document.createElement("input");
            input.setAttribute("type", "hidden");
            input.setAttribute("name", name);
            input.setAttribute("value", value);
            form.appendChild(input);
        }
    </script>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link href="reservationcss/pay.css" rel="stylesheet">
</head>
<body>
<div class="loader"></div>
<div class="cont">
    <div class="container mt-5 custom-container">
        <div class="container mt-5">
            <h3 style="text-align: center;">좌석선택이 완료되었습니다. 결제를 진행해주세요</h3>
            <div style="display: flex; justify-content: center;">
                <i class="bi bi-credit-card-fill">
                    <svg xmlns="http://www.w3.org/2000/svg" width="200px" height="100px" fill="currentColor" class="bi bi-credit-card-fill" viewBox="0 0 16 16">
                        <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v1H0zm0 3v5a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V7zm3 2h1a1 1 0 0 1 1 1v1a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1v-1a1 1 0 0 1 1-1"/>
                    </svg>
                </i>
            </div>
            <form>
                <div class="form-group">
                    <label for="buyerName">아이디:</label>
                    <input type="text" class="form-control" id="buyerName" value="<%=login.getUser_id() %>" readonly />
                </div>

                <% for(int i = 0; i < selectedSeats.size(); i++) {
                    String seat = selectedSeats.get(i);
                %>
                <div class="form-group">
                    <label for="productName">좌석:</label>
                    <input type="text" class="form-control productName" id="productName" value="<%=seat %>" readonly />

                    <% if(seat.startsWith("A")) { %>
                    <label for="price">가격:</label>
                    <input type="text" class="form-control price" id="price" value="<%=price_util.price_numA(dto.getPrice()) %>" readonly />
                    <% } else if(seat.startsWith("B")) { %>
                    <label for="price">가격:</label>
                    <input type="text" class="form-control price" id="price" value="<%=price_util.price_numB(dto.getPrice()) %>" readonly />
                    <% } else { %>
                    <label for="price">가격:</label>
                    <input type="text" class="form-control price" id="price" value="<%=dto.getPrice() %>" readonly />
                    <% } %>
                </div>
                <% } %>

                <div class="form-group">
                    <label for="buyerAddr">주소:</label>
                    <input type="text" class="form-control" id="buyerAddr" value="<%=login.getUser_address() %>" readonly />
                </div>

                <div class="form-group">
                    <label for="buyerTel">전화번호:</label>
                    <input type="text" class="form-control" id="buyerTel" value="<%=login.getUser_phone() %>" readonly />
                </div>

                <div class="form-group">
                    <label for="arriver">목적지:</label>
                    <input type="text" class="form-control" id="arriver" value="<%=dto.getArrival_airport() %>행 항공 <%=dto.getFlight_name() %>" readonly />
                </div>

                <button type="button" class="custom-btn" onclick="requestPay()">결제하기</button>
            </form>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
