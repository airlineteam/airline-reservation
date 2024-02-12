<%@page import="com.landers.airline.dto.CalendarDto"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@page import="util.CalendarUtil"%>
<%@page import="java.util.Calendar"%>

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

<h1>여행일정</h1>
<br/>


<%
	List<CalendarDto> list = (List<CalendarDto>)request.getAttribute("list");

	String pp = (String)request.getAttribute("pp");
	String p = (String)request.getAttribute("p");
	String n = (String)request.getAttribute("n");
	String nn = (String)request.getAttribute("nn");
	
	Integer year = (Integer) request.getAttribute("year");
	if (year != null) {
	    // 'year'이 null이 아닐 때의 로직
	} else {
	    // 'year'이 null일 때의 처리
	}
	Integer month = (Integer) request.getAttribute("month");
	if (month != null) {
	    // 'month'이 null이 아닐 때의 로직
	} else {
	    // 'month'이 null일 때의 처리
	}
	Integer dayOfWeek = (Integer) request.getAttribute("dayOfWeek");
	if (dayOfWeek != null) {
	    // 'dayOfWeek'이 null이 아닐 때의 로직
	} else {
	    // 'dayOfWeek'이 null일 때의 처리
	}
	
	Calendar cal = (Calendar)request.getAttribute("cal");
%>

<div class="center">
	<form action="calendarlist.do" method="post">
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
    if (dayOfWeek == null || dayOfWeek <= 0) {
        dayOfWeek = 1; // dayOfWeek가 null이거나 음수일 경우 1로 설정
    }

    for (int i = 1; i < dayOfWeek; i++) {
%>
    <td style="background-color: #eeeeee">&nbsp;</td>
<%
    }
  
// 날짜
    // cal이 null이거나 초기화되지 않은 경우 현재 시간으로 초기화
    if (cal == null) {
        cal = Calendar.getInstance();
    }

    int lastday = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    

    for (int i = 1; i <= lastday; i++) {
%>
    <td style="color: #3c3c3c;padding-top: 5px">
        <%-- 결과가 null이 아닐 때에만 출력 --%>
        <% if (CalendarUtil.daylist(year, month, i) != null) { %>
            <%=CalendarUtil.daylist(year, month, i) %>
        <% } %>
        &nbsp;&nbsp;
        <%-- 결과가 null이 아닐 때에만 출력 --%>
        <% if (CalendarUtil.calwrite(year, month, i) != null) { %>
            <%=CalendarUtil.calwrite(year, month, i) %>
        <% } %>
        <%-- 결과가 null이 아닐 때에만 출력 --%>
        <% if (CalendarUtil.makeTable(year, month, i, list) != null) { %>
            <%=CalendarUtil.makeTable(year, month, i, list) %>
        <% } %>
    </td>
<%
    if ((i + dayOfWeek - 1) % 7 == 0 && i != lastday) {
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
</form>
</div>

</body>
</html>