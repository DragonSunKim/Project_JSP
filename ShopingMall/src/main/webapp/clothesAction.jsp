<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link href="css/product.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<%
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	String clothesBrand = "";
	String clothesID = "";
	String clothesPrice = "";
	String clothesName = "";
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
		String n = request.getParameter("num");
		String sql = "SELECT * FROM clothes WHERE clothesID = '" + n + "'";
		
		psmt = conn.prepareStatement(sql);
		rs = psmt.executeQuery();
		rs.next();
		clothesBrand = rs.getString("clothesBrand");
		clothesID = rs.getString("clothesID");
		clothesPrice = rs.getString("clothesPrice");
		clothesName = rs.getString("clothesName");
	}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>


<main>
<!-- 	<div class="container"> -->
<!-- 		<div class = "grid text-center"> -->
<!-- 			<div class = "g-col-6 g-col-md-4">asd</div> -->
<!-- 			<div class = "g-col-6 g-col-md-4">asd</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="text-bg-dark me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
    <img src = clothes/clothes01.JPG>
      <div class="my-3 py-3">
<!--         <h2 class="display-5"> C 로고 맨투맨 멜란지 그레이</h2> -->
<!--         <p class="lead">And an even wittier subheading.</p> -->
      </div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 p-3">
      	<table border = "1" class= "table mx-auto fw-bold">
      		<thead>
      			<tr>
      				<td colspan= "2">제품 정보</td>
      			</tr>
      		</thead>
      		<tr>
      			<td scope = "row">브랜드</td>
      			<td><%= clothesBrand %></td>
      		</tr>
      		<tr>
      			<td scope = "row">상품번호</td>
      			<td><%= clothesID %></td>
      		</tr>
      		<tr>
      			<td scope="row">상품명</td>
      			<td><%= clothesName %></td>
      		</tr>
      		<tr>
      			<td scope="row">가격</td>
      			<td><%= clothesPrice %></td>
      		</tr> 		
         	</table>
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
  </div>


  <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
    <div class="col-md-5 p-lg-5 mx-auto my-5">
      <h1 class="display-4 fw-normal">Punny headline</h1>
      <p class="lead fw-normal">And an even wittier subheading to boot. Jumpstart your marketing efforts with this example based on Apple’s marketing pages.</p>
      <a class="btn btn-outline-secondary" href="#">Coming soon</a>
    </div>
  
  </div>


  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 p-3">
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="text-bg-primary me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 py-3">
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
  </div>

  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 p-3">
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 py-3">
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
  </div>

  <div class="d-md-flex flex-md-equal w-100 my-md-3 ps-md-3">
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 p-3">
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
    <div class="bg-light me-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
      <div class="my-3 py-3">
        <h2 class="display-5">Another headline</h2>
        <p class="lead">And an even wittier subheading.</p>
      </div>
      <div class="bg-body shadow-sm mx-auto" style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;"></div>
    </div>
  </div>
</main>

</body>
</html>