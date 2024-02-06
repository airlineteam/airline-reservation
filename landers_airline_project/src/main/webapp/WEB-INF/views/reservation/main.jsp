<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String main = (String)request.getAttribute("main");
	if(main == null || main.equals("")){
		main = "home";
	}
%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
 
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

<style type="text/css">
/* body{
	margin: 0 auto;
	width: 1000px;
	text-align: center;
} */

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
	background-color: #eeeeee;
}
footer{	
	height: 100px;
	background-color: #eeeeee;
} 
</style>

</head>
<body>

<h1>수정</h1>

<header>
	<jsp:include page="header.jsp" flush="false"/>
</header>

<nav>
	<jsp:include page="navi.jsp" flush="false"/>
</nav>

<main>
	<jsp:include page='<%=main + ".jsp" %>' flush="false"/>
</main>

<footer>
	<jsp:include page="footer.jsp" flush="false"/>
</footer>

</body>
</html>