<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>accAction Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String accNumber = request.getParameter("accNumber");
	String accBrand= "";
	String accName= "";
	String accPrice= "";
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM acc WHERE accNumber= '" + accNumber + "'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		accBrand = rs.getString("accBrand");
		accName = rs.getString("accName");
		accPrice = rs.getString("accPrice");
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<div class="container">
	<div class="row">
		<div class="col">
		<img src="acc/<%= accNumber %>.JPG" class="img-thumbnail" alt="...">
		</div>
		<div class="col align-self-center text-center">
			<table class="table">
			  <tbody>
			  	<tr>
			  		<td colspan="2"><h1>Product Information</h1></td>
			  	</tr>
			  	<tr>
			      <td>Product Number</td>
			      <td><%= accNumber %></td>
			    </tr>
			    <tr>
			      <td>Brand Name</td>
			      <td><%= accBrand %></td>
			    </tr>
			    <tr>
			      <td>Name</td>
			      <td><%= accName %></td>
			    </tr>
			    <tr>
			      <td>Price</td>
			      <td><%= accPrice %></td>
			    </tr>
			  </tbody>
			</table>
			
			<div class="border-bottom border-primary m-4">
			</div>
			<form method="post" action="orderAction.jsp">
				<div class = "container">
				<div class= "row">
					<div class = "text-center col">
						<select class="form-select" name="size">
							<option selected>Free</option>
						</select>
					</div>
		
					<div class="col">
						<button class="btn btn-primary" type="submit">주문하기</button>
					</div>
				</div>
				</div>
			</form>
	</div>
</div>
</div>
