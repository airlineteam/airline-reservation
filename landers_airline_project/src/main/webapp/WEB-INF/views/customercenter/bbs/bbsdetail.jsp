<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.BbsDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
    BbsDto dto = (BbsDto)request.getAttribute("dto");
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
		<%-- <textarea rows="12" cols="35" class="form-control"
			style="background-color: #fff; font: 20px" readonly><%=dto.getContent() %></textarea> --%>
			
		<%-- <%=dto.getContent() %> --%>
		
		<%-- <pre>
			<%=dto.getContent() %>
		</pre> --%>		
		
		<pre style="font-size: 20px;font-family: 고딕, arial;background-color: white"><%=dto.getContent() %></pre>
	</td>
</tr>
</table>

<div align="right">

<button type="button" class="btn btn-primary" onclick="answerBbs(<%=dto.getSeq() %>)">답글</button>

<%
if(login.getUser_id().equals(dto.getId())){
	%>	
	<button type="button" class="btn btn-primary" onclick="updateBbs(<%=dto.getSeq() %>)">수정</button>
	
	<button type="button" class="btn btn-primary" onclick="deleteBbs(<%=dto.getSeq() %>)">삭제</button>
	<%
}

%>
<button type="button" class="btn btn-primary" onclick="backToList_Bbs()">목록</button>

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

<%-- 댓글 --%>
<div id="app" class="container">

<form action="bbsCommentWriteAf.do" method="post">
<input type="hidden" name="seq" value="<%=dto.getSeq() %>">
<input type="hidden" name="id" value="<%=login.getUser_id() %>">

<table>
<col width="1500px"/><col width="150px"/>
<tr>
	<td>comment</td>
</tr> 
<tr>
	<td>
		<textarea rows="3" class="form-control" name="content"></textarea>
	</td>
	<td style="padding-left: 30px">
		<button type="submit" class="btn btn-primary btn-block p-4">작성완료</button>
	</td>
</tr>

</table>
</form>

<br/><br/>

<table class="table table-sm">
<col width="500"/><col width="500"/>

<tbody id="tbody"></tbody>
</table>

</div>
</div>

<script type="text/javascript">
$(document).ready(function () {
	
	$.ajax({
		url:"commentList.do",
		type:"get",
		data:{ seq:<%=dto.getSeq() %>  },
		success:function( list ){
			// alert('success');			
			// alert(JSON.stringify(list));
			
			$.each(list, function (i, item) {
				let str = "<tr class='table-info'>"
					str += 		"<td>작성자: " + item.id + "</td>";
					str += 		"<td>작성일: " + item.wdate + "</td>";
					str += "</tr>";
					str += "<tr>";
					str += 		"<td colspan='2'>" + item.content + "</td>";			
					str += "</tr>";
					str += "<tr>";
					str += 		"<td colspan='2'>&nbsp;</td>";			
					str += "</tr>";
					
				$("#tbody").append(str);
			});			
						
		},
		error:function(){
			alert('error');
		}		
	});	
	
});
</script>

</body>
</html>













