<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<c:url value="/ASSETS/css/form.css"/>">
    <title>Survey Form</title>
</head>
<body>
    <div class="container ">
        <header class="header">
            <h1 id="title">
                Thank you 
            </h1>
            <p id="description">
            </p>
        </header>
            <!-- radio button section -->
          
            <!-- End of checkbox section -->

            <!-- Textarea section -->
            <div class="form-group">
               
            </div>
            <div class="form-group">
                <button type="submit" id="submit" class="btn">Thể loại sách dành cho bạn là:
                 <a href="listCategory?id=${recoment.getIdTheLoai()}" style="font-weight: bold;color: #0029ff;">${recoment.getTenTheLoai()}</a></button>
            </div>
    </div>
</body>
</html>