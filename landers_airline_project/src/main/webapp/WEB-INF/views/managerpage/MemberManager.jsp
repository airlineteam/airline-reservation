<%@page import="com.landers.airline.dto.ManagerQnaParam"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.ManagerDto"%>

<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
     List<UserDto> list = (List<UserDto>)request.getAttribute("list");
    

    %>
<!DOCTYPE html>
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

 form {
            max-width: 1000px;
            margin: auto;
 }

</style>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>

<body>
<br><br>
<table class="table-fill">
<thead>

<tr>
				<th class="text-left">아이디</th>
                <th class="text-left">패스워드</th>
                <th class="text-left">관리자여부/이름</th>
                <th class="text-left">휴대폰번호</th>
                <th class="text-left">주소</th>
</tr>
</thead>
<tbody class="table-hover">
<%
for(int i = 0; i < list.size(); i++){
		UserDto dto = list.get(i);
				%>
				<tr>
				<td class="text-left"><%=dto.getUser_id() %></td>
				<td class="text-left"><%=dto.getUser_pw() %></td>
				<td class="text-left"><%=dto.getUser_name() %></td>
				<td class="text-left"><%=dto.getUser_phone() %></td>
				<td class="text-left"><%=dto.getUser_address() %></td>
				</tr>
				<%		
}
	%>
	</tbody>
	
</table>

<br><br>


<form action="deleteUserAf.do" method="get">
    
   <div class="input-group mb-3">
    <input type="text" class="form-control" placeholder="탈퇴할 유저 ID 입력" aria-label="탈퇴할 유저 ID 입력" aria-describedby="button-addon2"
     id="deleteUser" name="user_id" required>
    <input type="submit" class="btn btn-outline-secondary" id="button-addon2" value="강제탈퇴">
    </div>
</form>

</body>
</html>