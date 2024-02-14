<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.landers.airline.dto.UserDto"%>

<%
    UserDto login = (UserDto)session.getAttribute("login");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인 페이지</title>
    <!-- 부트스트랩 CSS 링크 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* 이미지를 헤더 공간에 딱 맞춤 */
        .navbar-brand img {
            max-height: 56px; /* 헤더의 높이에 맞게 이미지 크기 조정 */
            width: auto; /* 가로 비율 유지 */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="home.do">
        <img src="images/logo.png">
    </a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto"> <!-- 오른쪽으로 정렬 -->
            <li class="nav-item">
                <% if(login == null) { %>
                    <a class="nav-link" href="login.do" style="color: black">로그인</a>
                <% } else { %>
                    <a class="nav-link" href="logOut.do" style="color: black">로그아웃</a>
                <% } %>
            </li>
        </ul>
    </div>
</nav>

<!-- 부트스트랩 JS 링크 (필요에 따라 추가) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>