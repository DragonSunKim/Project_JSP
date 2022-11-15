<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderAction Page</title>
</head>
<body>
<%
	if(session.getAttribute("sessionID") == null){
		response.sendRedirect("signin.jsp");
	}

/* 	request.setCharacterEncoding("UTF-8");
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;

	String size = request.getParameter("size"); */
	
	
%>
</body>
</html>