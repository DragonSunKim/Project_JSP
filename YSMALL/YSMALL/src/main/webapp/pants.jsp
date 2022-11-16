<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pants page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String productNumber;
	String productBrand;
	String productName;
	String productPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM product where productNumber like 'P%'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()){
			productNumber = rs.getString("productNumber");
			productBrand = rs.getString("productBrand");
			productName = rs.getString("productName");
			productPrice = rs.getString("productPrice");
	
%>
			<div class="col-2">
				<div class="card" style="width: 18rem;">
					<a href="productAction.jsp?productNumber=<%= productNumber %>">
			  			<img src="product/<%= productNumber %>.JPG" class="card-img-top" alt="...">
			  		</a>
			  		<div class="card-body">
			    		<h5 class="card-title"><%= productBrand %></h5>
				    	<p class="card-text"><%= productName %></p>
				    	<p class="card-text text-primary"><%= productPrice %>원</p>
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