<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>shoesAction Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String shoesNumber = request.getParameter("shoesNumber");
	String shoesBrand= "";
	String shoesName= "";
	String shoesPrice= "";
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM shoes WHERE shoesNumber= '" + shoesNumber + "'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		shoesBrand = rs.getString("shoesBrand");
		shoesName = rs.getString("shoesName");
		shoesPrice = rs.getString("shoesPrice");
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<div class="container">
	<div class="row">
		<div class="col">
		<img src="shoes/<%= shoesNumber %>.JPG" class="img-thumbnail" alt="...">
		</div>
		<div class="col align-self-center text-center">
			<table class="table">
			  <tbody>
			  	<tr>
			  		<td colspan="2"><h1>Product Information</h1></td>
			  	</tr>
			  	<tr>
			      <td>Product Number</td>
			      <td><%= shoesNumber %></td>
			    </tr>
			    <tr>
			      <td>Brand Name</td>
			      <td><%= shoesBrand %></td>
			    </tr>
			    <tr>
			      <td>Name</td>
			      <td><%= shoesName %></td>
			    </tr>
			    <tr>
			      <td>Price</td>
			      <td><%= shoesPrice %></td>
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
							<option selected>Size</option>
							<option value="260">260</option>
							<option value="270">270</option>
							<option value="280">280</option>
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
