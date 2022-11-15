<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>acc Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String accNumber;
	String accBrand;
	String accName;
	String accPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM acc";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()){
			accNumber = rs.getString("accNumber");
			accBrand = rs.getString("accBrand");
			accName = rs.getString("accName");
			accPrice = rs.getString("accPrice");
	
%>
			<div class="col-2">
				<div class="card" style="width: 18rem;">
					<a href="accAction.jsp?accNumber=<%= accNumber %>">
			  			<img src="acc/<%= accNumber %>.JPG" class="card-img-top" alt="...">
			  		</a>
			  		<div class="card-body">
			    		<h5 class="card-title"><%= accBrand %></h5>
				    	<p class="card-text"><%= accName %></p>
				    	<p class="card-text text-primary"><%= accPrice %>원</p>
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