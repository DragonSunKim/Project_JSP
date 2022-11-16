<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productAction Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String productNumber = request.getParameter("productNumber");
	String productBrand= "";
	String productName= "";
	String productPrice= "";
	String category="";
	if(productNumber.substring(0,1).equals("T"))
		category = "top";
	else if(productNumber.substring(0,1).equals("P"))
		category = "pants";
	else if(productNumber.substring(0,1).equals("O"))
		category = "outer";
	else if(productNumber.substring(0,1).equals("S"))
		category = "shoes";
	else if(productNumber.substring(0,1).equals("A"))
		category = "acc";
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM product WHERE productNumber= '" + productNumber + "'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		productBrand = rs.getString("productBrand");
		productName = rs.getString("productName");
		productPrice = rs.getString("productPrice");
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<div class="container">
	<div class="row">
		<div class="col">
		<img src="product/<%= productNumber %>.JPG" class="img-thumbnail" alt="...">
		</div>
		<div class="col align-self-center text-center">
			<table class="table">
			  <tbody>
			  	<tr>
			  		<td colspan="2"><h1>Product Information</h1></td>
			  	</tr>
			  	<tr>
			      <td>Product Number</td>
			      <td><%= productNumber %></td>
			    </tr>
			    <tr>
			      <td>Brand Name</td>
			      <td><%= productBrand %></td>
			    </tr>
			    <tr>
			      <td>Name</td>
			      <td><%= productName %></td>
			    </tr>
			    <tr>
			      <td>Price</td>
			      <td><%= productPrice %></td>
			    </tr>
			  </tbody>
			</table>
			
			<div class="border-bottom border-primary m-4">
			</div>
			<form method="post" action="orderAction.jsp?productNumber=<%= productNumber %>">
				<div class = "container">
				<div class= "row">
					<div class = "text-center col">
					<%
						if(category.equals("top") || category.equals("pants") || category.equals("outer")){
					%>
						<select class="form-select" name="size">
							
							<option value="M">M</option>
							<option value="L">L</option>
							<option value="XL">XL</option>
						</select>
					<%
						} else if(category.equals("shoes")){	
					%>
						<select class="form-select" name="size">
							<option value="260">260</option>
							<option value="270">270</option>
							<option value="280">280</option>
						</select>
					<%
						} else if(category.equals("acc")){
					%>
					<select class="form-select" name="size">
							<option selected>Free</option>
						</select>
					<%
						}
					%>
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

</body>
</html>