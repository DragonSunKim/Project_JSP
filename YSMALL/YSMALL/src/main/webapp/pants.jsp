<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pants Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String pantsNumber;
	String pantsBrand;
	String pantsName;
	String pantsPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM pants";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		while(rs.next()){
			pantsNumber = rs.getString("pantsNumber");
			pantsBrand = rs.getString("pantsBrand");
			pantsName = rs.getString("pantsName");
			pantsPrice = rs.getString("pantsPrice");
	
%>
			<div class="col-2">
				<div class="card" style="width: 18rem;">
					<a href="pantsAction.jsp?pantsNumber=<%= pantsNumber %>">
			  			<img src="pants/<%= pantsNumber %>.JPG" class="card-img-top" alt="...">
			  		</a>
			  		<div class="card-body">
			    		<h5 class="card-title"><%= pantsBrand %></h5>
				    	<p class="card-text"><%= pantsName %></p>
				    	<p class="card-text text-primary"><%= pantsPrice %>원</p>
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