<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
		<div class="row">
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String topNumber;
	String topBrand;
	String topName;
	String topPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM top";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()){
			topNumber = rs.getString("topNumber");
			topBrand = rs.getString("topBrand");
			topName = rs.getString("topName");
			topPrice = rs.getString("topPrice");
	
%>
			<div class="col-2">
				<div class="card" style="width: 18rem;">
					<a href="topAction.jsp?topNumber=<%= topNumber %>">
			  			<img src="top/<%= topNumber %>.JPG" class="card-img-top" alt="...">
			  		</a>
			  		<div class="card-body">
			    		<h5 class="card-title"><%= topBrand %></h5>
				    	<p class="card-text"><%= topName %></p>
				    	<p class="card-text text-primary"><%= topPrice %>원</p>
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