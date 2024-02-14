<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.QnaDto"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	QnaDto dto = (QnaDto)request.getAttribute("dto");
	UserDto login = (UserDto)session.getAttribute("login");
	
	if (login == null || login.getUser_id() == null) {
		%>
		    <script type="text/javascript">
		        alert('로그인 후 이용 가능합니다!');
		        location.href = "login.do";
		    </script>
		<%
		    return; // 페이지 렌더링 중지
		}
	
	// 관리자가 아니면, 본인 QnA만 확인 가능 !
	if (dto != null && (login == null || !login.getUser_id().equals(dto.getId())) && login.getUser_role() != 0) {
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
<title></title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"	>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style type="text/css">

.center{
	margin: auto;
	width: 1000px;
	text-align: center;
}

body {
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

th{
	padding-left: 5%;
	background: #9A161F;
	color: white;
}

td{
	text-align: left;
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
<div id="app" class="container">

<br/> <h2 style="text-align: left;">Q & A 게시판</h2> <br/>

<table class="table table-sm">
<tr style="background-color: aqua">
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
<tr style="height: ">
	<th>내용</th>
	<td colspan="2" style="font-size: 120%">		
		<pre style="font-size: 20px;font-family: 고딕, arial;background-color: white"><%=dto.getContent() %></pre>
	</td>
</tr>
</table>

<div align="right">
<%
if(login.getUser_id().equals(dto.getId())){
	%>	
	<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="updateQna(<%=dto.getSeq() %>)">수정</button>
	
	<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="deleteQna(<%=dto.getSeq() %>)">삭제</button>
	<%
}

%>
<button type="button" class="btn btn-primary" style="background-color: #9A161F; border-color: #9A161F" onclick="backToList_Qna()">목록</button>

</div>
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

<%-- 
<form action="qnaCommentWriteAf.do" method="post">
<input type="hidden" name="comseq" value="<%=dto.getSeq() %>">
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
		<button type="submit" class="btn btn-primary btn-block p-4" style="background-color: #9A161F; border-color: #9A161F">등록</button>
	</td>
</tr>

</table>
</form>
 --%>
 
 
<table>
<col width="1500px"/><col width="150px"/>
<tr>
	<td>답변</td>
</tr> 
<tr>
	<td>
		<textarea rows="3" class="form-control" id="content"></textarea>
	</td>
	<td style="padding-left: 30px">
		<button type="button" onclick="answer(<%=dto.getSeq() %>, '<%=login.getUser_id() %>')" class="btn btn-primary btn-block p-4" style="background-color: #9A161F; border-color: #9A161F">등록</button>
	</td>
</tr>

</table>

 
 
<br/><br/>


<table class="table table-sm" style="width: 800px">
<tbody id="tbody"></tbody>
</table>

</div>
</div>


<script type="text/javascript">

$(document).ready(function () {
	
	<%-- $.ajax({
		url:"commentList.do",
		type:"get",
		data:{ seq:<%=dto.getSeq() %>  },
		success:function( list ){
			
			
			let loginId = "<%=login.getUser_id() %>";
			let dtoId = "<%=dto.getId() %>"; 
		
			
			$.each(list, function (i, item) {
				let str = "<tr id='tableReply'>";
				str += "<td style='color: #ffffff; background-color: #bf696f;'>작성자: " + item.id + "</td>";
				str += "<td style='color: #ffffff; background-color: #bf696f;'>작성일: " + item.wdate + "</td>";
				
				// 로그인한 사용자의 ID와 댓글 작성자의 ID가 일치하는 경우에만 삭제 버튼 표시
				 if (login != null && login.getUser_id().equals(dto.getId())) {
				if(loginId != '' && loginId === item.id){
					str += "<td><button class='deleteBtn' data-comment-id='" + item.seq + "'>x</button></td>";
				}
				}
				
				str += "<td>" + item.seq + "</td>" + "</tr>";
				str += "<tr>";
				str += "<td colspan='2' style='background-color: #f5f5f5;'>" + item.content + "</td>";			
				str += "</tr>";
				str += "<tr>";
				str += "<td colspan='2'>";								
				str += "</td>";			
				str += "</tr>";
				
				$("#tbody").append(str);
			});	

			
						
		},
		error:function(){
			alert('error');
		}		
	});	 --%>
	comment();
	
	// 삭제 버튼 클릭 이벤트 처리
	$(document).on("click", ".deleteBtn", function() {
	// $(".deleteBtn").on("click", function() {
		alert('deleteBtn');
		let seq = $(this).data("comment-id");
		alert(seq);
		deleteComment(seq);
	});
	
	function deleteComment(seq) {
		$.ajax({
			url: "commentDelete.do",
			type: "post",
			data: { seq: seq },
			success: function(response) {
				// 삭제가 성공하면 화면에서 해당 댓글을 제거
				$("#tbody").find("button[data-comment-id='" + seq + "']").closest("tr").remove();
			},
			error: function() {
				alert('error');
			}
		});
	}
});
	
	function comment() {
		$.ajax({
			url:"commentList.do",
			type:"get",
			data:{ seq:<%=dto.getSeq() %>  },
			success:function( list ){
				alert(JSON.stringify(list));
				
				let loginId = "<%=login.getUser_id() %>";
				let dtoId = "<%=dto.getId() %>"; 
			
				
				$.each(list, function (i, item) {
					let str = "<tr id='tableReply'>";
					str += "<td style='color: #ffffff; background-color: #bf696f;'>작성자: " + item.id + "</td>";
					str += "<td style='color: #ffffff; background-color: #bf696f;'>작성일: " + item.wdate + "</td>";
					
					// 로그인한 사용자의 ID와 댓글 작성자의 ID가 일치하는 경우에만 삭제 버튼 표시
					<%--  if (login != null && login.getUser_id().equals(dto.getId())) { --%>
					if(loginId != '' && loginId === item.id){
						str += "<td><button class='deleteBtn' data-comment-id='" + item.seq + "'>x</button></td>";
					}
					<%-- } --%>
					
					str += "<td>" + item.seq + "</td>" + "</tr>";
					str += "<tr>";
					str += "<td colspan='2' style='background-color: #f5f5f5;'>" + item.content + "</td>";			
					str += "</tr>";
					str += "<tr>";
					str += "<td colspan='2'>";								
					str += "</td>";			
					str += "</tr>";
					
					$("#tbody").append(str);
				});	

				
							
			},
			error:function(){
				alert('error');
			}		
		});	
	}
	
	function answer(comseq, id) {
		
		$.ajax({
			url:"qnaCommentWriteAf.do",
			type:"post",
			data:{ "comseq":comseq, "id":id, "content":$("#content").val() },
			success:function(data){
				alert("success");
				alert(data);
				comment();
			},
			error:function(){
				alert("error");
			}
		})
		
		
	}
	
</script>

</body>
</html>













