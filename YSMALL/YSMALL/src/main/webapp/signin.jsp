<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include> 
   
<div class="container">
<main class="w-25 m-auto">
  <form>
    
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Account</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
    </div>

	<div class= "m-4">
    	<button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    </div>
  </form>
</main>
</div>
  
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>