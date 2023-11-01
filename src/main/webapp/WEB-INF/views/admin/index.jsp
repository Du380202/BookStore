<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Product Admin - Dashboard HTML Template</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/fontawesome.min.css"/>">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/bootstrap.min.css"/>"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/css/templatemo-style.css"/>"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.min.css">
    <link rel="stylesheet" href="<c:url value="ASSETS/admin/jquery-ui-datepicker/jquery-ui.min.css"/>" type="text/css" />
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

        .category-container {
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
            padding: 0px 12px;
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
        
        .openAuthor {
            display: flex;
        }
        
        .delive {
		    background-color: #06ebe3;
		    box-shadow: 0 0 8px #06ebe3, inset 0 0 8px #06ebe3;
		}
    </style>
</head>

<body id="reportsPage">
    <div class="" id="home">
        <nav class="navbar navbar-expand-xl">
            <div class="container h-100">
                <a class="navbar-brand" href="indexAdmin">
                    <h1 class="tm-site-title mb-0">Admin</h1>
                </a>
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                        <li class="nav-item">
                            <a class="nav-link active" href="indexAdmin">
                                <i class="fas fa-tachometer-alt"></i>
                                Dashboard
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span>
                                    Quản Lý <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="authorAdmin">Tác Giả</a>
                                <a class="dropdown-item" href="nxbAdmin">Nhà Xuất Bản</a>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="productAdmin">
                                <i class="fas fa-shopping-cart"></i>
                                Products
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="accounts.html">
                                <i class="far fa-user"></i>
                                Accounts
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-cog"></i>
                                <span>
                                    Settings <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item js-btn-author" href="#">Profile</a>
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
        <div class="container">
            <div class="row">
                <div class="col">
                    <p class="text-white mt-5 mb-5">Welcome back, <b>Admin</b></p>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row">
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block">
                        <h2 class="tm-block-title">Latest Hits</h2>
                        <canvas id="lineChart"></canvas>
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block">
                        <h2 class="tm-block-title">Performance</h2>
                        <canvas id="barChart"></canvas>
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller">
                        <h2 class="tm-block-title">Storage Information</h2>
                        <div id="pieChartContainer">
                            <canvas id="pieChart" class="chartjs-render-monitor" width="200" height="200"></canvas>
                        </div>                        
                    </div>
                </div>
                <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow">
                        <h2 class="tm-block-title">Notification List</h2>
                        <div class="tm-notification-items">
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-01.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Jessica</b> and <b>6 others</b> sent you new <a href="#"
                                            class="tm-notification-link">product updates</a>. Check new orders.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-02.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Oliver Too</b> and <b>6 others</b> sent you existing <a href="#"
                                            class="tm-notification-link">product updates</a>. Read more reports.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-03.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Victoria</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">order updates</a>. Read order information.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-01.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Laura Cute</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">product records</a>.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-02.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Samantha</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">order stuffs</a>.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-03.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Sophie</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">product updates</a>.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-01.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Lily A</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">product updates</a>.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-02.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Amara</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">product updates</a>.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                            <div class="media tm-notification-item">
                                <div class="tm-gray-circle"><img src="img/notification-03.jpg" alt="Avatar Image" class="rounded-circle"></div>
                                <div class="media-body">
                                    <p class="mb-2"><b>Cinthela</b> and <b>6 others</b> sent you <a href="#"
                                            class="tm-notification-link">product updates</a>.</p>
                                    <span class="tm-small tm-text-color-secondary">6h ago.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 tm-block-col">
                    <div class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
                        <h2 class="tm-block-title">Orders List</h2>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">ORDER NO.</th>
                                    <th scope="col">STATUS</th>
                                    <th scope="col">OPERATORS</th>
                                    <th scope="col">LOCATION</th>
                                    <th scope="col">DISTANCE</th>
                                    <th scope="col">START DATE</th>
                                    <th scope="col">EST DELIVERY DUE</th>
                                    <th scope="col">&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tmp" items="${orders}">
                                <tr>
                                    <th scope="row"><b>${tmp.getIdDonHang()}</b></th>
                                    <td>
                                    
                                        ${tmp.getNgayDat()}
                                    </td>
                                    
                                    <td><b>${tmp.getSdt()}</b></td>
                                    <td><b>${tmp.getDiaChi()}</b></td>
                                    <td>${tmp.getTongTien()}</td>
                                    <td>
                                     <c:if test="${tmp.getTrangThai() == 3}">
	                                     <div class="tm-status-circle moving">
                                        </div>
	                                    Hoàn thành
                                    </c:if>
                                    <c:if test="${tmp.getTrangThai() == 2}">
	                                    <div class="tm-status-circle delive">
                                        </div>
	                                    Đang giao
                                    </c:if>
                                    <c:if test="${tmp.getTrangThai() == 1}">
	                                    <div class="tm-status-circle pending">
                                        </div>
	                                    Đang xử lý
                                    </c:if>
                                    <c:if test="${tmp.getTrangThai() == 0}">
	                                    <div class="tm-status-circle cancelled">
	                                        </div>
	                                    Đã hủy
                                    </c:if>
                                    </td>
                                    <form:form action="indexAdmin" modelAttribute="orderDetail">
                                    <td><b><form:input path="ngayGiao" type="text" style="width: 130px" class="form-control" id="expire_date_${tmp.getIdDonHang()}" 
                                    value="${tmp.getNgayGiao()}"/></b>
                                     <form:hidden path="idDonHang" value="${tmp.getIdDonHang()}" /> </td>
                                    <td class="js-clickable-td">
                                    <c:if test="${tmp.getTrangThai() == 0}">
				                      <button type="submit" class="js-btn-author tm-product-delete-link"  style="border: none;color:#da534f;">
				                        <i class="fas fa-times"></i>
				                      </button>
				                     </c:if>
				                     
				                     <c:if test="${tmp.getTrangThai() == 1}">
				                      <button type="submit" class="js-btn-author tm-product-delete-link"  style="border: none;">
				                        <i class="fas fa-shipping-fast"></i>
				                      </button>
				                     </c:if>
				                     <c:if test="${tmp.getTrangThai() == 2}">
				                      <button type="submit" class="js-btn-author tm-product-delete-link"  style="border: none; color:#9be64d;">
				                        <i class="fas fa-shipping-fast"></i>
				                      </button>
				                     </c:if>
				                     
				                     <c:if test="${tmp.getTrangThai() == 3}">
				                      <button class="js-btn-author tm-product-delete-link"  style="border: none;color:#9be64d;cursor: not-allowed;">
				                        <i class="fas fa-check"></i>
				                        
				                      </button>
				                     </c:if>
				                    </td>
				                    </form:form>
                                </tr>
                                </c:forEach>
                            </tbody>
                        </table>
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
    </div>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.all.min.js"></script>
    <script src="<c:url value="ASSETS/admin/js/jquery-3.3.1.min.js"/>"></script>

    <script src="<c:url value="ASSETS/admin/js/moment.min.js"/>"></script>
    <!-- https://momentjs.com/ -->
    <script src="<c:url value="ASSETS/admin/js/Chart.min.js"/>"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="<c:url value="ASSETS/admin/js/bootstrap.min.js"/>"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="<c:url value="ASSETS/admin/js/tooplate-scripts.js"/>"></script>
    <script src="<c:url value="ASSETS/admin/jquery-ui-datepicker/jquery-ui.min.js"/>"></script>
    <script>
        Chart.defaults.global.defaultFontColor = 'white';
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart;
        barChart, pieChart;
        // DOM is ready
        $(function () {
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart

            $(window).resize(function () {
                updateLineChart();
                updateBarChart();                
            });
        })
    </script>
     <script>
     $(function () {
    	    $("[id^='expire_date_']").each(function() {
    	        var id = this.id;
    	        $(this).datepicker({
    	            changeMonth: true, // Cho phép chọn tháng
    	            changeYear: true, // Cho phép chọn năm
    	            yearRange: "1900:2025", // Phạm vi năm bạn muốn cho phép
    	        });
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