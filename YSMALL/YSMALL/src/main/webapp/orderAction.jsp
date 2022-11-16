<%@page import="util.DatabaseUtil"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderAction Page</title>
</head>
<body>
<%	
	request.setCharacterEncoding("UTF-8");

	/* String userId = (String)session.getAttribute("sessionID"); */
	if(session.getAttribute("sessionID") == null){
		%>
		<script type="text/javascript">
			location.href = "signin.jsp";
		</script>
		<%} else{
	
		String userId = session.getAttribute("sessionID").toString();
		
		Connection conn;
		PreparedStatement psmt;
		String orderOption = request.getParameter("size");
		String productNumber = request.getParameter("productNumber");
		
		
	
 	try{
		conn = DatabaseUtil.getConnection();
		int idx = -1;
		String sql = "insert into orderTable values((select NVL(MAX(orderNumber), 0)+1 from orderTable), ?, ?, ?, SYSDATE)";
					 
		psmt = conn.prepareStatement(sql);
		psmt.setString(1, productNumber);
		psmt.setString(2, userId);
		psmt.setString(3, orderOption);
		
		idx = psmt.executeUpdate();
		
		if(idx == 1){
			%>
			 <script type="text/javascript">
				alert("주문이 완료되었습니다.");
				location.href = "index.jsp";
			</script>
			<%} else{
			%>
			 <script type="text/javascript">
				alert("주문 오류");
				window.history.back();
			</script>
			<% 
			}
		
	} catch(Exception e){
		e.printStackTrace();
	}

		}
%>
</body>
</html>