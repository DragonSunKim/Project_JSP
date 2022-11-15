<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shoes Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String shoesNumber;
	String shoesBrand;
	String shoesName;
	String shoesPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM shoes";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()){
			shoesNumber = rs.getString("shoesNumber");
			shoesBrand = rs.getString("shoesBrand");
			shoesName = rs.getString("shoesName");
			shoesPrice = rs.getString("shoesPrice");
	
%>
			<div class="col-2">
				<div class="card" style="width: 18rem;">
					<a href="shoesAction.jsp?shoesNumber=<%= shoesNumber %>">
			  			<img src="shoes/<%= shoesNumber %>.JPG" class="card-img-top" alt="...">
			  		</a>
			  		<div class="card-body">
			    		<h5 class="card-title"><%= shoesBrand %></h5>
				    	<p class="card-text"><%= shoesName %></p>
				    	<p class="card-text text-primary"><%= shoesPrice %>원</p>
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