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

<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>

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

<div align="center">
<h2 style="color: #9A161F">login</h2>
</div>

<div class="center">

<form action="loginAf.do" method="post">
<br/>

<table class="table">
<tr>
	<th>아이디</th>
	<td>
		<input type="text" class="form-control" id="User_id" name="User_id" size="20">
	</td>
</tr>
<tr>
	<th>패스워드</th>
	<td>
		<input type="password" class="form-control" name="User_pw" size="20">
	</td>
</tr>
<tr>
	<td colspan="2">
		<div align="center">
			<input type="checkbox" id="chk_save_id">&nbsp;&nbsp;id 저장<br/>
			<br/>
			<span><input type="submit" class="btn btn-primary" value="login"></span>&nbsp;&nbsp;&nbsp;&nbsp;
			<span><a href="regi.do">회원가입</a></span>
		</div>
	</td>
</tr>

</table>
</form>
</div>

<script type="text/javascript">
let user_id = $.cookie("User_id");	// 쿠키에서 id를 산출
if(user_id != null){	// 쿠키에 저장한 id가 있다
	$("#User_id").val( User_id );
	$("#chk_save_id").prop("checked", true);
}

$("#chk_save_id").click(function () {
	
	if( $("#chk_save_id").is(":checked") == true ){	// 첵크가 되었을 때
		
		if( $("#id").val().trim() == "" ){	// 빈문자였을 때
			alert('User_id를 입력해 주십시오');
			$("#chk_save_id").prop("checked", false);	// 첵크박스를 off
		}
		else{	// cookie에 저장
			$.cookie("User_id", $("#User_id").val().trim(), { expires:7, path:'/' } );
		}		
	}
	else{
		$.removeCookie("User_id", { path:'/' });
	}		
});
</script>




</body>
</html>
