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
<h1 class="w3ls">Sign In Form</h1>
<div class="content-w3ls">
	<div class="content-agile1">
		<h2 class="agileits1">Book</h2>
		<p class="agileits2">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
	</div>
	<div class="content-agile2">
		<form:form action="signin" modelAttribute="user">
			<div class="form-control w3layouts"> 
				<form:input type="text" id="firstname" name="firstname" placeholder="Login Name" title="Please enter your First Name" required="" path="UserName"/>
			</div>

			<div class="form-control agileinfo">	
				<form:input type="password" class="lock" name="password" placeholder="Password" id="password1" path="matKhau"/>
			</div>			
			<div class="form-control w3layouts"> 
				<p style="text-align: center; color: red;">${messageLogin}</p>
			</div>
			
			<input type="submit" class="register" style="margin-bottom: 10px" value="Login">
			<p style="padding-left: 95px;color: white; margin-top: 5px; margin-bottom: 30px; font-size: 14px"><a style="color: #00b9ff;" href="resetPassword">Quên mật khẩu</a></p>
		</form:form>
		<script type="text/javascript">
			window.onload = function () {
				document.getElementById("password1").onchange = validatePassword;
				document.getElementById("password2").onchange = validatePassword;
			}
			function validatePassword(){
				var pass2=document.getElementById("password2").value;
				var pass1=document.getElementById("password1").value;
				if(pass1!=pass2)
					document.getElementById("password2").setCustomValidity("Passwords Don't Match");
				else
					document.getElementById("password2").setCustomValidity('');	 
					//empty string means no validation error
			}
		</script>
		
		
		<ul class="social-agileinfo wthree2">
			<li><a href="#"><i class="fa fa-facebook"></i></a></li>
			<li><a href="#"><i class="fa fa-youtube"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
		</ul>
		<p style="text-align: center; color: white; margin-top: 30px">Bạn chưa có tài khoản? <a href="signup" style=" color: #00b9ff;font-weight: bold;">Tạo tài khoản</a></p>
	</div>
	<div class="clear"></div>
</div>
<p class="copyright w3l"> <a href="https://w3layouts.com/" target="_blank"></a></p>
</body>
</html>