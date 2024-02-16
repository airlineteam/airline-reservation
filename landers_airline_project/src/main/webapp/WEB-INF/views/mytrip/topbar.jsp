<%@page import="com.landers.airline.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 UserDto login = (UserDto)session.getAttribute("login");
 if(login != null){
 	System.out.println(login.toString());
 }
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TOP BAR</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
 
<style type="text/css">
.top-bar {
    margin: 10px 0; /* Updated margin */
    display: flex;
    justify-content: flex-end;
    font-family: '가을체', sans-serif;
    font-size: 9pt;
    color: #666666;
    background-color: white;
}

.top-bar a {
	text-decoration: none;
    color: #666666;
}

.top-bar a:hover {
    font-weight: bold;
}


</style>

</head>
<body>

<nav class="top-bar">
    <%if(login == null){ %>
	    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
		  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
		  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
		</svg>&nbsp;&nbsp;
       	<a href="login.do">로그인</a>&nbsp;&nbsp;&nbsp;
		<a href="regi.do">회원가입</a>&nbsp;&nbsp;&nbsp;
		<a href="faqlist.do">고객센터</a>&nbsp;&nbsp;&nbsp;
	<%}else{ %>
	
		<!-- person icon -->
    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
		  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
		  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
		</svg>&nbsp;&nbsp;
		
		<a href="mylist.do?user_id=<%=login.getUser_id() %>"><b><%=login.getUser_name() %></b>님 환영합니다!</a>&nbsp;&nbsp;&nbsp;
		
        <a href="logOut.do">로그아웃</a>&nbsp;&nbsp;&nbsp;
		<a href="faqlist.do">고객센터</a>&nbsp;&nbsp;&nbsp;
        <%if(login.getUser_role() == 0){ %>    	
        <a href="managerHome.do" style="color: #9a161f">관리자모드</a>&nbsp;&nbsp;&nbsp;
    	<%} %>
    <%} %>    
</nav>

</body>
</html>