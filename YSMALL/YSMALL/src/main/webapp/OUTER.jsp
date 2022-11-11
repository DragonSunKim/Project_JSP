<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>outer Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String outerNumber;
	String outerBrand;
	String outerName;
	String outerPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM outer";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()){
			outerNumber = rs.getString("outerNumber");
			outerBrand = rs.getString("outerBrand");
			outerName = rs.getString("outerName");
			outerPrice = rs.getString("outerPrice");
	
%>
			<div class="col-2">
				<div class="card" style="width: 18rem;">
					<a href="topAction.jsp?topNumber=<%= outerNumber %>">
			  			<img src="outer/<%= outerNumber %>.JPG" class="card-img-top" alt="...">
			  		</a>
			  		<div class="card-body">
			    		<h5 class="card-title"><%= outerBrand %></h5>
				    	<p class="card-text"><%= outerName %></p>
				    	<p class="card-text text-primary"><%= outerPrice %>원</p>
			  		</div>
				</div>
			</div>
			<div class="col-2">
			</div>
			<%
		} 
	}catch(Exception e){
			e.printStackTrace();
		}
			%>
		</div>
	</div>

</body>
</html>