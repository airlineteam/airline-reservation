<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	BbsDto dto = (BbsDto)request.getAttribute("bbsdto");

	UserDto login = (UserDto)session.getAttribute("login");

    // login.getUser_role() 값이 0(관리자)이 아니면 사용 불가 !
    if (login == null || login.getUser_role() != 0) {
%>
        <script type="text/javascript">
            alert('관리자만 접근 가능합니다!');
            location.href = "bbslist.do";
        </script>
<%
        return; // 페이지 렌더링 중지
    }
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>답글</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style type="text/css">
th{
	background: royalblue;
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

<h2>기본글</h2>

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
	<td colspan="2"><pre style="font-size: 20px;font-family: 고딕, arial;background-color: white"><%=dto.getContent() %></pre></td>
</tr>
</table>


<hr/>
<br/>

<h2>답글</h2>

<form action="bbsanswerAf.do" method="post">
<input type="hidden" name="seq" value="<%=dto.getSeq() %>">

<table class="table table-sm">
<col width="150px"/><col width="500px"/>

<tr>
	<th>아이디</th>
	<td>
		<input type="text" name="id" class="form-control" readonly="readonly" value="<%=login.getUser_id() %>">
	</td>
</tr>
<tr>
	<th>제목</th>
	<td>
		<input type="text" name="title" class="form-control">
	</td>
</tr>
<tr>	
	<td colspan="2">
		<textarea rows="10" cols="50" class="form-control" name="content"></textarea>
	</td>
</tr>
</table>

<div align="right">
	<input type="submit" class="btn btn-primary" value="작성완료">
</div>

</form>



</div>



</body>
</html>





