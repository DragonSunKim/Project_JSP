<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/product.css" rel="stylesheet">
</head>
<body>
<%-- <jsp:include page="header.jsp"></jsp:include> --%>
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
// 	String clothesBrand = "";
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
// 		String n = request.getParameter("num");
		String sql = "SELECT * FROM clothes WHERE clothesID = 'A001'";
		
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		
		%>
		<h1><%= rs.getString("clothesBrand") %></h1>
		<% 
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>




</body>
</html>