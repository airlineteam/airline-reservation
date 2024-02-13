<%@page import="com.landers.airline.dto.SeatDto"%>
<%@page import="utill.price_util"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@page import="com.landers.airline.dto.FlightinfoDto"%>
<%@ page import="java.util.UUID" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	if(login == null){
		%>
			<script type="text/javascript">
			alert('로그인 해 주십시오');
			</script>
		<%
		response.sendRedirect("login.do");
        return; 
	}
%>

<!DOCTYPE html>
<html>
<head>
<!-- 아래 제이쿼리는 1.0이상이면 원하는 버전을 사용하셔도 무방합니다. -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<script>
    var IMP = window.IMP;
    IMP.init("imp77645115");

    function requestPay() {
        var productNames = [];
        var amounts = [];
        var totalAmount = 0;

        // Assume you have input fields with class names productName and amount
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

   
        selectedSeats = encodeURIComponent(selectedSeats);
        flightId = encodeURIComponent(flightId);

      
        var redirectUrl = "payresult.do?selectedSeats=" + selectedSeats + "&flight_id=" + flightId +"&user_id=" + userId
        		+ "&final_price=" + totalAmount;

        
        location.href = redirectUrl;
    }


   
</script>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>결제</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        background-color: #f8f9fa;
        padding-top: 56px; /* Height of the fixed navbar */
    }

    .custom-container {
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin-top: 20px; /* Add margin to the top */
        max-width: 1000px; /* Adjust the max-width as per your design */
        margin: 0 auto; /* Center the container */
    }

    h1 {
        color: #007bff;
    }

    form {
        margin-top: 20px;
    }

    label {
        font-weight: bold;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .custom-btn {
        background-color: #9A161F;
        border: none;
        color: #ffffff;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        display: block;
        margin-top: 20px; /* Adjust the margin from the top */
        width: 100%; /* Make the button width 100% */
    }

    .custom-btn:hover {
        background-color: #750f16; /* Adjusted hover color */
    }
</style>
</head>
<body>
<div class="container mt-5 custom-container">
    <div class="container mt-5">
        <h1 class="text-center">결제 페이지입니다!!!</h1>

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
    <!-- Add Bootstrap JS and Popper.js scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>