<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
a{text-decoration: none;color: inherit;}


#header{display: flex;justify-content: space-between;align-items: center;padding: 1rem;position: relative; background-color: #9a161f; font-size: 15px;}
#header #gnb{display: flex;z-index: 99;margin-left: auto;}
#header #gnb > .dept1 {text-align: left; color: white} /* Align text to the left */
#header #gnb > .dept1 > a {padding: 0 1rem;} /* Add padding to increase spacing */
#header #gnb > .dept1 {position: relative;;padding: 1rem 2rem;text-align: center;}
#header #gnb > .dept1 > a.active{color: red;font-weight: bold}

#header #gnb .inner_menu {position: absolute;top: 70%;left:50%;transform: translateX(-50%);width:100%;padding-top:3rem;display: none}
#header #gnb  .dept2 {padding: 1rem 0;color: #555}
#header #gnb  .dept2 > a:hover,
#header #gnb  .dept2 > a:active,
#header #gnb  .dept2 > a:focus {font-weight: bold}


.menu_open{position: fixed;width: 100%;height: 100vh;background: #fff;top: 0;left: 0;z-index: 999;padding: 3rem;display: none}
.menu_open > ul{display: flex;}
.menu_open > ul li{width: 20%;}

.hd_bg{background: #fff;width: 100%;height: 0;left: 0;z-index: 1;position: absolute;}

.visual{background:#ccd1f1;width: 100%;height: 100vh;}
</style>
</head>
<body>
<!--header-->
   <div id="header">
      <h1 class="logo" style="color: white">
         <a href="#">Home</a>
      </h1>
      <ul id="gnb">
         <li class="dept1">
            <a href="#">고객센터</a>
            <ul class="inner_menu">
               <li class="dept2">
                  <a href="#">공지사항</a>
               </li>
               <li class="dept2">
                  <a href="#">FAQ</a>
               </li>
               <li class="dept2">
                  <a href="#">Q&A</a>
               </li>
            </ul>
         </li>
         <li class="dept1">
            <a href="#">관리자페이지</a>
            <ul class="inner_menu">
               <li class="dept2">
                  <a href="#">회원관리</a>
               </li>
               <li class="dept2">
                  <a href="#">환불요청관리</a>
               </li>
               <li class="dept2">
                  <a href="#">게시판관리</a>
               </li>
            </ul>
         </li>
         <li class="dept1">
            <a href="#">나의여행일정</a>
         </li>
         <li class="dept1">
            <a href="#">항공조회</a>
         </li>
      </ul>

      <div class="hd_bg"></div>

   </div>
   <!--//header-->

   <div class="visual">

   </div>


<script type="text/javascript">
$(document).ready(function() {
   var gnb = $('#gnb');

   // 마우스 over 시
   gnb.mouseenter(function() {
      $('.inner_menu').show();
      // menu bg
      var menuHeight = $('#header').outerHeight();
      var inmeHegiht = $('.inner_menu').outerHeight();
      $('.hd_bg').css({
         'top': menuHeight + 'px',
         height: inmeHegiht + 'px'
      });
   });

   // 마우스  leave 시
   gnb.mouseleave(function() {
      $('.inner_menu').hide();
      $('.hd_bg').css('height', '0')

   });
});


</script>
</body>
</html>