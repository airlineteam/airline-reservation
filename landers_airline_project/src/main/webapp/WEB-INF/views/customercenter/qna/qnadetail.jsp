<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.QnaDto"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	QnaDto dto = (QnaDto)request.getAttribute("dto");
	UserDto login = (UserDto)session.getAttribute("login");

	// 관리자가 아니면, 본인 QnA만 확인 가능 !
	if ((login == null || !login.getUser_id().equals(dto.getId())) && login.getUser_role() != 0) {
	%>
	    <script type="text/javascript">
	        alert('본인 글만 확인할 수 있습니다!');
	        location.href = "qnalist.do";
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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"	>
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
	<th>제목</th>
	<td colspan="2" style="font-size: 22px;font-weight: bold;"><%=dto.getTitle() %></td>
</tr>
<tr>
	<th>내용</th>
	<td colspan="2" style="font-size: 120%">		
		<pre style="font-size: 20px;font-family: 고딕, arial;background-color: white"><%=dto.getContent() %></pre>
	</td>
</tr>
</table>

<div align="right">

<%
if (login != null && login.getUser_role() == 0) {
	System.out.println(login.getUser_role());
%>
	<button type="button" class="btn btn-primary" onclick="answerQna(<%=dto.getSeq() %>)">답글</button>
<%
}
%>

<%
if(login.getUser_id().equals(dto.getId())){
	%>	
	<button type="button" class="btn btn-primary" onclick="updateQna(<%=dto.getSeq() %>)">수정</button>
	
	<button type="button" class="btn btn-primary" onclick="deleteQna(<%=dto.getSeq() %>)">삭제</button>
	<%
}

%>
<button type="button" class="btn btn-primary" onclick="backToList_Qna()">목록</button>

</div>

<script type="text/javascript">
function answerQna( seq ) {
	location.href = "qnaanswer.do?seq=" + seq;	
}
function updateQna( seq ) {
	location.href = "qnaupdate.do?seq=" + seq;
}
function deleteQna( seq ) {
	location.href = "qnadelete.do?seq=" + seq;
}
function backToList_Qna() {
	location.href = "qnalist.do";
}
</script>

<br/>

<%-- 댓글 --%>
<div id="app" class="container">

<form action="qnaCommentWriteAf.do" method="post">
<input type="hidden" name="seq" value="<%=dto.getSeq() %>">
<input type="hidden" name="id" value="<%=login.getUser_id() %>">

<table>
<col width="1500px"/><col width="150px"/>
<tr>
	<td>답변</td>
</tr> 
<tr>
	<td>
		<textarea rows="3" class="form-control" name="content"></textarea>
	</td>
	<td style="padding-left: 30px">
		<button type="submit" class="btn btn-primary btn-block p-4">등록</button>
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
			
			$.each(list, function (i, item) {
				let str = "<tr id='tableReply'>"
					str += "<td style='color: #ffffff; background-color: #9A161F;'>작성자: " + item.id + "</td>";
					str += "<td style='color: #ffffff; background-color: #9A161F;'>작성일: " + item.wdate + "</td>";
					str += "</tr>";
					str += "<tr>";
					str += 		"<td colspan='2' style='background-color: #f5f5f5;'>" + item.content + "</td>";			
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













