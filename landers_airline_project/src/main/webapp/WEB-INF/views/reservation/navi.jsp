<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
  <div class="container">
    <!-- 서브 컴퍼넌트 -->
    <!-- 브랜드 -->
    <a class="navbar-brand" href="home.do">ProjectName</a>
    
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
          <a class="nav-link" href="./home.do">home</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link" href="./bbs.do">bbs</a>
        </li>
                
        <!-- 드롭다운 -->
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            info
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
            <a class="dropdown-item" href="#">회사소개</a>
            <a class="dropdown-item" href="#">오시는 길</a>
          </div>
        </li>
        
      </ul>
      
      <!-- 오른쪽 메뉴: 문의 페이지 링크 -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a href="contact.html" class="nav-link btn btn-info text-dark">문의</a>
        </li>
      </ul>
      <!-- /네비게이션메뉴 -->
    </div>
    <!-- /서브 컴퍼넌트 -->
  </div>
</nav>    
    
    
    
    
    