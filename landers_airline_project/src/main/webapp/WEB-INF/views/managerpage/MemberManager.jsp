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
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
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
<br><br>

<form action="deleteUserAf.do" method="get">

    <label for="deleteUser">탈퇴할 유저 ID입력 :</label>
    <input type="text" id="deleteUser" name="user_id" required>

    <input type="submit" value="강제탈퇴">
</form>

</body>
</html>