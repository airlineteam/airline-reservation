
<%@page import="com.landers.airline.dto.QnaDto"%> 
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.QnaDto"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
QnaDto dto = (QnaDto)request.getAttribute("dto");
UserDto login = (UserDto)session.getAttribute("login");

// 본인 QnA만 수정 가능 !
if ( login == null || !login.getUser_id().equals(dto.getId()) ) {
%>
    <script type="text/javascript">
        alert('본인 글만 수정할 수 있습니다!');
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
<title>QnA 수정</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>

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
  background: #c4474f;
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
}

</style>
</head>
<body>

<div class="center">
<br/>
<br/> <h2 style="text-align: left;">QnA 수정</h2> <br/>

<form action="qnaupdateAf.do" id="frm" method="get">
<input type="hidden" name="seq" value="<%=dto.getSeq() %>" >

<table class="table-fill">
<col width="100px"><col width="500px">

<tr>
	<th>아이디</th>
	<td>		
		<%=dto.getId() %>
		<input type="hidden" id="id" name="id" value="<%=dto.getId() %>">		
	</td>
</tr>
<tr>
	<th>카테고리</th>
	<td>		
		<%=dto.getCategory() %>
		<input type="hidden" id="category" name="category" value="<%=dto.getCategory() %>">		
	</td>
</tr>
<tr>
	<th class="align-middle">제목</th>
	<td>
		<input type="text" id="title" name="title" size="50px" class="form-control form-control-lg" value='<%=dto.getTitle() %>'>
	</td>
</tr>
<tr>	
	<td colspan="2">
		<textarea rows="18" id="content" name="content" class="form-control"><%=dto.getContent()  %></textarea>
	</td>
</tr>

    <tr style="border-left: 1px solid #fff; border-right: 1px solid #fff; border-bottom: 1px solid #fff">
        <td style="padding-top: 20px; padding-left: 46%; border-left: 1px solid #fff">
            <button type="button" class="btn btn-primary" style="width: 100px; background-color: #9A161F; border-color: #9A161F">수정 완료</button>
        </td>
    </tr>
</table>


<br/><br/><br/>


</form>
</div>

<script type="text/javascript">
$(document).ready(function() {	
	$("button").click(function() {		
		if($("#title").val().trim() == "" ){
			alert("제목을 기입해 주십시오");
			return;
		}else if($("#content").val().trim() == "" ){
			alert("내용을 기입해 주십시오");
			return;
		}else{
			$("#frm").submit();
		}		
	});	
});
</script>

</body>
</html>