<%@page import="com.landers.airline.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	UserDto login = (UserDto)session.getAttribute("login");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="fullpage.css" />
<style type="text/css">
*{margin: 0;padding: 0;}
ul li,
ol li{list-style: none;}
#gnb a {
    text-decoration: none;
    color: inherit;
}
#header .logo a {
	text-decoration: none;
    color: inherit;
}


#header{display: flex;justify-content: space-between;align-items: center;padding: 1rem;position: relative; background-color: #9a161f; font-size: 15px;}
#header #gnb{display: flex;z-index: 99;margin-left: auto;}
#header #gnb > .dept1 {text-align: left; color: white} 
#header #gnb > .dept1 > a {padding: 0 1rem;} 
#header #gnb > .dept1 {position: relative;padding: 1rem 2rem;text-align: center;}
#header #gnb > .dept1 > a.active{color: red;font-weight: bold}

#header #gnb .inner_menu {position: absolute;top: 70%;left:50%;transform: translateX(-50%);width:100%;padding-top:3rem;display: none;}
#header #gnb  .dept2 {padding: 1rem 0;color: white;}
#header #gnb  .dept2 > a:hover,
#header #gnb  .dept2 > a:active,
#header #gnb  .dept2 > a:focus {font-weight: bold}


.hd_bg{background: rgba(118,12,12,0.7);;width: 100%;height: 0;left: 0;z-index: 1;position: absolute;}


</style>
</head>
<body>
<!--header-->
   <div id="header">
      <h1 class="logo" style="color: white; font-size: 25px" >
         <a href="home.do">Home</a>
      </h1>
      <ul id="gnb">
         <li class="dept1">
            <a href="bbslist.do">고객센터</a>
            <ul class="inner_menu">
               <li class="dept2">
                  <a href="#">공지사항</a>
               </li>
               <li class="dept2">
                  <a href="faqlist.do">FAQ</a>
               </li>
               <li class="dept2">
                  <a href="qnalist.do">Q&A</a>
               </li>
            </ul>
         </li>
         <% if (login != null && !login.equals("") && login.getUser_role() == 0) { %>
         <li class="dept1">
            <a href="#">관리자페이지</a>
            <ul class="inner_menu">
               <li class="dept2">
                  <a href="MemberManager.do">회원관리</a>
               </li>
               <li class="dept2">
                  <a href="refundManager.do">환불신청관리</a>
               </li>
               <li class="dept2">
                  <a href="mqnalist.do">고객문의관리</a>
               </li>
            </ul>
         </li>
         <%} %>
         <% if (login != null && !login.equals("")) { %>
         <li class="dept1">
            <a href="#">마이페이지</a>
            <ul class="inner_menu">
               <li class="dept2">               
                  <a href="mylist.do?user_id=<%=login.getUser_id() %>">마이페이지</a>
               </li>
               <li class="dept2">
                  <a href="myTicket.do?user_id=<%=login.getUser_id() %>">예약정보</a>
               </li>
            </ul>
         </li>
         <%} %>
         <li class="dept1">
            <a href="mytrip.do">나의여행일정</a>
         </li>
         <li class="dept1">
            <a href="reservationHome.do">항공조회</a>
         </li>
      </ul>

      <div class="hd_bg"></div>

   </div>
   <!--//header-->

<script type="text/javascript">
$(document).ready(function() {
    var gnb = $('#gnb');
    var innerMenu = $('.inner_menu');
    var hdBg = $('.hd_bg');

    // 마우스 over 시
    gnb.mouseenter(function() {
        var menuHeight = $('#header').outerHeight();

        innerMenu.stop().animate({
            'height': 'toggle'
        }, {
            duration: 250,
            step: function() {
                hdBg.css({
                    'top': menuHeight + 'px',
                    'height': innerMenu.outerHeight() + 'px'
                });
            }
        });
    });

    // 마우스 leave 시
    gnb.mouseleave(function() {
        innerMenu.stop().animate({
            'height': 'toggle'
        }, 300);

        hdBg.animate({
            'height': '0'
        }, 300);
    });
});

</script>
</body>
</html>
