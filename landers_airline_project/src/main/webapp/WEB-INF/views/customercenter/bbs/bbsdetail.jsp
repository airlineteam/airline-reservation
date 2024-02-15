<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    BbsDto dto = (BbsDto)request.getAttribute("dto");
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

.center{
	margin: auto;
	width: 1000px;
}

body {
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

.table-fill {
  border-radius:3px;
  border-collapse: collapse;
  height: 100px;
  margin: auto;
  max-width: 1000px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
.table-fill th {
  color:#ffffff;
  width: 200px;
  background: #e0757d;
  border: 2px solid #4f4f4f;
  font-size:18px;
  font-weight: 300;
  padding:20px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);
/*   vertical-align:middle; */
}
  
.table-fill tr {
  border: 1px solid #4f4f4f;
  background: #ffc7cb;
  font-size:15px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 
.table-fill td {
  padding:15px;
  text-align:left;
/*   vertical-align:middle; */
  font-weight:400;
  font-size:17px;
  border: 1px solid;
}

pre{
	white-space: pre-wrap;
	word-break:break-all;
	overflow: auto;
}
</style>

</head>
<body>


<div class="center">
<br/><h2>공지사항</h2> <br/>

<table class="table-fill">
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
	<th>제목</th>
	<td colspan="2" style="font-size: 22px;font-weight: bold;"><%=dto.getTitle() %></td>
</tr>
<tr style="height: 400px; background: white">
	<th>내용</th>
	<td colspan="2" style="vertical-align: text-top;">		
		<pre style="font-size: 16px;font-family: 고딕, arial;"><%=dto.getContent() %></pre>
	</td>
</tr>
</table><br/>

<div align="right">

<%
if (login != null){
	if(login.getUser_id().equals(dto.getId())){
		%>
		<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="answerBbs(<%=dto.getSeq() %>)">답글</button>
		
		<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="updateBbs(<%=dto.getSeq() %>)">수정</button>
		
		<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="deleteBbs(<%=dto.getSeq() %>)">삭제</button>
		<%
	}
}

%>
<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="backToList_Bbs()">목록</button>

</div>

<script type="text/javascript">
function answerBbs( seq ) {
	location.href = "bbsanswer.do?seq=" + seq;	
}
function updateBbs( seq ) {
	location.href = "bbsupdate.do?seq=" + seq;
}
function deleteBbs( seq ) {
	location.href = "bbsdelete.do?seq=" + seq;
}
function backToList_Bbs() {
	location.href = "bbslist.do";
}
</script>

<br/>

</div>

</body>
</html>













