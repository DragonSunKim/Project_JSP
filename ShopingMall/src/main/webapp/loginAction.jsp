<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "users.userDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="users.Users" scope="page"></jsp:useBean>
<jsp:setProperty name = "user" property = "userID"/>
<jsp:setProperty name = "user" property = "userPassword"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% // 자바 코드 삽입 
        userDAO userDAO = new userDAO();
        int result = userDAO.login(user.getUserID(), user.getUserPassword());
        if (result ==1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'main.jsp'");
            script.println("</script>");
        }
        else if (result == 0){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 틀립니다.')");
            script.println("history.back()");   //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -1){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('존재하지 않는 아이디입니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
        else if (result == -2){
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('DB 오류가 발생했습니다.')");
            script.println("history.back()");    //이전 페이지로 사용자를 보냄
            script.println("</script>");
        }
    %>
</body>
</html>