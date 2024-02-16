<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<link href="logincss/regi.css" rel="stylesheet">

<form action="regiAf.do" id="frm" method="post">
<br/>

<table class="table">
<tr>
	<th colspan = 2 style="background: #9A161F; color: white; text-align:center; font-size:20px">
		회원가입
	</th>
</tr>
<tr  style="border-bottom: 1px solid #ccc;">
	<th>아이디</th>
	<td>
		<input type="text" class="form-control" name="user_id" id="user_id" size="20" style="width:200px;">
		<p id="idcheck" style="font-size: 10px"></p>
		<input type="button" class="btn btn-danger" id="id_chk_btn" value="id확인">		
	</td>
</tr>
<tr>
	<th>패스워드</th>
	<td>
		<input type="password" class="form-control" name="user_pw" id="user_pw" size="20" style="width:200px;">
	</td>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<th>패스워드 확인</th>
	<td>
		<input type="password" class="form-control" name="user_pw2" id="user_pw2" size="20" style="width:200px;" onkeyup="passConfrim()"><br>
		<span id ="confirmMsg"></span>
	</td>
</tr>
<tr  style="border-bottom: 1px solid #ccc;">
	<th>이름</th>
	<td>
		<input type="text" class="form-control" name="user_name" id="user_name" size="20" style="width:200px;">
	</td>
</tr>
<tr  style="border-bottom: 1px solid #ccc;">
	<th>전화번호</th>
	<td>
		<input type="text" class="form-control" name="user_phone" id="user_phone" size="20" style="width:200px;">
	</td>
</tr>
<tr >
	<th>주소</th>
	<td>
		<!-- <input type="text" class="form-control" name="user_address" id="user_address" size="20" style="width:200px;"> -->
		<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" size="20" readonly style="background:lightgray; width:150px;">
		<br>
		<input type="button" class="btn btn-danger" onclick="sample6_execDaumPostcode()" size="20" value="우편번호 찾기" style="padding: 5px 20px;"><br><br>
		<input type="text" class="form-control" name="user_address" id="user_address" size="20" placeholder="주소">
		<input type="text" class="form-control"  name="user_address" id="user_address" size="20" placeholder="상세주소">
	</td>
</tr>
<tr style="border-bottom: 1px solid #ccc;">
	<td colspan="2">
		<div align="center">
			<input type="button" id="regibtn" class="btn btn-danger" value="회원가입">
		</div>
	</td>
</tr>
</table>
</form>
<!-- </div> -->

<script>
	/* 자바 스크립트 함수 선언(비밀번호 확인) */

	function passConfrim() {
	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */	
	
		var user_pw = document.getElementById('user_pw');					//비밀번호 
		var user_pw2 = document.getElementById('user_pw2');	//비밀번호 확인 값
		var confrimMsg = document.getElementById('confirmMsg');				//확인 메세지
		var correctColor = "royalblue";	//맞았을 때 출력되는 색깔.
		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
		
		if(user_pw.value == user_pw2.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
		}else{
			confirmMsg.style.color = wrongColor;
			confirmMsg.innerHTML ="비밀번호 불일치";
		}
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
			data:{ "User_id":$("#user_id").val() },
			success:function(msg){
				/* alert('success'); */
				if(msg === "YES"){
					$("#idcheck").css("color", "#0000ff");
					$("#idcheck").text("사용할 수 있는 아이디입니다");
				}else{
					$("#idcheck").css("color", "#ff0000");
					$("#idcheck").text("사용중인 아이디입니다");
					$("#user_id").val("");
				}
			},
			error:function(){
				alert('error');
			}
		});				
	});		
	
	$("#regibtn").on("click", function () {
		if( $("#user_id").val().trim() === "" ){
            alert("아이디를 넣어주세요");
            return false; // 페이지 넘기지 않음
        }else if( $("#user_pw").val().trim() === "" ){
            alert("비밀번호를 넣어주세요");
            return false; // 페이지 넘기지 않음
        }else if( $("#user_address").val().trim() === "" ){
            alert("비밀번호 확인은 필수입니다.");
            return false; // 페이지 넘기지 않음
        }else if( $("#user_name").val().trim() === "" ){
            alert("이름을 넣어주세요");
            return false; // 페이지 넘기지 않음
        }else if( $("#user_phone").val().trim() === "" ){
            alert("전화번호를 넣어주세요");
            return false; // 페이지 넘기지 않음
        }else if( $("#user_address").val().trim() === "" ){
            alert("주소를 넣어주세요");
            return false; // 페이지 넘기지 않음
        }
		
		$("#frm").submit();
	});
	
});


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

<!-- </body>
</html> -->




