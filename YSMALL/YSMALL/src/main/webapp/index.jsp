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
	
	String topNumber;
	String topBrand;
	String topName;
	String topPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM top";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
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
	
	<div class="row">
	<div class="h4 text-center pb-2 mb-4 text-primary border-top border-bottom border-primary col m-4">
	  OUTER
	</div>
	</div>
	
	<div class="container">
	<div class="row">
<%


	
	String outerNumber;
	String outerBrand;
	String outerName;
	String outerPrice;
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM outer";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		
		for(int i=0; i<6; i++){
			rs.next();
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
</div>
</body>
</html>