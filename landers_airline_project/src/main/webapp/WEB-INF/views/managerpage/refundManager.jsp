<%@page import="com.landers.airline.dto.RefundDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    List<RefundDto> list = (List<RefundDto>) request.getAttribute("list");
%>

<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
    <meta charset="UTF-8">
    <title>환불승인페이지</title>
    <script>
        function deleteApprovedRefunds() {
            var table = document.getElementById("refundTable");
            var rows = table.getElementsByTagName("tr");

            for (var i = rows.length - 1; i > 0; i--) {
                var cells = rows[i].getElementsByTagName("th");
                var statusCell = cells[4];

                // "승인" 상태인 행을 삭제
                if (statusCell.innerHTML.trim() === "승인") {
                    table.deleteRow(i);
                }
            }
        }
    </script>
</head>
<body>
    <h1>환불승인페이지</h1>

<div class="table-responsive">
    <table class="table table-hover" id="refundTable">
        <tr>
            <th>환불번호</th>
            <th>아이디</th>
            <th>예약번호</th>
            <th>환불내용</th>
            <th>환불상태</th>
            <th></th>
        </tr>

        <%
            for (int i = 0; i < list.size(); i++) {
                RefundDto dto = list.get(i);
        %>
        <tr>
            <th><%=dto.getRefund_id() %></th>
            <th><%=dto.getUser_id()%></th>
            <th><%=dto.getTicket_id() %></th>
            <th><%=dto.getContent()%></th>     
            <th><%=dto.getRefund_status()%></th>            
            <td>
                <a class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" 
                href="refundAf.do?refund_id=<%=dto.getRefund_id()%>">승인하기</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
    <button class="btn btn-outline-secondary" onclick="deleteApprovedRefunds()">승인된 데이터 가리기</button>
</body>
</html>