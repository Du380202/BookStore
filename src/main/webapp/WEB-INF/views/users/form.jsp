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
                Khảo Sát Khách Hàng
            </h1>
            <p id="description">
                Thank you for taking the time to help us to improve the plateform
            </p>
        </header>
        <form action="formAns" id="survey-form" method="post">
            <!-- radio button section -->
            <c:forEach var="q" items="${question}">
            <div class="form-group">
            
                <p id="quest">${q.getId()}. ${q.getCauhoi()}</p>
                <c:forEach var="ans" items="${q.getAnswer()}">
                <label for="">
                    <input type="radio" name="source${q.getId()}" value="${ans.getIdCauTraLoi()}"
                    class="inputRadio"
                    checked> ${ans.getCauTraLoi()}
                </label>
                </c:forEach>
             
            </div>
            </c:forEach>
        
            <!-- End of checkbox section -->

            <!-- Textarea section -->
             
            <div class="form-group">
                <button type="submit" id="submit" class="btn">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>