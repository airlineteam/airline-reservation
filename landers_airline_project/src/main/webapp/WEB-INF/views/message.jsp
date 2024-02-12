<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
// 회원가입
String regiMsg = (String)request.getAttribute("regiMsg");
if(regiMsg != null && regiMsg.equals("") == false){
	if(regiMsg.equals("USER_YES")){
		%>
		<script type="text/javascript">
		alert("성공적으로 가입되었습니다");
		location.href = "./home.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">	
		alert("다시 가입해 주십시오");
		location.href = "./regi.do";
		</script>
		<%
	}
}

// 로그인
String loginMsg = (String)request.getAttribute("loginMsg");
if(loginMsg != null && loginMsg.equals("") == false){
	if(loginMsg.equals("LOGIN_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("로그인되었습니다");
		location.href = "./home.do";
		</script>
		<%		
	}else{
		%>
		<script type="text/javascript">
		alert("아이디나 패스워드를 확인해 주세요");
		location.href = "./login.do";
		</script>
		<%		
	}	
}

// 공지사항 글추가
String bbswriteMsg = (String)request.getAttribute("bbswriteMsg");
if(bbswriteMsg != null && bbswriteMsg.equals("") == false){
	if(bbswriteMsg.equals("BBSWRITE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("성공적으로 추가되었습니다");
		location.href = "./bbslist.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		location.href = "./bbswrite.do;
		</script>
		<%
	}
}

//	FAQ 글추가
String faqwriteMsg = (String)request.getAttribute("faqwriteMsg");
if(faqwriteMsg != null && faqwriteMsg.equals("") == false){
	if(faqwriteMsg.equals("FAQWRITE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("성공적으로 추가되었습니다");
		location.href = "./faqlist.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("다시 작성해 주십시오");
		location.href = "./faqwrite.do;
		</script>
		<%
	}
}

// QnA 글추가
String qnawriteMsg = (String)request.getAttribute("qnawriteMsg");
if(qnawriteMsg != null && qnawriteMsg.equals("") == false){
if(qnawriteMsg.equals("QNAWRITE_SUCCESS")){
	%>
	<script type="text/javascript">
	alert("성공적으로 추가되었습니다");
	location.href = "./qnalist.do";
	</script>
	<%
}else{
	%>
	<script type="text/javascript">
	alert("다시 작성해 주십시오");
	location.href = "./qnawrite.do;
	</script>
	<%
}
}

// 공지사항 답글
String answerMsg = (String)request.getAttribute("answerMsg");
if(answerMsg != null && answerMsg.equals("") == false){
	if(answerMsg.equals("ANSWER_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("답글이 성공적으로 추가되었습니다");
		location.href = "./bbslist.do";
		</script>
		<%
	}else{
		Integer seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("답글을 다시 작성해 주십시오");
		location.href = "./bbsanswer.do?seq=" + seq;
		</script>
		<%
	}
}

//	FAQ 답글
String faqanswerMsg = (String)request.getAttribute("faqanswerMsg");
if(faqanswerMsg != null && faqanswerMsg.equals("") == false){
	if(faqanswerMsg.equals("ANSWER_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("답글이 성공적으로 추가되었습니다");
		location.href = "./faqlist.do";
		</script>
		<%
	}else{
		Integer seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("답글을 다시 작성해 주십시오");
		location.href = "./faqanswer.do?seq=" + seq;
		</script>
		<%
	}
}

// QnA 답글
String qnaanswerMsg = (String)request.getAttribute("qnaanswerMsg");
if(qnaanswerMsg != null && qnaanswerMsg.equals("") == false){
if(qnaanswerMsg.equals("ANSWER_SUCCESS")){
	%>
	<script type="text/javascript">
	alert("답글이 성공적으로 추가되었습니다");
	location.href = "./qnalist.do";
	</script>
	<%
}else{
	Integer seq = (Integer)request.getAttribute("seq");
	%>
	<script type="text/javascript">
	alert("답글을 다시 작성해 주십시오");
	location.href = "./qnaanswer.do?seq=" + seq;
	</script>
	<%
}
}

// 공지사항 글수정
String bbsupdateMsg = (String)request.getAttribute("bbsupdateMsg");
if(bbsupdateMsg != null && bbsupdateMsg.equals("") == false){
	if(bbsupdateMsg.equals("UPDATE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("글이 성공적으로 수정되었습니다");
		location.href = "./bbslist.do";
		</script>
		<%
	}else{
		Integer seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("글을 다시 수정해 주십시오");
		location.href = "./bbsupdate.do?seq=" + <%=seq %>;
		</script>
		<%
	}
}

//	FAQ 글수정
String faqupdateMsg = (String)request.getAttribute("faqupdateMsg");
if(faqupdateMsg != null && faqupdateMsg.equals("") == false){
	if(faqupdateMsg.equals("UPDATE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("글이 성공적으로 수정되었습니다");
		location.href = "./faqlist.do";
		</script>
		<%
	}else{
		Integer seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("글을 다시 수정해 주십시오");
		location.href = "./faqupdate.do?seq=" + <%=seq %>;
		</script>
		<%
	}
}

// QnA 글수정
String qnaupdateMsg = (String)request.getAttribute("qnaupdateMsg");
if(qnaupdateMsg != null && qnaupdateMsg.equals("") == false){
if(qnaupdateMsg.equals("UPDATE_SUCCESS")){
	%>
	<script type="text/javascript">
	alert("글이 성공적으로 수정되었습니다");
	location.href = "./qnalist.do";
	</script>
	<%
}else{
	Integer seq = (Integer)request.getAttribute("seq");
	%>
	<script type="text/javascript">
	alert("글을 다시 수정해 주십시오");
	location.href = "./qnaupdate.do?seq=" + <%=seq %>;
	</script>
	<%
}
}

// 공지사항 글 삭제
String bbsdeleteMsg = (String)request.getAttribute("bbsdeleteMsg");
if(bbsdeleteMsg != null && bbsdeleteMsg.equals("") == false){
	if(bbsdeleteMsg.equals("DELETE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("글이 성공적으로 삭제되었습니다");
		location.href = "./bbslist.do";
		</script>
		<%
	}else{
		Integer seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("글이 삭제되지 않았습니다");
		location.href = "./bbslist.do?seq=" + <%=seq %>;
		</script>
		<%
	}	
}

//	FAQ 글 삭제
String faqdeleteMsg = (String)request.getAttribute("faqdeleteMsg");
if(faqdeleteMsg != null && faqdeleteMsg.equals("") == false){
	if(faqdeleteMsg.equals("DELETE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("글이 성공적으로 삭제되었습니다");
		location.href = "./faqlist.do";
		</script>
		<%
	}else{
		Integer seq = (Integer)request.getAttribute("seq");
		%>
		<script type="text/javascript">
		alert("글이 삭제되지 않았습니다");
		location.href = "./faqlist.do?seq=" + <%=seq %>;
		</script>
		<%
	}	
}

// QnA 글 삭제
String qnadeleteMsg = (String)request.getAttribute("qnadeleteMsg");
if(qnadeleteMsg != null && qnadeleteMsg.equals("") == false){
if(qnadeleteMsg.equals("DELETE_SUCCESS")){
	%>
	<script type="text/javascript">
	alert("글이 성공적으로 삭제되었습니다");
	location.href = "./qnalist.do";
	</script>
	<%
}else{
	Integer seq = (Integer)request.getAttribute("seq");
	%>
	<script type="text/javascript">
	alert("글이 삭제되지 않았습니다");
	location.href = "./qnalist.do?seq=" + <%=seq %>;
	</script>
	<%
}	
}

String scheduleMsg  = (String)request.getAttribute("scheduleMsg");
if(scheduleMsg != null && !scheduleMsg.equals("")){
	if(scheduleMsg.equals("SCHEDULE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("조회되었습니다.");
		location.href = "info.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("조회되지 않았습니다.");		
		location.href = "schedule.do";
		</script>
		<%
	}	
}

String calupdate = (String)request.getAttribute("calupdate");
if(calupdate != null && !calupdate.equals("")){
	if(calupdate.equals("CAL_UPDATE_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 수정되었습니다");
		location.href = "calendar?param=calendarList";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("수정되지 않았습니다");		
		location.href = "calendar?param=calendarList";
		</script>
		<%
	}	
}

String caldelete = (String)request.getAttribute("caldelete");
if(caldelete != null && !caldelete.equals("")){
	if(caldelete.equals("CAL_DELETE_OK")){
		%>
		<script type="text/javascript">
		alert("성공적으로 삭제되었습니다");
		location.href = "calendar?param=calendarList";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("삭제되지 않았습니다");		
		location.href = "calendar?param=calendarList";
		</script>
		<%
	}	
}

String deleteUser = (String)request.getAttribute("deleteUser");
if(deleteUser != null && !deleteUser.equals("")){
	if(deleteUser.equals("DELETEUSER_YES")){
		%>
		<script type="text/javascript">
		alert("성공적으로 삭제되었습니다");
		location.href = "./MemberManager.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("삭제되지 않았습니다");		
		location.href = "./MemberManager.do";
		</script>
		<%
	}	
}


String refundAf = (String)request.getAttribute("refundAf");
if(refundAf != null && !refundAf.equals("")){
	if(refundAf.equals("REFUND_YES")){
		%>
		<script type="text/javascript">
		alert("성공적으로 승인되었습니다");
		location.href = "./refundManager.do";
		</script>
		<%
	}
	else{
		%>
		<script type="text/javascript">
		alert("승인되지 않았습니다");		
		location.href = "./refundManager.do";
		</script>
		<%
	}	
}

//회원수정
String updateMsg = (String)request.getAttribute("updateMsg");
if(updateMsg != null && updateMsg.equals("") == false){
	if(updateMsg.equals("UPDATE_SUCCESS")){
		%>
		<script type="text/javascript">
		alert("회원 수정되었습니다");
		location.href = "./login.do";
		</script>
		<%
	}else{
		%>
		<script type="text/javascript">
		alert("회원수정 실패");
		location.href = "./userUpdate.do;
		</script>
		<%
	}
}



%>











