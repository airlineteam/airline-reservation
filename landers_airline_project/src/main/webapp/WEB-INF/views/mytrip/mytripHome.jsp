<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@page import="java.util.List"%>
<%@page import="util.CalendarUtil"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%--
	MemberDto login = (MemberDto)session.getAttribute("login");
--%>    
    
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
	border: 0px;
}
</style>

</head>
<body>

<h1>일정관리</h1>
<br/>

<%
	Calendar cal = Calendar.getInstance();
	cal.set(Calendar.DATE, 1);
	
	String syear = request.getParameter("year");
	String smonth = request.getParameter("month");
	
	// 현재 연도와 월을 구한다	-> 처음 이 페이지가 실행시에 적용
	int year = cal.get(Calendar.YEAR);
	if(CalendarUtil.nvl(syear) == false){	// 넘어 온 파라미터 값이 있음
		year = Integer.parseInt(syear);
	}
	int month = cal.get(Calendar.MONTH) + 1;	// 0 ~ 11 까지이므로
	if(CalendarUtil.nvl(smonth) == false){
		month = Integer.parseInt(smonth);
	}
	
	if(month < 1){
		month = 12;
		year--;
	}
	if(month > 12){
		month = 1;
		year++;
	}

	System.out.println(year + " " + month);
	System.out.println(year + " " + month);
	cal.set(year, month-1, 1);
	
	// 요일
	int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
	
	// <<	year--
	String pp = String.format("<a href='calendarList.jsp?year=%d&month=%d' style='text-decoration:none'>"
							+ 		"<img src='./images/left.png' width='20px' height='20px'>"
							+ "</a>",  year-1, month);
	
	// <	month--
	String p = String.format("<a href='calendarList.jsp?year=%d&month=%d' style='text-decoration:none'>"
							+ 		"<img src='./images/prev.png' width='20px' height='20px'>"
							+ "</a>",  year, month-1);
	
	// >	month++
	String n = String.format("<a href='calendarList.jsp?year=%d&month=%d' style='text-decoration:none'>"
							+ 		"<img src='./images/next.png' width='20px' height='20px'>"
							+ "</a>",  year, month+1);
	
	// >>	year++
	String nn = String.format("<a href='calendarList.jsp?year=%d&month=%d' style='text-decoration:none'>"
							+ 		"<img src='./images/last.png' width='20px' height='20px'>"
							+ "</a>",  year+1, month);
	
//	CalendarDao dao = CalendarDao.getInstance();			// 202401
//	List<CalendarDto> list = dao.getCalendarList(login.getId(), year + CalendarUtil.two(month + ""));

	List<CalendarDto> list = (List<CalendarDto>)request.getAttribute("list");
/*
	String pp = (String)request.getAttribute("pp");
	String p = (String)request.getAttribute("p");
	String n = (String)request.getAttribute("n");
	String nn = (String)request.getAttribute("nn");
	
	int year = (Integer)request.getAttribute("year");
	int month = (Integer)request.getAttribute("month");
	int dayOfWeek = (Integer)request.getAttribute("dayOfWeek");
*/	
//	Calendar cal = (Calendar)request.getAttribute("cal");
%>

<div align="center">

<table border="1">
<col width="120"/><col width="120"/><col width="120"/><col width="120"/>
<col width="120"/><col width="120"/><col width="120"/>

<tr height="80">
	<td colspan="7" align="center">
		<%=pp %>&nbsp;<%=p %>&nbsp;&nbsp;&nbsp;&nbsp;
		
		<font style="color: #3c3c3c; font-size: 40px; font-family: fantasy; vertical-align: middle;">
			<%=String.format("%d년&nbsp;&nbsp;%2d월", year, month) %>
		</font>
		
		&nbsp;&nbsp;&nbsp;&nbsp;<%=n %>&nbsp;<%=nn %>		
	</td>
</tr>

<tr height="30" >
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
	<td style="color: #3c3c3c;padding-top: 5px">
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

</table>

</div>

</body>
</html>







