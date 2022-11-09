<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        <li class="nav-item"><a href="#" class="nav-link">OUTER</a></li>
        <li class="nav-item"><a href="#" class="nav-link">PANTS</a></li>
        <li class="nav-item"><a href="#" class="nav-link">SHOES</a></li>
        <li class="nav-item"><a href="#" class="nav-link">ACC</a></li>
        <button type="button" class="btn btn-primary" onclick="location.href='signin.jsp'">LOGIN</button>
      </ul>
    </header>
  </div>
</body>
</html>