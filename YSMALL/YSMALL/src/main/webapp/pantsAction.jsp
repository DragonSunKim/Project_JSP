<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pantsAction Page</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String pantsNumber = request.getParameter("pantsNumber");
	String pantsBrand= "";
	String pantsName= "";
	String pantsPrice= "";
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM pants WHERE pantsNumber= '" + pantsNumber + "'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		pantsBrand = rs.getString("pantsBrand");
		pantsName = rs.getString("pantsName");
		pantsPrice = rs.getString("pantsPrice");
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<div class="container">
	<div class="row">
		<div class="col">
		<img src="pants/<%= pantsNumber %>.JPG" class="img-thumbnail" alt="...">
		</div>
		<div class="col align-self-center text-center">
			<table class="table">
			  <tbody>
			  	<tr>
			  		<td colspan="2"><h1>Product Information</h1></td>
			  	</tr>
			  	<tr>
			      <td>Product Number</td>
			      <td><%= pantsNumber %></td>
			    </tr>
			    <tr>
			      <td>Brand Name</td>
			      <td><%= pantsBrand %></td>
			    </tr>
			    <tr>
			      <td>Name</td>
			      <td><%= pantsName %></td>
			    </tr>
			    <tr>
			      <td>Price</td>
			      <td><%= pantsPrice %></td>
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
							<option value="M">M</option>
							<option value="L">L</option>
							<option value="XL">XL</option>
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
