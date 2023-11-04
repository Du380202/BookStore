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
    <title>Product Page - Admin HTML Template</title>
    <link
      rel="stylesheet"
      href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/fontawesome.min.css"/>" />
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/bootstrap.min.css"/>" />
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/templatemo-style.css"/>"/>
    	<!-- Thêm CSS SweetAlert2 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.min.css">
    <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
	<style>
    .addCategory {
      position: fixed;
      top: 0;
      right: 0;
      left: 0;
      bottom: 0;
      background: rgba(0, 0, 0, 0.3);
      align-items: center;
      justify-content: center;
      display: none;
    }

    .category-header {
      background: #4e657a;
      color: #fff;
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100px;
    }

    .category-container{
      position: relative;
      background: #435c70;
      width: 400px;
      min-height: 200px;
    }
    
    .category-close {
      position: absolute;
      right: 0;
      top: 0;
      color: #fff;
      padding:0px 12px;  
      cursor: pointer;
    }

    .category-body {
      margin: 10px;
      background: #435c70;
      padding: 0 15px;
    }

    .category-close:hover {

      background: #435c70;
    }

    span.ti-close {
      font-size: 30px;
    }

    .category-label {
      display: block;
      font-size: 15px;
      color: #ffF;
      margin-top: 10px;
      margin-bottom: 5px !important;
    }

    .category-input {
      background: #54657d;
      color: #fff;
      border: 0;
      width: 100%;
      font-size: 15px;
      padding: 8px;
      margin-bottom: 10px;
    }

    .category-input:focus {
      background-color: #60738e;
      color: #fff;
      border-color: transparent;
      box-shadow: 0 0 0 0.1rem rgb(180, 206, 233, 0.5);
    }

    .category-body-button {
      margin: 15px 10px;
      padding: 0 15px;
      
    }

    .category-button {
      width: 100%;
      padding: 10px;
      background: #f5a623;
      color: #fff;
      border: 2px solid #f5a623;
      cursor: pointer;
    }

    .category-button:hover {
      color: #f5a623;
      background-color: transparent;
      border: 2px solid #f5a623
    }

    .openCategory {
      display: flex;
    }

	.openAuthor{
      display: flex;
    }
    
    .openNxb{
      display: flex;
    }
  </style>
  </head>

  <body id="reportsPage">
    <nav class="navbar navbar-expand-xl">
      <div class="container h-100">
        <a class="navbar-brand" href="indexAdmin">
          <h1 class="tm-site-title mb-0"> Admin</h1>
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
                aria-expanded="false">
                <i class="far fa-file-alt"></i>
                <span>Quản Lý <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item js-btn-author" href="authorAdmin">Tác Giả</a>
                <a class="dropdown-item js-btn-nxb" href="nxbAdmin">Nhà Xuất Bản</a>
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
                aria-expanded="false">
                <i class="fas fa-cog"></i>
                <span> Settings <i class="fas fa-angle-down"></i> </span>
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item " href="#">Profile</a>
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
    <div class="container mt-5">
      <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-products">
            <div class="tm-product-table-container">
              <table class="table table-hover tm-table-small tm-product-table">
                <thead>
                  <tr>
                    <th scope="col">&nbsp;</th>
                    <th scope="col">PRODUCT NAME</th>
                    <th scope="col">UNIT SOLD</th>
                    <th scope="col">IN STOCK</th>
                    <th scope="col">EXPIRE DATE</th>
                    <th scope="col">&nbsp;</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${products}">
                	<tr>
                    <th scope="row"><input type="checkbox" /></th>
                   
                    <td class="tm-product-name"><a href="editProduct?id=${item.getMaSach()}" style="color: #fff">${item.getTenSach()}</a></td>
                    <td>$${item.getGiaBan()}</td>
                    <td>${item.getSoLuongTon()}</td>
                    <td>28 March 2019</td>
               
                    <td>
                      <a href="javascript:void(0);" onclick="confirmDeleteProduct(${item.getMaSach()});" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                </c:forEach>
                  
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <a
              href="AddProduct"
              class="btn btn-primary btn-block text-uppercase mb-3">Add new product</a>
            <button class="btn btn-primary btn-block text-uppercase">
              Delete selected products
            </button>
          </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-4 col-xl-4 tm-block-col">
          <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
            <h2 class="tm-block-title">Product Categories</h2>
            <div class="tm-product-table-container">
              <table class="table tm-table-small tm-product-table">
                <tbody>
                <c:forEach var="item" items="${categories }">
                	<tr>
                    <td class="tm-product-name">${item.getTenTheLoai() }</td>
                    <td class="text-center">
                      <a href="javascript:void(0);" onclick="confirmDeleteCa(${item.getIdTheLoai()});" class="tm-product-delete-link">
                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                      </a>
                    </td>
                  </tr>
                </c:forEach>
                  
                  
                  
                </tbody>
              </table>
            </div>
            <!-- table container -->
            <button class="btn btn-primary btn-block text-uppercase mb-3 js-btn-category">
              Add new category
            </button>
          </div>
        </div>
      </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
      <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
        
       <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link"></a>
        </p>
      </div>
    </footer>
    
    <div class="addCategory js-modal">
    	<div class="category-container js-modal-container">
		    <form:form action="AddCategory"  modelAttribute="addCategory">
		        <div class="category-close">
		          <span class="ti-close js-close">&times;</span>
		        
		        </div>
		        <header class="category-header">
		          <div class="">
		            <h2 class="tm-block-title d-inline-block" style="margin-bottom: 0 !important;">ADD NEW CATEGORY</h2>
		          </div>
		        </header>
		        
		          <div class="category-body">
		            <label for="" class="category-label">Tên Thể Loại</label>
		            <form:input type="text" class="form-control" path="tenTheLoai"></form:input>
		          </div>
		          <div class="category-body-button">
		            <button type="submit" class="category-button">ADD CATEGORY NOW</button>
		          </div>
		    </form:form>
      </div>  
    </div>

    
    
	

    <script>
      const btnModal = document.querySelector('.js-btn-category')
      const modal = document.querySelector('.js-modal')
      const modalClose = document.querySelector('.js-close')
      const modalContainer = document.querySelector('.js-modal-container')

      function showAddCategory() {
        modal.classList.add('openCategory')
      }

      function closeAddCategory() {
        modal.classList.remove('openCategory')
      }

      btnModal.addEventListener('click', showAddCategory)

      modalClose.addEventListener('click', closeAddCategory)
      
      modal.addEventListener('click', closeAddCategory)

      modalContainer.addEventListener('click', function(event) {
        event.stopPropagation()
      })

    </script>
	


	<!-- Thêm JavaScript SweetAlert2 -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.all.min.js"></script>
	<script>
	    function confirmDeleteCa(categoryId) {
	        Swal.fire({
	            title: 'Xác nhận xóa thể loại',
	            text: 'Bạn có chắc chắn muốn xóa thể loại này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'Xóa',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                // Nếu người dùng chấp nhận xóa, hãy chuyển họ đến URL xóa sản phẩm
	                window.location.href = "DeleteCategory/" + categoryId;
	            }
	        });
	    }
	</script>
	
	<script>
	    function confirmDeleteProduct(productId) {
	        Swal.fire({
	            title: 'Xác nhận xóa sản phẩm',
	            text: 'Bạn có chắc chắn muốn xóa sản phẩm này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'Xóa',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                // Nếu người dùng chấp nhận xóa, hãy chuyển họ đến URL xóa sản phẩm
	                window.location.href = "DeleteProduct/" + productId;
	            }
	        });
	    }
	</script>
    <script src="<c:url value="ASSETS/admin/js/jquery-3.3.1.min.js"/>"></script>
    <!-- https://jquery.com/download/ -->
    <script src="<c:url value="ASSETS/admin/js/bootstrap.min.js"/>"></script>
    <!-- https://getbootstrap.com/ -->
   <!--  <script>
      $(function() {
        $(".tm-product-name").on("click", function() {
          window.location.href = "edit-product.html";
        });
      });
    </script> -->
    <script>
	    $(document).ready(function() {
	        var deleteSuccess = getUrlParameter("deleteSuccess");
	        var deleteError = getUrlParameter("deleteError");
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