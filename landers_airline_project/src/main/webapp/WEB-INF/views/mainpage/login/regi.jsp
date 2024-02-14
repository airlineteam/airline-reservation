<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<style type="text/css">
.center{
	margin: auto;
	width: 400px;
	border: 1px solid #a1a1a1;
	padding: 10px;
	border-radius: 30px;
}
</style>

</head>
<body>

<h2>회원가입</h2>

<div class="center">

<form action="regiAf.do" id="frm" method="post">
<br/>

<table class="table">
<tr>
	<th>아이디</th>
	<td>
		<input type="text" class="form-control" name="user_id" id="user_id" size="20">
		<p id="idcheck" style="font-size: 10px"></p>
		<input type="button" class="btn btn-danger" id="id_chk_btn" value="id확인">		
	</td>
</tr>
<tr>
	<th>패스워드</th>
	<td>
		<input type="text" class="form-control" name="user_pw" size="20">
	</td>
</tr>
<tr>
	<th>이름</th>
	<td>
		<input type="text" class="form-control" name="user_name" size="20">
	</td>
</tr>
<tr>
	<th>전화번호</th>
	<td>
		<input type="text" class="form-control" name="user_phone" size="20">
	</td>
</tr>
<tr>
	<th>주소</th>
	<td>
		<input type="text" class="form-control" name="user_address" size="20">
	</td>
</tr>
<tr>
	<td colspan="2">
		<div align="center">
			<input type="button" id="regibtn" class="btn btn-danger" value="회원가입">
		</div>
	</td>
</tr>
</table>
</form>
</div>

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




