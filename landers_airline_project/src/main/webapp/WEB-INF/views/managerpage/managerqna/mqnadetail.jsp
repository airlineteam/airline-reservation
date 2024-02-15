<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.ManagerQnaDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	ManagerQnaDto dto = (ManagerQnaDto)request.getAttribute("dto");
    UserDto login = (UserDto)session.getAttribute("login");
    
    // login.getUser_id() 값이 null이면 로그인 페이지로 이동
    if (login == null || login.getUser_id() == null) {
%>
        <script type="text/javascript">
            alert('로그인 후 이용 가능합니다.');
            location.href = "login.do"; // 로그인 페이지 URL로 변경
        </script>
<%
        return; // 페이지 렌더링 중지
    }
%>  
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
body {
  background-color: #ffffff;
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

div.table-title {
   display: block;
  margin: auto;
  max-width: 400px;
  padding:5px;
  width: 100%;
}

.table-title h3 {
   color: #9A161F;
   font-size: 30px;
   font-weight: 400;
   font-style:normal;
   font-family: "Roboto", helvetica, arial, sans-serif;
   text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
   text-transform:uppercase;
}



.table-fill {
  background: white;
  border-radius:3px;
  border-collapse: collapse;
  height: 200px;
  margin: auto;
  max-width: 1000px;
  padding:5px;
  width: 100%;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
  animation: float 5s infinite;
}
 
th {
  color:#ffffff;
  background: #a12a32;
  border-bottom:4px solid #9ea7af;
  border-right: 1px solid #343a45;
  font-size:18px;
  font-weight: 300;
  padding:20px;
  text-align:left;
  text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
  vertical-align:middle;
}

th:first-child {
  border-top-left-radius:3px;
}
 
th:last-child {
  border-top-right-radius:3px;
  border-right:none;
}
  
tr {
  border-top: 1px solid #C1C3D1;
  border-bottom-: 1px solid #C1C3D1;
  color:#666B85;
  font-size:15px;
  font-weight:normal;
  text-shadow: 0 1px 1px rgba(256, 256, 256, 0.1);
}
 

 
tr:first-child {
  border-top:none;
}

tr:last-child {
  border-bottom:none;
}
 
tr:nth-child(odd) td {
  background:#EBEBEB;
}
 


tr:last-child td:first-child {
  border-bottom-left-radius:3px;
}
 
tr:last-child td:last-child {
  border-bottom-right-radius:3px;
}
 
td {
  background:#EBEBEB;
  padding:15px;
  text-align:left;
  vertical-align:middle;
  font-weight:400;
  font-size:17px;
  text-shadow: -1px -1px 1px rgba(0, 0, 0, 0.1);
  border-right: 1px solid #C1C3D1;
}

td:last-child {
  border-right: 0px;
}

th.text-left {
  text-align: left;
}

th.text-center {
  text-align: center;
}

th.text-right {
  text-align: right;
}

td.text-left {
  text-align: left;
}

td.text-center {
  text-align: center;
}

td.text-right {
  text-align: right;
}
<style>
.page-link {
  color: #000; 
  background-color: #fff;
  border: 1px solid #ccc; 
}

.page-item.active .page-link {
 z-index: 1;
 color: #555;
 font-weight:bold;
 background-color: #f1f1f1;
 border-color: #ccc;
}




</style>

</head>
<body>


<div id="app" class="container">
<br/><br>


<table class="table-fill">


<col width="50px"/><col width="300px"/>

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
	<td><%=dto.getTitle() %></td>
</tr>




<tr style="background-color: write;">
	<td class="content" colspan="2" style="font-size: 120%">		
		<pre style="font-size: 20px;font-family: 고딕, arial; "><%=dto.getContent() %></pre>
	</td>
</tr>


</table>
<br><br>
<div align="right" >

<%
if (login != null && login.getUser_role() == 0) {
	System.out.println(login.getUser_role());
%>
	<button type="button" class="btn btn-primary" style=" background-color: #9a161f; border-color: #9a161f" onclick="answerQna(<%=dto.getSeq() %>)">댓글작성하기</button>
	<button type="button" class="btn btn-primary"  style=" background-color: #9a161f ; border-color: #9a161f" onclick="deleteQna(<%=dto.getSeq() %>)">관리자권한삭제</button>
<button type="button" class="btn btn-primary" style=" background-color: #9a161f ; border-color: #9a161f" onclick="backToList_Qna()">목록</button>
<%
}
%>

</div>

<script type="text/javascript">
function answerQna( seq ) {
	location.href = "qnadetail.do?seq=" + seq;	
}
function updateQna( seq ) {
	location.href = "qnaupdate.do?seq=" + seq;
}
function deleteQna( seq ) {
	location.href = "mqnadelete.do?seq=" + seq;
}
function backToList_Qna() {
	location.href = "mqnalist.do";
}
</script>

<br/>
</div>

</body>
</html>