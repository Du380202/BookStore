<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Edit Product - Dashboard Admin Template</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/fontawesome.min.css"/>" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/jquery-ui-datepicker/jquery-ui.min.css"/>" type="text/css" />
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/bootstrap.min.css" />"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/templatemo-style.css"/>"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.min.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
  </head>

  <body>
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="indexAdmin">
          <h1 class="tm-site-title mb-0">Admin</h1>
        </a>
        <button
          class="navbar-toggler ml-auto mr-0"
          type="button"
          data-toggle="collapse"
          data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mx-auto h-100">
            <li class="nav-item">
              <a class="nav-link" href="indexAdmin">
                <i class="fas fa-tachometer-alt"></i> Dashboard
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i class="far fa-file-alt"></i>
                <span> Quản Lý <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="authorAdmin">Tác Giả</a>
                <a class="dropdown-item" href="nxbAdmin">Nhà Xuất Bản</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="productAdmin">
                <i class="fas fa-shopping-cart"></i> Products
              </a>
            </li>

            <li class="nav-item">
              <a class="nav-link" href="accounts.html">
                <i class="far fa-user"></i> Accounts
              </a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle"
                href="#"
                id="navbarDropdown"
                role="button"
                data-toggle="dropdown"
                aria-haspopup="true"
                aria-expanded="false"
              >
                <i class="fas fa-cog"></i>
                <span> Settings <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">Profile</a>
                <a class="dropdown-item" href="#">Billing</a>
                <a class="dropdown-item" href="#">Customize</a>
              </div>
            </li>
          </ul>
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link d-block" href="signin">
                Admin, <b>Logout</b>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <div class="container tm-mt-big tm-mb-big">
      <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
          <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
            <div class="row">
              <div class="col-12">
                <h2 class="tm-block-title d-inline-block">Delivery</h2>
              </div>
            </div>
            <form:form action="editProduct" modelAttribute="sach" method="post">
            <div class="row tm-edit-product-row">
              <div class="col-xl-6 col-lg-6 col-md-12">
			    <div class="form-group mb-3">
			      <label for="name">Product Name
			      </label>
			      <form:hidden path="maSach" value="${edit.getMaSach()}" />
			      <form:input id="name" type="text" class="form-control validate" path="tenSach" value="${edit.getTenSach()}"/>
			    </div>
			    <div class="form-group mb-3">
			      <label for="category">Author</label>
			      <form:select class="custom-select tm-select-accounts" id="category" path="maTacGia">
			        <c:forEach var="item" items="${authors}">
			        	<c:if test="${edit.getMaTacGia() == item.getMaTG()}">
				        <form:option value="${item.getMaTG()}">${item.getTenTG()}</form:option>
				        </c:if>
			        </c:forEach>
			      </form:select>
			    </div>
			
			    <div class="form-group mb-3">
			      <label for="category">Publisher</label>
			      <form:select class="custom-select tm-select-accounts" id="category" path="maNXB">
			        <c:forEach var="item" items="${nxbs}">
			       		<c:if test="${edit.getMaNXB() == item.getIdNXB()}">
				        <form:option value="${item.getIdNXB()}">${item.getTenNXB()}</form:option>
				        </c:if>
			        </c:forEach>
			      </form:select>
			    </div>
			    <div class="form-group mb-3">
			      <label for="category">Category</label>
			      <form:select class="custom-select tm-select-accounts" id="category" path="maTheLoai">
			        <c:forEach var="item" items="${categories}">
			        	<c:if test="${edit.getMaTheLoai() == item.getIdTheLoai()}">
				        <form:option value="${item.getIdTheLoai()}">${item.getTenTheLoai()}</form:option>
				        </c:if>
			        </c:forEach>
			      </form:select>
			    </div>
			    
				<div class="form-group mb-3">
			      <label for="description">Description</label>
			      <textarea class="form-control validate" name="mota" rows="3">${edit.getMoTa()}</textarea>
			    </div>
			  </div>
              <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                <div class="tm-product-img-edit mx-auto">
                	 <div class="row">
			      <div class="form-group mb-3 col-xs-12 col-sm-6">
			        <label for="stock">Units In Stock
			        </label>
			        <form:input id="stock" type="text" class="form-control validate" path="soLuongTon" value="${edit.getSoLuongTon()}"/>
			      </div>
			      <div class="form-group mb-3 col-xs-12 col-sm-6">
			        <label for="stock">Price
			        </label>
			        <form:input id="stock"  type="text" class="form-control validate" path="giaBan" value="${edit.getGiaBan()}"/>
			      </div>
			    </div>
                	<label
                      for="name" style="color: #fff;"
                      >Image
                    </label>
                  <img src="${edit.getAnh1()}" alt="Product image" class="img-fluid d-block mx-auto">
                  <i
                    class="fas fa-cloud-upload-alt tm-upload-icon"
                    onclick="document.getElementById('fileInput').click();"
                  ></i>
                </div>
                <div class="custom-file mt-3 mb-3">
                  <input id="fileInput" type="file" style="display:none;" />
                  <input
                    type="button"
                    class="btn btn-primary btn-block mx-auto"
                    value="CHANGE IMAGE NOW"
                    onclick="document.getElementById('fileInput').click();"
                  />
                </div>
              </div>
              </div>
              <div class="col-12">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Update Now</button>
              </div>
            </form:form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
          <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2018</b> All rights reserved. 
            
            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
        </div>
    </footer> 

    <script src="<c:url value="ASSETS/admin/js/jquery-3.3.1.min.js"/>"></script>
    <!-- https://jquery.com/download/ -->
    <script src="<c:url value="ASSETS/admin/jquery-ui-datepicker/jquery-ui.min.js"/>"></script>
    <!-- https://jqueryui.com/download/ -->
    <script src="<c:url value="ASSETS/admin/js/bootstrap.min.js"/>"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.all.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
      $(function() {
        $("#expire_date").datepicker({
          defaultDate: "10/22/2020"
        });
      });
    </script>
    	
	<script>
	    $(document).ready(function() {
	        var deleteSuccess = getUrlParameter("Success");
	        var deleteError = getUrlParameter("Error");
	        var previousURL = document.referrer;
	        if (deleteSuccess) {
	            Swal.fire({
	                icon: "success",
	                title: "Thông báo",
	                text: decodeURIComponent(deleteSuccess),
	            });
	        } else if (deleteError) {
	            Swal.fire({
	                icon: "error",
	                title: "Thông báo",
	                text: decodeURIComponent(deleteError),
	            });
	        }
	    });
	
	    function getUrlParameter(name) {
	        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
	        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)");
	        var results = regex.exec(location.search);
	        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
	    }
	 </script>
  </body>
</html>
