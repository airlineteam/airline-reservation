<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@page import="com.landers.airline.dto.BbsParam"%>
<%@page import="util.BbsUtil"%>
<%@page import="com.landers.airline.dto.BbsDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	UserDto login = (UserDto)session.getAttribute("login");

	List<BbsDto> list = (List<BbsDto>)request.getAttribute("list");
	int pageBbs = (Integer)request.getAttribute("pageBbs");
	
	BbsParam param = (BbsParam)request.getAttribute("param");
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
<title>공지사항</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript" src="./js/jquery.twbsPagination.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<style type="text/css">
.center{
	margin: auto;
	width: 1000px;
	text-align: center;
}
th{
	background: #e0757d;
	color: white;
}
tr{
	line-height: 12px;
}

header, main, footer{
	margin: 0 auto;
	width: 1400px;
	text-align: center;
}
main{
	text-align: left;
}

header{	
	height: 100px;
	background-color: #ffffff;
}
footer{	
	height: 100px;
	background-color: #eeeeee;
} 

</style>

</head>
<body>

<header>
<a href="home.do">
      <img src="images/logo.png" style="height: 100px">
</a>
</header>

<nav>
	<jsp:include page="../navi.jsp" flush="false"/>
</nav>

<br/>

<div class="center">

<table class="table table-hover">
<col width="70"/><col width="550"/><col width="100"/><col width="200"/>
<thead>
	<tr>
		<th>번호</th><th>제목</th><th>조회수</th><th>등록일</th>
	</tr>
</thead>
<tbody>
<%
if(list == null || list.size() == 0){
	%>
	<tr>
		<td colspan="4">작성된 글이 없습니다</td>
	</tr>
	<%
}else{
	for(int i = 0;i < list.size(); i++){
		BbsDto bbs = list.get(i);
		%>
		<tr>
			<td><%=list.size() - i %></td>
			<td style="text-align: left;">
			<%
			if(bbs.getDel() == 0){
				%>			
				<a href="bbsdetail.do?seq=<%=bbs.getSeq() %>">
					<%=BbsUtil.arrow(bbs.getDepth()) %>
					<%=BbsUtil.dot3(bbs.getTitle()) %>
				</a>
				<%
			}else{
				%>	
				<%=BbsUtil.arrow(bbs.getDepth()) %>
				<font color="#ff0000">***** 이 글은 작성자에 의해서 삭제되었습니다 *****</font>	
				<%
			}
			%>
				
			</td>
			<td><%=bbs.getReadcount() %></td>
			<td><%=bbs.getWdate().substring(0, 10) %></td>
		</tr>		
		<%
	}
}
%>
</tbody>
</table>

<br/>

<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination" id="pagination" style="justify-content:center"></ul>
    </nav>
</div>


<br/>
<div class="form-row align-items-center d-flex justify-content-center align-items-center container">
	<select id="choice" class="form-control" style="width:auto;">
		<option value="start">검색</option>
		<option value="title">제목</option>
		<option value="content">내용</option>
	</select>
	
	<div class="col-sm-3 my-1" style="width:auto;">
		<input type="text" class="form-control" id="search" value="<%=search %>">
	</div>
	
	<button type="button" class="btn btn-primary" onclick="searchBtn()" style="background-color: #9A161F; border-color: #9A161F">
	검색
	</button><br/>
</div>

<%
if (login != null && login.getUser_role() == 0) {
	System.out.println(login.getUser_role());
%>	
    <button type="button" class="btn btn-primary" onclick="writeBbs()" style="background-color: #9A161F; border-color: #9A161F">
        글쓰기
    </button>
<%
}
%>
</div>

<script type="text/javascript">
function writeBbs() {
	location.href = "bbswrite.do";
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
	
	location.href = "bbslist.do?choice=" + choice + "&search=" + search;
}


$("#pagination").twbsPagination({
	startPage: <%=pageNumber+1 %>,
	totalPages: <%=pageBbs %>,
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
		
		location.href = "bbslist.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1);
	}	
});
</script>

</body>
</html>





