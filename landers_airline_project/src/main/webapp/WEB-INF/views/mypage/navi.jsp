<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.landers.airline.dto.UserDto"%>
    
 <%
 UserDto login = (UserDto)session.getAttribute("login");
 if(login != null){
 	System.out.println(login.toString());
 }
 %>
 

<nav class="navbar navbar-light" style="background-color: #9A161F;">
  <div class="container">
    <!-- 서브 컴퍼넌트 -->
    <!-- 브랜드 -->
    <a class="navbar-brand" style="color: white" href="mylist.do?user_id=<%=login.getUser_id() %>">MyPage</a>
    
    <!-- 전환 버튼 -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-content" aria-controls="navbar-content" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- 네비게이션 -->
    <div class="collapse navbar-collapse" id="navbar-content">
    
      <!-- 네비게이션메뉴 -->
      <!-- 왼쪽 메뉴: 톱 페이지의 각 콘텐츠에 대한 링크 -->
      <ul class="navbar-nav me-auto">
        <li class="nav-item active">
          <a class="nav-link" href="mylist.do?user_id=<%=login.getUser_id() %>" style="color: white">마이페이지</a>
        </li>
        
         <li class="nav-item active">
          <a class="nav-link" href="myTicket.do?user_id=<%=login.getUser_id() %>" style="color: white">예약정보</a>
        </li>
                      
        
      </ul>
      
    </div>
    <!-- /서브 컴퍼넌트 -->
  </div>
</nav> 
    
    
    
    