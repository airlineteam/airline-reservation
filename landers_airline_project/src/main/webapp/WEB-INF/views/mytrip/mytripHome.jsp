<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@page import="java.util.List"%>
<%@page import="util.CalendarUtil"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
UserDto login = (UserDto)session.getAttribute("login");
if ( login == null ) {
	%>
	    <script type="text/javascript">
	        alert('로그인이 필요합니다.');
	        location.href = "login.do";
	    </script>
	<%
	    return; // 페이지 렌더링 중지
	}
%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
th{
   vertical-align: middle;
}
th, td{
   border: 1px solid #aaa;
}
.tdlist{
   padding-left:5px;
}


.tt{
   margin: 0 auto;
   text-align:center;
   background-color: #9a161f;
   border: none;

}

#tt{
   width:100%;
}

.tta{
	text-decoration: none;
	color: white;
}

p.h1{
	margin-left: 500px;
	padding-top: 50px;
}
.img{
	position: relative;
}

.intro{
	display: flex;
	justify-content: center;
	align-items: center;
	max-width: 400px;
	float: left;
}

.intro .card{
	flex: 1;
	text-align: center;
	margin: 150px 40px;
	 border: none;
}

.intro .card img{
	width: 70px;
	height: 70px;
	margin: auto;
	color: #444;
	margin-bottom: 30px;
}

.intro .card h2{
	letter-spacing: 0.2em;
}

.intro .card p{
	font-size: 13px;
}

.ttt{
	margin-top : 20px;
	margin-bottom: 20px;

}

</style>




</head>
<body>

<%
List<CalendarDto> list = (List<CalendarDto>)request.getAttribute("list");

String pp = (String)request.getAttribute("pp");
String p = (String)request.getAttribute("p");
String n = (String)request.getAttribute("n");
String nn = (String)request.getAttribute("nn");

int year = (Integer)request.getAttribute("year");
int month = (Integer)request.getAttribute("month");
int dayOfWeek = (Integer)request.getAttribute("dayOfWeek");

Calendar cal = (Calendar)request.getAttribute("cal");

System.out.println(year + " " + month);



%>
<section class="intro">
	<div class="card">
		<img src="./images/airplane.svg">
		<h2>LANDERS</h2>
		<p>무엇과도 바꿀 수 없는 핵심 가치인 '안전'과 '고객중심서비스'를 등대삼아, 앞으로도 고객 여러분들이 선택한 Landers Airline이 항공업계를 주도하는 글로벌 선도 항공사로 자리매김할 수 있도록 최선의 노력을 다 하겠습니다.</p>
	</div>
</section>
<div class="center">

<table class="ttt" border="1">
<col width="120"/><col width="120"/><col width="120"/><col width="120"/>
<col width="120"/><col width="120"/><col width="120"/>
<tr height="80">
   <td colspan="7" align="center">
      <%=pp %>&nbsp;<%=p %>&nbsp;&nbsp;&nbsp;&nbsp;
      
      <font style="color: #3c3c3c; font-size: 40px; font-family: fantasy; vertical-align: middle;">
         <%=String.format("%d &nbsp/&nbsp;&nbsp;%2d", year, month) %>
      </font>
      
      &nbsp;&nbsp;&nbsp;&nbsp;<%=n %>&nbsp;<%=nn %>      
   </td>
</tr>

<tr height="30" style="background-color: #9A161F; color: white;" >
   <th class="text-center">일</th>
   <th class="text-center">월</th>
   <th class="text-center">화</th>
   <th class="text-center">수</th>
   <th class="text-center">목</th>
   <th class="text-center">금</th>
   <th class="text-center">토</th>
</tr>

<tr height="120" align="left" valign="top">
<%
// 윗쪽 빈칸
for(int i = 1;i < dayOfWeek; i++){
   %>
   <td style="background-color: #eeeeee">&nbsp;</td>
   <%
}

// 날짜
int lastday = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
for(int i = 1;i <= lastday; i++){
   %>
   <td style="padding-top: 5px">
      <%=CalendarUtil.daylist(year, month, i) %>&nbsp;&nbsp;<%=CalendarUtil.calwrite(year, month, i) %>
   <%=CalendarUtil.makeTable(year, month, i, list) %>
   </td>
   <%
   if((i + dayOfWeek -1) % 7 == 0 && i != lastday){
      %>   
      </tr><tr height="120" align="left" valign="top">      
      <%
   }   
}

// 아래쪽 빈칸
cal.set(Calendar.DATE, lastday);
int weekday = cal.get(Calendar.DAY_OF_WEEK);
for(int i = 0;i < 7 - weekday; i++){
   %>   
   <td style="background-color: #eeeeee">&nbsp;</td>
   <%
}
%>
</tr>

</div>
</div>
</table>



</body>
</html>