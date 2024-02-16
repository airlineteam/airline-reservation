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
<link href="managercss/MemberManager.css" rel="stylesheet">

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