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
	width: 1000px;
	text-align: center;
}
body {
  font-family: "Roboto", helvetica, arial, sans-serif;
  font-size: 15px;
  font-weight: 300;
  text-rendering: optimizeLegibility;
}

.accordion {
  width: 1000px;
  margin-left: 10px;
}

input[id*="faq_"] {
  display: none;
}

input[id*="faq_"] + label {
  display: block;
  padding: 20px;
  border: 1px solid #232188;
  border-bottom: 0;
  color: #fff;
  font-weight: 900;
  background: #9a161f;
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
  background-image: url('images/faqarrow.png');
  background-size: 100%;
  transition: transform 0.35s; /* Added transition property */
}

input[id*="faq_"]:checked + label em {
  transform: rotate(180deg); /* Rotate arrow when checkbox is checked */
}

input[id*="faq_"] + label + div {
  max-height: 0;
  transition: all 0.35s;
  overflow: hidden;
  background: #ebf8ff;
  font-size: 15px;
  font-family: "Roboto", helvetica, arial, sans-serif;
}

input[id*="faq_"] + label + div p {
  display: inline-block;
  padding: 20px;
}

input[id*="faq_"]:checked + label + div {
  max-height: 100px;
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
				<label for="faq_<%=i %>"><%=faq.getTitle() %><em></em></label>
				<div><p><%=faq.getContent() %></p></div><br/>
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
        글쓰기
    </button>
<%
}
%>
</div>

<script type="text/javascript">
function writeFaq() {
	location.href = "faqwrite.do";
}

let search = "<%=search %>";
if(search != null){
	let choice = document.getElementById("choice");
	choice.value = "<%=choice %>";
	choice.setAttribute("selected", "selected");
}

function searchBtn() {
	let choice = document.getElementById("choice").value;
	let search = document.getElementById("search").value;
	
	location.href = "faqlist.do?choice=" + choice + "&search=" + search;
}


$("#pagination").twbsPagination({
	startPage: <%=pageNumber+1 %>,
	totalPages: <%=pageFaq %>,
	visiblePages: 10,
	first: '<span sris-hidden="true">«</span>',
	prev:"이전",
	next:"다음",
	last: '<span sris-hidden="true">»</span>',
	initiateStartPageClick:false,			// 처음 실행시에 자동실행이 되지 않도록 한다
	onPageClick:function(event, page){
		// alert(page);
		let choice = document.getElementById("choice").value;
		let search = document.getElementById("search").value;
		
		location.href = "faqlist.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1);
	}	
});
</script>

<br/><br/><br/>
</body>
</html>





