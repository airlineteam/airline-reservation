<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.FaqParam"%>
<%@page import="util.BbsUtil"%>
<%@page import="com.landers.airline.dto.FaqDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	UserDto login = (UserDto)session.getAttribute("login");

	List<FaqDto> list = (List<FaqDto>)request.getAttribute("list");
	int pageFaq = (Integer)request.getAttribute("pageFaq");
	
	FaqParam param = (FaqParam)request.getAttribute("param");
	int pageNumber = param.getPageNumber();
	String choice = param.getChoice();	
	String search = param.getSearch();
	if(search == null || search.equals("")){
		search = "";
		choice = "start";
	}

%>    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript" src="./js/jquery.twbsPagination.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- pagination 색상 - 회색으로 변경 -->
<style>
.page-link {
  color: #000; 
  background-color: #fff;
  border: 1px solid #ccc; 
}

.page-item.active .page-link {
 z-index: 1;
 color: #555;
 font-weight:bold;
 background-color: #f1f1f1;
 border-color: #ccc;
 
}

.page-link:focus, .page-link:hover {
  color: #000;
  background-color: #fafafa; 
  border-color: #ccc;
}
</style>




<style type="text/css">
.center{
	margin: auto;
	width: 900px;
	text-align: center;
}
body {
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

.accordion {
  width: 900px;
  margin-left: 10px;
}

input[id*="faq_"] {
  display: none;
}

/* FAQ 질문창 */
input[id*="faq_"] + label {
  display: block;
  padding: 20px;
  border: 1px solid #232188;
  border-bottom: 0;
  color: #fff;
  font-weight: 900;
  background: #c4474f;
  cursor: pointer;
  position: relative;
}

input[id*="faq_"] + label em {
  position: absolute;
  top: 50%;
  right: 10px;
  width: 30px;
  height: 30px;
  margin-top: -15px;
  display: inline-block;
  background-image: url('images/caret-up-square.svg');
  background-size: 100%;
  transition: transform 0.5s; /* Added transition property */
}


#upBtn{
  position: absolute;
  top: 50%;
  right: 50px;
  width: 60px;
  height: 30px;
  margin-top: -15px;
  margin-right: 80px;
  display: inline-block;
  background-size: 100%;
}

#delBtn{
  position: absolute;
  top: 50%;
  right: 50px;
  width: 60px;
  height: 30px;
  margin-top: -15px;
  margin-left: 50px;
  display: inline-block;
  background-size: 100%;
}

input[id*="faq_"]:checked + label em {
  transform: rotate(180deg); /* Rotate arrow when checkbox is checked */
}

/* FAQ 설명란 */
input[id*="faq_"] + label + div {
  max-height: 0;
  transition: all 0.5s;
  overflow: hidden;
  background: #fff7f8;
  font-size: 16px;
}

input[id*="faq_"] + label + div pre {
  display: inline-block;
  padding: 20px;
  
}

input[id*="faq_"]:checked + label + div {
  max-height: 500px;
}
</style>

</head>
<body>

<br/>

<div class="center">
<br/> <h2 style="text-align: left;">자주 묻는 질문</h2> <br/>

<!--  
	<input type="checkbox" id="faq_999">
	<label for="faq_999">컨텐츠 제목 부분<em></em></label>
	<div><p>답변내용이 들어갈 자리인 부분</p></div>
-->
<div class="accordion">
<%
	for(int i = 0;i < list.size(); i++){
		FaqDto faq = list.get(i);
			if(faq.getDel() == 0){
				%>
				<input type="checkbox" name="accordion" id="faq_<%=i %>">
				<label for="faq_<%=i %>"><%=faq.getTitle() %>
				
				<em></em>
				
				<%if (login != null && login.getUser_role() == 0) {	%>
					 <button type="button" id="upBtn" class="btn btn-primary" onclick="updateFaq(<%=faq.getSeq() %>)" style="background-color: #9A161F; border-color: #9A161F">
				        수정
				     </button>
				     <button type="button" id="delBtn" class="btn btn-primary" onclick="deleteFaq(<%=faq.getSeq() %>)" style="background-color: #9A161F; border-color: #9A161F">
				        삭제
				     </button>
				<%} %>
				
				</label>
				<div><pre><%=faq.getContent() %></pre></div><br/>
				<%
			}
	}
%>
</div>
<br/><br/>

<%
if (login != null && login.getUser_role() == 0) {
	System.out.println(login.getUser_role());
%>	
    <button type="button" class="btn btn-primary" onclick="writeFaq()" style="background-color: #9A161F; border-color: #9A161F">
        글 추가
    </button>
<%
}
%>
</div>

<script type="text/javascript">
function writeFaq() {
	location.href = "faqwrite.do";
}
function updateFaq( seq ) {
	location.href = "faqupdate.do?seq=" + seq;
}
function deleteFaq( seq ) {
	location.href = "faqdelete.do?seq=" + seq;
}
</script>

<br/><br/><br/>
</body>
</html>





