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
<title>고객센터</title>

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
	background-color: #ffffff;
}
footer{	
	height: 100px;
	background-color: #eeeeee;
} 
</style>

</head>
<body>

<nav class="navbar navbar-light bg-light" style="background-color: #ffffff;">
  <div class="container-fluid">
    <a class="navbar-brand"></a>
    <form class="d-flex">
    
    	<!-- person icon -->
    	<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
		  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
		  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
		</svg>&nbsp;&nbsp;&nbsp;
		
	    <a href="#" onclick="NetFunnel_Action({action_id:'login'},'/web/common/login/')">로그인</a>&nbsp;&nbsp;&nbsp;
		<a href="/web/common/join/">회원가입</a>&nbsp;&nbsp;&nbsp;
		<a href="/content/common/customercenter/">고객센터</a>&nbsp;&nbsp;&nbsp;
    </form>
  </div>
</nav>

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
	
</footer>

</body>
</html>