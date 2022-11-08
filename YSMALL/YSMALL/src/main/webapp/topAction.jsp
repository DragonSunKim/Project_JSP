<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>topAction Page</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	String topNumber = request.getParameter("topNumber");
	String topBrand= "";
	String topName= "";
	String topPrice= "";
	
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql = "SELECT * FROM top WHERE topNumber= '" + topNumber + "'";
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		topBrand = rs.getString("topBrand");
		topName = rs.getString("topName");
		topPrice = rs.getString("topPrice");
	} catch(Exception e){
		e.printStackTrace();
	}
%>
<div class="container">
	<div class="row">
		<div class="col">
		<img src="top/<%= topNumber %>.JPG" class="img-thumbnail" alt="...">
		</div>
		<div class="col align-self-center text-center">
			<table class="table">
			  <tbody>
			  	<tr>
			  		<td colspan="2"><h1>Product Information</h1></td>
			  	</tr>
			  	<tr>
			      <td>Product Number</td>
			      <td><%= topNumber %></td>
			    </tr>
			    <tr>
			      <td>Brand Name</td>
			      <td><%= topBrand %></td>
			    </tr>
			    <tr>
			      <td>Name</td>
			      <td><%= topName %></td>
			    </tr>
			    <tr>
			      <td>Price</td>
			      <td><%= topPrice %></td>
			    </tr>
			  </tbody>
			</table>
			<div class="border-bottom border-primary">
			</div>

<!-- 왜 안돼 시발 -->			
			<div class="dropdown m-4">
			  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
			    Dropdown button
			  </button>
			  <ul class="dropdown-menu">
			    <li><a class="dropdown-item" href="#">Action</a></li>
			    <li><a class="dropdown-item" href="#">Another action</a></li>
			    <li><a class="dropdown-item" href="#">Something else here</a></li>
			  </ul>
			</div>


			<div class="d-grid m-6">
				<button class="btn btn-primary type="button">주문하기</button>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>