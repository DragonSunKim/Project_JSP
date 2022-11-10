<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signinAction Page</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("password");
	
	MemberDAO dao = MemberDAO.getInstance();
	int check = dao.loginCheck(id, pw);
	
	String msg = "";
	// 로그인 성공
	if(check == 1)
	{
		session.setAttribute("sessionID", id);
		msg = "index.jsp";
	}
	else if(check ==0) // 비밀번호가 틀릴경우
	{
		msg = "signin.jsp?msg=0";
	}
	else // 아이디가 틀릴경우
	{
		msg = "signin.jsp?msg=-1";
	}
	
	response.sendRedirect(msg);
	
%>
</body>
</html>