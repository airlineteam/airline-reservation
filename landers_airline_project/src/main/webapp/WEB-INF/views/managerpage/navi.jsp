<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<nav class="navbar navbar-light" style="background-color: #9A161F;">
  <div class="container">
    <!-- 서브 컴퍼넌트 -->
    <!-- 브랜드 -->
    <a class="navbar-brand" href="managerHome.do" style="color: white">ManagerPage</a>
    
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
          <a class="nav-link" href="MemberManager.do" style="color: white">회원관리</a>
        </li>
        
         <li class="nav-item active">
          <a class="nav-link" href="refundManager.do" style="color: white">환불신청관리</a>
        </li>
                      
        <li class="nav-item">
          <a class="nav-link" href="mqnalist.do" style="color: white">고객문의관리</a>
        </li>
        
      </ul>
      
    </div>
    <!-- /서브 컴퍼넌트 -->
  </div>
</nav> 
    
    
    
    