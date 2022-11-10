<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="member.MemberBean" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="memberBean" class="member.MemberBean" />
<jsp:setProperty property="*" name="memberBean" />

<%
	MemberDAO dao = MemberDAO.getInstance();
	dao.insertMember(memberBean);
%>

<div class="container text-center position-absolute top-50">

		<h1>회원가입을 축하드립니다.</h1>

</div>
</body>
</html>