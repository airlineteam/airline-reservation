<%@page import="util.BbsUtil"%>
<%@page import="com.landers.airline.dto.ManagerQnaParam"%>
<%@page import="com.landers.airline.dto.ManagerQnaDto"%>
<%@page import="java.util.List"%>
<%@page import="com.landers.airline.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	UserDto login = (UserDto)session.getAttribute("login");

	List<ManagerQnaDto> list = (List<ManagerQnaDto>)request.getAttribute("list");
	int mpageQna = (Integer)request.getAttribute("mpageQna");
	
	ManagerQnaParam param = (ManagerQnaParam)request.getAttribute("param");
	int pageNumber = param.getPageNumber();
	String choice = param.getChoice();	
	String search = param.getSearch();
	if(search == null || search.equals("")){
		search = "";
		choice = "start";
	}

%>   
<html>
<head>
<link href="managercss/mqnalist.css" rel="stylesheet">

<meta charset="UTF-8">
<title>QnA</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script type="text/javascript" src="./js/jquery.twbsPagination.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


</head>
<body>

<br><br>

<table class="table-fill">

<thead>
	<tr>
		<th class="text-left">번호</th>
		<th class="text-left">제목</th>
		<th class="text-left">조회수</th>
		<th class="text-left">작성자</th>
		<th class="text-left">등록일</th>
	</tr>
</thead>
<tbody class="table-hover">
<%
if(list == null || list.size() == 0){
	%>
	<tr>
		<td class="text-left" colspan="4">작성된 글이 없습니다</td>
	</tr>
	<%
}else{
	for(int i = 0;i < list.size(); i++){
		ManagerQnaDto qna = list.get(i);
		%>
		<tr>
			<td class="text-left"><%=list.size() - i %></td>
			<td class="text-left" style="text-align: left;">
			<%
			if(qna.getDel() == 0){
				%>			
				<a href="mqnadetail.do?seq=<%=qna.getSeq() %>">
				<%
				if(qna.getDepth() == 0){
					%>	
					<!-- 카테고리 앞에 추가 [문의]제목~~ -->
					<span style="color: #9A161F; font-weight: bold;">[<%=qna.getCategory() %>]</span>
					<%}%>					
				
					<span style="color: #000000;">
					<%=BbsUtil.arrow(qna.getDepth()) %>
					<%=BbsUtil.dot3(qna.getTitle()) %>
					</span>		
					
					<!-- 답변완료 된 글 답변완료 표시 -->
					<span style="margin-left: 5px; margin-bottom: 5px">
					<%if(qna.getComplete() > 0){%>
					<img src="./images/answer_complete.png" style="width: 60px; height: 20px">
					<%}%>
					</span>	
				</a>
				<%
			}else{
				%>	
				<%=BbsUtil.arrow(qna.getDepth()) %>
				<font color="#9A161F">***** 이 글은 관리자에 의해서 삭제되었습니다 *****</font>	
				<%
			}
			%>
				
			</td>
			<td class="text-left"><%=qna.getReadcount() %></td>
			<td class="text-left"><%=qna.getId() %></td>
			<td class="text-left"><%=qna.getWdate().substring(0, 10) %></td>
		</tr>		
		<%
	}
}
%>
</tbody>
</table>

<br><br>

<div class="container">
    <nav aria-label="Page navigation" >
        <ul class="pagination" id="pagination" style="justify-content:center "></ul>
    </nav>
</div>

            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="form-row align-items-center d-flex justify-content-center align-items-center">
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
                            </button>
                        </div>
                    </div>
                </div>
            </div>
       


<%
if (login != null) {

}
%>
</div>

<script type="text/javascript">


let search = "<%=search %>";
if(search != null){
	let choice = document.getElementById("choice");
	choice.value = "<%=choice %>";
	choice.setAttribute("selected", "selected");
}

function searchBtn() {
	let choice = document.getElementById("choice").value;
	let search = document.getElementById("search").value;
	
	location.href = "mqnalist.do?choice=" + choice + "&search=" + search;
}


$("#pagination").twbsPagination({
	startPage: <%=pageNumber+1 %>,
	totalPages: <%=mpageQna %>,
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
		
		location.href = "mqnalist.do?choice=" + choice + "&search=" + search + "&pageNumber=" + (page-1);
	}	
});
</script>

</body>
</html>
