<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignIn Page</title>
<script type="text/javascript">
	function checkValue()
	{
		if(!document.signinInfo.id.value){
			alert("아이디를 입력하세요.");
			document.signinInfo.id.focus();
			return false;
		}
		if(!document.signinInfo.password.value){
			alert("비밀번호를 입력하세요.");
			document.signinInfo.password.focus();
			return false;
		}
	}
</script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include> 
   
<div class="container">
<main class="w-25 m-auto">
  <form name="signinInfo" method="post" action="signinAction.jsp" onsubmit="return checkValue()">
    
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input type="text" class="form-control" name="id">
      <label for="floatingInput">Account</label>
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password">
      <label for="floatingPassword">Password</label>
    </div>

	<div class= "m-4">
    	<button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    </div>
  </form>
  <div class= "m-4">
  	<button class="w-100 btn btn-lg btn-primary" onclick="location.href='signup.jsp'">Sign up</button>
  </div>
</main>
</div>
<%
	String msg = request.getParameter("msg");
    
    if(msg!=null && msg.equals("0")){
    	%>
    	<script type="text/javascript">
    		alert("비밀번호를 확인해 주세요.");
    	</script>
    	<% 
    }
    
    else if(msg!=null && msg.equals("-1"))
    {
    	%>
    	<script type="text/javascript">
    		alert("아이디를 확인해 주세요.");
    	</script>
    	<% 
    }
%>
</body>
</html>