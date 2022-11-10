<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<script type="text/javascript">
function checkValue(){
	if(!document.memberInfo.id.value){
		alert("아이디를 입력하세요.");
		return false;
	}
	if(!document.memberInfo.password.value){
		alert("비밀번호를 입력하세요.");
		return false;
	}
	if(!document.memberInfo.name.value){
		alert("이름을 입력하세요.");
		return false;
	}
}
</script>

</head>
<body class="bg-light">
<jsp:include page="header.jsp"></jsp:include>

<div class="container w-50">
  <main>
    <div class="py-5">
		<h2>회원가입</h2>
    </div>

    <div class="row">

      <div class="col-md-7 col-lg-8">
        <form method="post" action="signupAction.jsp" name="memberInfo" onsubmit="return checkValue()">
          <div class="row g-3">
            <div class="col-sm-6">
              <label class="form-label">ID</label>
              <input type="text" class="form-control" name="id">
            </div>

            <div class="col-sm-6">
              <label class="form-label">Password</label>
              <input type="password" class="form-control" name="password">
            </div>

            <div class="col-12">
              <label class="form-label">name</label>
              <div>
              	<input type="text" class="form-control" name="name">
              </div>
            </div>


            <div class="col-12">
              <label class="form-label">Address</label>
              <input type="text" class="form-control" name="address">
            </div>


			<label class="form-label">Phone</label>
	            <div class="col-md-4">
	            	<input type="text" class="form-control" name="phone1">
	            </div>
	
	            <div class="col-md-4">
	            	<input type="text" class="form-control" name="phone2">
	            </div>
	
	            <div class="col-md-4">	
	            	<input type="text" class="form-control" name="phone3">
	            </div>

          </div>

          <hr class="my-4">
          <button class="w-100 btn btn-primary btn-lg" type="submit">Continue to SignUp</button>
        </form>
      </div>
    </div>
  </main>

</div>


</body>
</html>