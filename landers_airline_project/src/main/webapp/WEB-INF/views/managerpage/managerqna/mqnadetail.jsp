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

<link href="managercss/mqnadetail.css" rel="stylesheet">
<meta charset="UTF-8">
<title><%=dto.getTitle() %></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


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