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
	line-height: 40px;
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
        width: 700px;
        margin: 100px auto;
        border-collapse: collapse;
        border: none;
    
    }

.thh{
	line-height: 50px;
	

}

.btn {
    padding: 10px 40px;
    font-size: 16px;
    background: #a12a32;
    color: white;
}

</style>

</head>
<body>


<div class="center">

<form action="userUpdate.do" id="frm" method="post">
<br/>

<table class="table table-hover">
<tr>
	<th class="thh" colspan = 2 style="background: #a12a32; color: white; height: 60px; font-size: 25px;">
		회원정보
	</th>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<th>아이디</th>
	<td>
		<input type="text" class="form-control" name="user_id" id="user_id" size="20" value="<%= mylist.getUser_id()%>" readonly style="background:lightgray;">
	</td>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<th>패스워드</th>
	<td>
		<input type="text" class="form-control" name="user_pw" size="20" value="<%= mylist.getUser_pw()%>">
	</td>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<th>이름</th>
	<td>
		<input type="text" class="form-control" name="user_name" size="20" value="<%= mylist.getUser_name()%>">
	</td>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<th>전화번호</th>
	<td>
		<input type="text" class="form-control" name="user_phone" size="20" value="<%= mylist.getUser_phone()%>">
	</td>
</tr>
<tr >
	<th>주소</th>
	<td style="text-align: left;">
		<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" size="5" readonly style="background:lightgray; width:150px;">
		<br>
		<input type="button" class="btn btn-danger" onclick="sample6_execDaumPostcode()" size="20" value="우편번호 찾기" style="padding: 5px 20px;"><br><br>
		<input type="text" class="form-control" name="user_address" id="user_address" size="20" placeholder="주소" value="<%= mylist.getUser_address()%>">
		<input type="text" class="form-control"  name="user_address" id="user_address" size="20" placeholder="상세주소">
	</td>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<td colspan="2">
		<div align="center">
			<input type="submit" class="btn" value="수정">&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn"  onclick="deleteUser('<%=mylist.getUser_id()%>')">삭제</button>
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

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("user_address").value = extraAddr;
                
                } else {
                    document.getElementById("user_address").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("user_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("user_address").focus();
            }
        }).open();
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




