<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.FaqDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	FaqDto dto = (FaqDto)request.getAttribute("dto");
    UserDto login = (UserDto)session.getAttribute("login");

%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=dto.getTitle() %></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style type="text/css">
th{
	background: #9A161F;
	color: white;
}
pre{
	white-space: pre-wrap;
	word-break:break-all;
	overflow: auto;
}
</style>

</head>
<body>


<div id="app" class="container">
<br/>

<h2>상세 글보기</h2>

<table class="table table-sm">
<col width="150px"/><col width="500px"/>

<tr>
	<th>작성자</th>
	<td><%=dto.getId() %></td>
</tr>
<tr>
	<th>작성일</th>
	<td><%=dto.getWdate() %></td>
</tr>
<tr>
	<th>조회수</th>
	<td><%=dto.getReadcount() %></td>
</tr>
<tr>	
	<td colspan="2" style="font-size: 22px;font-weight: bold;"><%=dto.getTitle() %></td>
</tr>
<tr>
	<td colspan="2" style="font-size: 120%">		
		<pre style="font-size: 20px;font-family: 고딕, arial;background-color: white"><%=dto.getContent() %></pre>
	</td>
</tr>
</table>

<div align="right">

<button type="button" class="btn btn-primary" onclick="answerFaq(<%=dto.getSeq() %>)">답글</button>

<%
if(login.getUser_id().equals(dto.getId())){
	%>	
	<button type="button" class="btn btn-primary" onclick="updateFaq(<%=dto.getSeq() %>)">수정</button>
	
	<button type="button" class="btn btn-primary" onclick="deleteFaq(<%=dto.getSeq() %>)">삭제</button>
	<%
}

%>
<button type="button" class="btn btn-primary" onclick="backToList_Faq()">목록</button>

</div>

<script type="text/javascript">
function answerFaq( seq ) {
	location.href = "faqanswer.do?seq=" + seq;	
}
function updateFaq( seq ) {
	location.href = "faqupdate.do?seq=" + seq;
}
function deleteFaq( seq ) {
	location.href = "faqdelete.do?seq=" + seq;
}
function backToList_Faq() {
	location.href = "faqlist.do";
}
</script>

<br/>
</div>

</body>
</html>












