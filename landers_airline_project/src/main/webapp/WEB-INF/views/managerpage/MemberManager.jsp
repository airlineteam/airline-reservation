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

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>회원관리</h2>
<div class="table-responsive">
<table class="table table-hover">
<tr>
				<th>아이디</th>
                <th>패스워드</th>
                <th>관리자여부/이름</th>
                <th>휴대폰번호</th>
                <th>주소</th>
</tr>

<%
for(int i = 0; i < list.size(); i++){
		UserDto dto = list.get(i);
				%>
				<tr>
				<th><%=dto.getUser_id() %></th>
				<th><%=dto.getUser_pw() %></th>
				<th><%=dto.getUser_name() %></th>
				<th><%=dto.getUser_phone() %></th>
				<th><%=dto.getUser_address() %></th>
				</tr>
				<%		
}
	%>
</table>
</div>
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