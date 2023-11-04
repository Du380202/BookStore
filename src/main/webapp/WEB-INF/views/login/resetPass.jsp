<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html lang="en">

<head>
<title>Official Signup Form Flat Responsive widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Official Signup Form Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- fonts -->
<link href="//fonts.googleapis.com/css?family=Raleway:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Monoton" rel="stylesheet">
<!-- /fonts -->
<!-- css -->
<link href="<c:url value="/ASSETS/Login/css/font-awesome.min.css"/>" rel="stylesheet" type="text/css" media="all" />
<link href="<c:url value="/ASSETS/Login/css/style.css"/>" rel='stylesheet' type='text/css' media="all" />
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.min.css">
<!-- /css -->
<style>
	.content-w3ls .content-agile2 {
		width: 50%;
	    float: left;
	    padding: 10% 0 0;
	}
</style>
</head>
<body>
<h1 class="w3ls">Reset Password</h1>

	<div class="content-agile2" style="
    background-color: #202123;
    width: 40%;
    margin: 0 auto 50px;
    padding: 0;">
		<form action="resetPassword" method="post" style="padding: 80px">
		
			<div class="form-control w3layouts"> 
				<input type="text" id="firstname" name="firstname" placeholder="Login Name" title="Please enter your First Name" required=""/>
			</div>

			<div class="form-control agileinfo">	
				<input type="text" class="lock" name="email" placeholder="Email" id="email"/>
			</div>			
			<div class="form-control w3layouts"> 
			</div>
			<p style="text-align: center; color: green;">${messageC}</p>
			<input type="submit" class="register" style="margin-bottom: 10px" value="Xác nhận">
			<p style="text-align: center; color: white; margin-top: 30px"><a href="signin" style=" color: #00b9ff;font-weight: bold;">Đăng nhập</a></p>
			
		</form>
		
	</div>
	<div class="clear"></div>
<p class="copyright w3l"> <a href="https://w3layouts.com/" target="_blank"></a></p>

</body>
</html>