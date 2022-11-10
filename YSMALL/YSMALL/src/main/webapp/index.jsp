<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="container">
<%
	if(session.getAttribute("sessionID") != null){
		%>
	<div class="row">
	<div class="col text-end h2 text-success">
		<%= session.getAttribute("sessionID") %>님 로그인중
	</div>
	</div>
		<%
	}
%>

	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-bottom border-primary col">
	  TOP
	</div>
	</div>
</div>
</body>
</html>