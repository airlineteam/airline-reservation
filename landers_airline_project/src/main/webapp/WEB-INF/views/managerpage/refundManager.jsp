<%@page import="com.landers.airline.dto.RefundDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%
    List<RefundDto> list = (List<RefundDto>) request.getAttribute("list");
%>

<html>
<head>

<style type="text/css">
body {
  background-color: #9E9E9E;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 400px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #9A161F;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}



.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 200px;
  margin: auto;
  max-width: 1000px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#ffffff;
  background: #a12a32;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:18px;
  font-weight: 300;
  padding:20px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:15px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
tr:hover td {
  background:#9E9E9E;
  color:#FFFFFF;
  border-top: 1px solid #22262e;
}
 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 
tr:nth-child(odd):hover td {
  background:#9E9E9E;
}

tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#FFFFFF;
  padding:15px;
  text-align:left;
  vertical-align:middle;
  font-weight:400;
  font-size:17px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}



</style>


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
            var cells = rows[i].getElementsByTagName("td");
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

<br><br>
<table class="table-fill" id="refundTable">
<thead>
        <tr>
            <th class="text-left">환불번호</th>
            <th class="text-left">아이디</th>
            <th class="text-left">예약번호</th>
            <th class="text-left">환불내용</th>
            <th class="text-left">환불상태</th>
            <th class="text-left"></th>
        </tr>
</thead>
<tbody class="table-hover">
        <%
            for (int i = 0; i < list.size(); i++) {
                RefundDto dto = list.get(i);
        %>
        <tr>
            <td class="text-left"><%=dto.getRefund_id() %></td>
            <td class="text-left"><%=dto.getUser_id()%></td>
            <td class="text-left"><%=dto.getTicket_id() %></td>
            <td class="text-left"><%=dto.getContent()%></td>     
            <td class="text-left"><%=dto.getRefund_status()%></td>            
            <td class="text-left">

                <a class="link-success link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover" 
                href="refundAf.do?refund_id=<%=dto.getRefund_id()%>">승인하기</a>

            

            </td>
        </tr>
        <%
            }
        %>
   </tbody>
    </table>
    <br><br>
    
<div class="container">
    <div class="row justify-content-center">
        <button class="btn btn-outline-secondary" onclick="deleteApprovedRefunds()" style="width: 1000px;">승인된 데이터 가리기</button>
    </div>
</div>



</body>
</html>