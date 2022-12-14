<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@700&display=swap" rel="stylesheet">
<style>
	body{
	font-family: 'Sunflower', sans-serif;
	}
</style>
</head>
<body>

<div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="index.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <img src="logo/Logo.JPG" width="60" height="60">
        <span class="fs-4">용선 쇼핑몰</span>
      </a>
      
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="top.jsp" class="nav-link" aria-current="page">TOP</a></li>
        <li class="nav-item"><a href="outer.jsp" class="nav-link">OUTER</a></li>
        <li class="nav-item"><a href="pants.jsp" class="nav-link">PANTS</a></li>
        <li class="nav-item"><a href="shoes.jsp" class="nav-link">SHOES</a></li>
        <li class="nav-item"><a href="acc.jsp" class="nav-link">ACC</a></li>
        <%
        	if(session.getAttribute("sessionID") == null){
        		%>
        		<button type="button" class="btn btn-primary" onclick="location.href='signin.jsp'">LOGIN</button>
        		<%
        	}
        	else{
        		%>
        		<button type="button" class="btn btn-primary m-2" onclick="location.href='logoutAction.jsp'">LOGOUT</button>
        		<button type="button" class="btn btn-primary m-2" onclick="location.href='myPage.jsp'">MyPage</button>
        		<%
        	}
        %>
        
      </ul>
    </header>
  </div>
<script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
</body>
</html>