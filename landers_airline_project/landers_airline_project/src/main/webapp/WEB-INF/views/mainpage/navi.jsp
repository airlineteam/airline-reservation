
<%@page import="com.landers.airline.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
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
    <a class="navbar-brand" href="home.do" style="color: white">Home</a>
    
    <!-- 전환 버튼 -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar-content" aria-controls="navbar-content" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <!-- 네비게이션 -->
    <div class="collapse navbar-collapse" id="navbar-content">
    
      <!-- 네비게이션메뉴 -->
      <!-- 왼쪽 메뉴: 톱 페이지의 각 콘텐츠에 대한 링크 -->
      <ul class="navbar-nav me-auto">
      <%if(login == null){ %>
        <li class="nav-item active">
          <a class="nav-link" href="login.do" style="color: white">로그인</a>
        </li>
	<%}else{ %>
        <li class="nav-item active">
          <a class="nav-link" href="mylist.do" style="color: white">마이페이지</a>
          <a class="nav-link" href="logOut.do" style="color: white">로그아웃</a>
        </li>
        <%} %>
                 
        <!-- 드롭다운 -->
        <li class="nav-item dropdown">
          <a class="nav-link" href="customerHome.do" style="color: white">
            고객센터
          </a>
        </li>    
        <li class="nav-item">
          <a class="nav-link" href="managerHome.do" style="color: white">관리자페이지</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="mytrip.do" style="color: white">나의 여행일정</a>
        </li>
        
      </ul>
      
      <!-- 오른쪽 메뉴: 문의 페이지 링크 -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a href="reservationHome.do" class="nav-link btn btn-info text-white">항공권 예약하기</a>
        </li>
      </ul>
      <!-- /네비게이션메뉴 -->
    </div>
    <!-- /서브 컴퍼넌트 -->
  </div>
</nav>    
    
    
    
    
    