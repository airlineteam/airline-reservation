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
<table>
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
</body>
</html>