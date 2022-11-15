<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
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
	<!-- top -->
	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-top border-bottom border-primary col">
	  TOP
	</div>
	</div>
	
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
		
		String sql = "SELECT * FROM product where productNumber like 'T%'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
			productNumber = rs.getString("productNumber");
			productBrand = rs.getString("ProductBrand");
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
	
	<!-- outer -->
	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-top border-bottom border-primary col m-4">
	  OUTER
	</div>
	</div>
	
	<div class="container">
	<div class="row">
<%

	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM product where productNumber like 'O%'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
			productNumber = rs.getString("productNumber");
			productBrand = rs.getString("ProductBrand");
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

<!-- pants -->
	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-top border-bottom border-primary col m-4">
	  PANTS
	</div>
	</div>
	
	<div class="container">
	<div class="row">
<%

	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM product where productNumber like 'P%'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
			productNumber = rs.getString("productNumber");
			productBrand = rs.getString("ProductBrand");
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
	
	
	<!-- shoes -->
	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-top border-bottom border-primary col m-4">
	  SHOES
	</div>
	</div>
	
	<div class="container">
	<div class="row">
<%

	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM product where productNumber like 'S%'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
			productNumber = rs.getString("productNumber");
			productBrand = rs.getString("ProductBrand");
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
	
	
		<!-- acc -->
	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-top border-bottom border-primary col m-4">
	  ACC
	</div>
	</div>
	
	<div class="container">
	<div class="row">
<%

	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM product where productNumber like 'A%'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
			productNumber = rs.getString("productNumber");
			productBrand = rs.getString("ProductBrand");
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