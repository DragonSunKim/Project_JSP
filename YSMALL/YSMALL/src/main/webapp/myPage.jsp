<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<table class="table table-striped">
		<thead>
			<tr>
				<th scope="col">orderNumber</th>
				<th scope="col">productNumber</th>
				<th scope="col">productName</th>
				<th scope="col">productPrice</th>
				<th scope="col">orderOption</th>
				<th scope="col">orderDate</th>
			</tr>
		</thead>
		<tbody>
<%
	Connection conn;
	PreparedStatement psmt1;
	PreparedStatement psmt2;
	ResultSet rs1;
	ResultSet rs2;
	String userId = session.getAttribute("sessionID").toString();
	String orderNumber;
	String productNumber;
	String orderOption;
	String orderDate;
	String productName;
	String productPrice;
	userId = userId.toLowerCase();
	try{
		conn = DatabaseUtil.getConnection();
		
		String sql1 = "select orderNumber, productNumber, orderOption, orderDate from orderTable where userId = ?";
		
		psmt1 = conn.prepareStatement(sql1);
		psmt1.setString(1, userId);
		rs1 = psmt1.executeQuery();
		
		while(rs1.next()){
			orderNumber = rs1.getString("orderNumber");
			productNumber= rs1.getString("productNumber");
			orderOption = rs1.getString("orderOption");
			orderDate = rs1.getString("orderDate");
			String sql2 = "select productName, productPrice from product where productNumber=?";
			
			psmt2 = conn.prepareStatement(sql2);
			psmt2.setString(1, productNumber);
			rs2 = psmt2.executeQuery();
			rs2.next();
			productName = rs2.getString("productName");
			productPrice = rs2.getString("productPrice");
			
			%>

				<tr>
					<th scope="row"><%= orderNumber %></th>
					<td><%= productNumber %></td>
					<td><%= productName %></td>
					<td><%= productPrice %></td>
					<td><%= orderOption %></td>
					<td><%= orderDate %></td>
				</tr>
			
				
			<%
		}
		
	} catch(Exception e){
		e.printStackTrace();
	}
%>
</tbody>
</table>
</div>
</body>
</html>