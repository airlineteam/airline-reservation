<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.landers.airline.dto.UserDto"%>

<% UserDto mylist = (UserDto)request.getAttribute("mylist"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
.center{
	width: 100%;
	text-align: center;
}
th{
	background: #e0757d;
	color: white;
	border: none;
}
tr{
	line-height: 12px;
	border: none;
}
td{
	line-height: 12px;
	border: none;
}
.table {
        width: 500px;
        margin: 100px auto;
        border-collapse: collapse;
        border: none;
    
    }

.thh{
	line-height: 30px;
}



</style>

</head>
<body>


<div class="center">

<form action="userUpdate.do" id="frm" method="post">
<br/>

<table class="table table-hover">
<tr>
	<th class="thh" colspan = 2 style="background: rgb(220,53,69); color: white;">
		회원정보
	</th>
</tr>
<tr>
	<th>아이디</th>
	<td>
		<input type="text" class="form-control" name="user_id" id="user_id" size="20" value="<%= mylist.getUser_id()%>" readonly style="background:#a0a0a0;">
	</td>
</tr>
<tr>
	<th>패스워드</th>
	<td>
		<input type="text" class="form-control" name="user_pw" size="20" value="<%= mylist.getUser_pw()%>">
	</td>
</tr>
<tr>
	<th>이름</th>
	<td>
		<input type="text" class="form-control" name="user_name" size="20" value="<%= mylist.getUser_name()%>">
	</td>
</tr>
<tr>
	<th>전화번호</th>
	<td>
		<input type="text" class="form-control" name="user_phone" size="20" value="<%= mylist.getUser_phone()%>">
	</td>
</tr>
<tr>
	<th>주소</th>
	<td>
		<input type="text" class="form-control" name="user_address" size="20" value="<%= mylist.getUser_address()%>">
	</td>
</tr>
<tr>
	<td colspan="2">
		<div align="center">
			<input type="submit" class="btn btn-danger" value="수정">
			<button type="button" class="btn btn-danger"  onclick="deleteUser('<%=mylist.getUser_id()%>')">삭제</button>
		</div>
	</td>
</tr>
</table>


</form>
</div>



<script type="text/javascript">

function deleteUser(user_id) {
	location.href = "userDelete.do?user_id=" + user_id;
}
</script>

<script type="text/javascript">

$(document).ready(function () {
	
	$("#id_chk_btn").click(function () {
		
		// id 빈칸 조사
		
		// id 글자의 갯수 ?글자수 이상
		
		// id 규칙 : 대소문자 포함 + 특수기호		카카오API, 구글API, 네이버API
				
		// id 가 사용중?
		$.ajax({
			url:"idcheck.do",
			type:"get",
			data:{ "user_id":$("#user_id").val() },
			success:function(msg){
				// alert('success');
				if(msg === "YES"){
					$("#idcheck").css("color", "#0000ff");
					$("#idcheck").text("사용할 수 있는 아이디입니다");
				}else{
					$("#idcheck").css("color", "#ff0000");
					$("#idcheck").text("사용중인 아이디입니다");
					$("#User_id").val("");
				}
			},
			error:function(){
				alert('error');
			}
		});				
	});		
	
	$("#regibtn").click(function () {
		
		// 빈칸들을 조사
		// id, pw, name
		
		
		$("#frm").submit();
	});
	
});
</script>

</body>
</html>




