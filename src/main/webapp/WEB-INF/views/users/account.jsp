<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Meta Tags For Seo + Page Optimization -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Themes Industry">
    <!-- description -->
    <meta name="description" content="Woman Store is a highly creative, modern, visually stunning and Bootstrap responsive multipurpose agency and HTML5 template with 14 ready home page demos.">
    <!-- keywords -->
    <meta name="keywords" content="creative, modern, clean, bootstrap responsive, h tml5, css3, portfolio, blog, agency, templates, multipurpose, one page, corporate, start-up, studio, branding, designer, freelancer, carousel, parallax, photography, personal, masonry, grid, faq">
    <!-- Page Title -->
    <title>Book Store | Home</title>
    <!-- Favicon -->
    <link rel="icon" href="book-shop/dummy-img/favicon.ico">
    <!-- Bundle -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/bundle.min.css"/>">
    <!-- Plugin Css -->
     <!-- <link href="<c:url value="/assets/user/css/bootstrap.min.css"/>" rel="stylesheet"> -->
     
    <link  href="<c:url value="/ASSETS/vendor/css/jquery.fancybox.min.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/swiper.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/cubeportfolio.min.css"/>">
        <link rel="stylesheet" href="<c:url value="ASSETS/admin/jquery-ui-datepicker/jquery-ui.min.css"/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/wow.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/LineIcons.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/themify-icons.css"/>">
    <!-- Mega Menu  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/megamenu.css"/>">
    <!-- StyleSheet  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/style.css"/>">
    <!-- Custom Css  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/custom.css"/>">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.min.css">
    <style>
		.col-lg-3 {
	        -ms-flex: 0 0 33%;
	        flex: 0 0 33%;
	        max-width: 33%
	    }
	    
	    .col-lgrr-3 {
	        -ms-flex: 0 0 25%;
	        flex: 0 0 25%;
	        max-width: 25%
	    }
	    
	    .mg-5px {
	    	margin-left: 5px ;
	    }
	    
	    .ui-w-80 {
		    width: 80px !important;
		    height: auto;
		}
		
	
	    
	    .container-design {
	    	margin-top: 100px;
	    	margin-bottom: 100px;
	    }
	   /*  
	    .list-group-item-action {
	    	background-color: #f7941d;
    		color: #fff;
    		border: none;
	    }
	     */
	     
	    .avatar-wrapper {
            position: relative;
            display: inline-block;
            width: 50px;   
            padding-left: 0px !important;
        }

        .avatar {
            width: 40px !important ;
            height: 40px !important ; 
            border-radius: 50% !important; 
            object-fit: cover; 
            border: 2px solid #fff; 
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
        }


        .dropdown-menu {
           
           
        }

        .avatar-wrapper:hover .dropdown-menu {
            display: block;
        }
        
        select.ui-datepicker-year {
		    color: black !important;
		    width: 50% !important;
		    padding: 0px;
		    margin: 1px;
		}
		
		select.ui-datepicker-month {
		    color: black !important;
		    width: 50% !important;
		    padding: 0px;
		    margin: 1px;
		}
		
		html:not(.dark-style) .account-settings-links .list-group-item.active {
		    background: #62ab00!important;
		    color: white !important;
		}
		
	
	    .order-img {
	        width: 80px;
	        height: 80px;
	        flex-shrink: 0;
	        border: 1px solid #e1e1e1;
	        background: #e1e1e1;
	    }
	    .order, .order-product {
	        display: flex;
	        word-wrap: break-word;
	    }
	
	    .order {
	        padding: 12px 0 0;
	        align-items: center;
	        flex-wrap: nowrap;
	        color: rgba(0,0,0,.87);
	        margin: 10px 16px 0;
	        border-top: 1px solid rgba(0,0,0,.09);
	    }
	
	    .order-product {
	        padding: 0 12px 0 0;
	        flex: 1;
	        align-items: flex-start;
	        flex-wrap: nowrap;
	    }
	    .order-name {
	        min-width: 0;
	        padding: 0 0 0 12px;
	        display: flex;
	        flex: 1;
	        flex-direction: column;
	        align-items: flex-start;
	        word-wrap: break-word;
	    }

	    .order-totalprice {
	        padding-top: 24px;
		    display: flex;
		    justify-content: flex-end;
		    align-items: center;
		    margin-left: 16px;
		    margin-right: 16px;
		    border-top: 1px solid rgba(0,0,0,.09);
		    margin-top: 12px;
	    }
	
	    .order-action {
	        display: flex;
		    justify-content: flex-end;
		    padding-top: 24px;
		    padding-bottom: 24px;
		    border-bottom: 1px solid rgba(0,0,0,.09);
		    margin-bottom: 20px;
	    }
	
	    .btn-cancel {
	        min-width: 150px;
	        min-height: 40px;
	        padding: 8px 20px;
	        outline: none;
	        overflow: hidden;
	        text-overflow: ellipsis;
	        text-transform: capitalize;
	        border-radius: 2px;
	        outline: 0;
	        background-color: #ee4d2d;
	        /* border-color: #cd3011; */
	        color: #fff;
	        border: none;
	        margin-right: 16px;
	        
	    }
	    
	    .btn-cancel:hover {
	    	background-color: red;
	    }
	    
	    .tab-content {
		    border-left: .5px solid #eceff6;
		    border-right: .5px solid #eceff6;
		    border-bottom: .5px solid #eceff6;
		    padding-top: 24px !important;
		    padding-bottom: 40px;
		    padding-left: 0px !important;
		    padding-right: 0px !important;
		}
		
		.order-status {
	        display: flex;
	        justify-content: flex-end;
	        margin-right: 16px;
	    }
	
	    .border-left-status {
	        margin: 0px;
	        border-left: 1px solid rgba(0,0,0,.09);
	        padding-left: 10px;
	        color: #62ab00;
	    }
	    
	    order-font {
	    	font-size: 14px !important;
	    }
		
	</style>
</head>
<body>


<a class="scroll-top-arrow" href="javascript:void(0);"><i class="fa fa-angle-up"></i></a>

<!--LOADER-->
<div class="loader">
    <div class="loader-spinner"></div>
</div>
<!--LOADER-->

<!-- START HEADER NAVIGATION -->
<div class="header-area fixed-header1 position-relative">
    <div class="container">
        <div class="row upper-nav">
            <div class=" text-left nav-logo">
                <a href="home" class="navbar-brand"><img src="<c:url value="ASSETS/img/logo.png"/>" alt="img"></a>
            </div>
            <div class="ml-auto nav-mega d-flex justify-content-end align-items-center">
                <header class="site-header" id="header">
                    <nav class="navbar navbar-expand-md  static-nav">
                        <div class="container position-relative megamenu-custom">
                            <a class="navbar-brand center-brand" href="index-book-shop.html">
                                <img src="img\logo.png" alt="logo" class="logo-scrolled">
                            </a>
                            <div class="collapse navbar-collapse">
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item">
                                        <a class="nav-link" href="home">HOME</a>
                                    </li>
                                    <li class="nav-item dropdown static">
                                        <a class="nav-link dropdown-toggle active" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> BOOKS </a>
                                        <ul class="dropdown-menu megamenu flexable-megamenu">
                                            <li>
                                                <div class="container">
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-6 col-sm-12 mengmenu_border">
                                                            <h5 class="dropdown-title"> Most Wanted </h5>
                                                            <ul>
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="book-shop\product-listing.html">Love Does</a></li>
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="book-shop\product-listing.html">No One Belongs</a></li>
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="book-shop\product-listing.html">As I Lay Dying</a></li>
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="book-shop\product-listing.html">Life is Elsewhere</a></li>
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="book-shop\product-listing.html">The Road</a></li>
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="book-shop\product-listing.html">Why Me?</a></li>
                                                            </ul>
                                                            
                                                        </div>
                                                        <div class="col-lg-3 col-md-6 col-sm-12 mengmenu_border">
                                                            <h5 class="dropdown-title"> Categories </h5>
                                                            <ul>
	                                                            <c:forEach var="item" items="${categories}">
	                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="listCategory?id=${item.getIdTheLoai()}">${item.getTenTheLoai()}</a></li>
	                                                              </c:forEach>
                                                            </ul>

                                                        </div>

                                                        <div class="col-lg-3 col-md-6 col-sm-12 mengmenu_border">
                                                            <h5 class="dropdown-title bottom10"> Author's </h5>
															<c:forEach var = "item" items = "${author}">
	                                                            <div class="media outlet-media mt-3">
	                                                                <div class="box">
	                                                                    <img class="align-self-start" src="<c:url value="${item.getImg()}"/>" alt="Generic placeholder image">
	                                                                </div>
	                                                                <div class="media-body">
	                                                                    <h6 class="mt-3 ml-3"><a href="listAuthor?id=${item.getMaTG()}">${item.getTenTG()}</a></h6>
	                                                                </div>
	                                                            </div>
															</c:forEach>
                                                            

                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                   
                                    <li class="nav-item dropdown position-relative">
                                        <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PAGES</a>
                                        <div class="dropdown-menu">
                                            <ul>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="list">Listing One</a></li>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="list">Detail Page</a></li>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="shopCart">ShopCart Page</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">CONTACT</a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </nav>

                    <!-- side menu -->
                    <div class="side-menu opacity-0 gradient-bg hidden">
                        <div class="inner-wrapper">
                            <span class="btn-close btn-close-no-padding" id="btn_sideNavClose"><i></i><i></i></span>
                            <nav class="side-nav w-100">
                                <ul class="navbar-nav">

                                    <li class="nav-item">
                                        <a class="nav-link" href="home"> HOME</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link collapsePagesSideMenu" data-toggle="collapse" href="#sideNavPages1">
                                            BOOKS <i class="fas fa-chevron-down"></i>
                                        </a>
                                        <div id="sideNavPages1" class="collapse sideNavPages">

                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Love Does</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">No One Belongs</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">As I Lay Dying</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Life is Elsewhere</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">The Road</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Why Me?</a></li>
                                            </ul>
                                            <h5 class="sub-title">1. Classic</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Lorna Doone</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Lord of Flies</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Kidnapped</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">End World</a></li>
                                            </ul>

                                            <h5 class="sub-title">2. Novel's</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Romance</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Fantasy</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Thrillers</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Historical Fiction</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Others</a></li>
                                            </ul>

                                            <h5 class="sub-title">3. History</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Creative Thinking</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Historical Fiction</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Creative Thinking</a></li>
                                                <li class="nav-item"><a class="nav-link" href="product-listing.html">Personal Finance</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a class="nav-link collapsePagesSideMenu" data-toggle="collapse" href="#sideNavPages2">
                                            PAGES <i class="fas fa-chevron-down"></i>
                                        </a>
                                        <div id="sideNavPages2" class="collapse sideNavPages">
                                            <ul class="navbar-nav">
                                                <li class="nav-item">
                                                    <a class="nav-link" href="product-listing.html">Listing One</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="product-detail.html">Detail Page</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="shop-cart.html">StandAlone Page</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="contact.html">Contact</a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="side-footer w-100">
                                <ul class="social-icons-simple white top40">
                                    <li><a class="facebook-bg-hvr" href="javascript:void(0)"><i class="fab fa-facebook-f"></i> </a> </li>
                                    <li><a class="twitter-bg-hvr" href="javascript:void(0)"><i class="fab fa-twitter"></i> </a> </li>
                                    <li><a class="instagram-bg-hvr" href="javascript:void(0)"><i class="fab fa-instagram"></i> </a> </li>
                                </ul>
                                <p class="whitecolor">&copy; <span id="year"></span> Product Shop. Made With Love by ThemesIndustry</p>
                            </div>
                        </div>
                    </div>
                    <div id="close_side_menu" class="tooltip"></div>
                    <!-- End side menu -->
                </header>
                <div class="nav-utility">
                    <div class="manage-icons d-inline-block">
                        <ul class="d-flex justify-content-center align-items-center" style="margin: 0px">
                            <li class="d-inline-block">
                                <a id="add_search_box">
                                    <i class="lni lni-search search-sidebar-hover"></i>
                                </a>
                            </li>
                            <li class="d-inline-block mini-menu-card">
                                <a class="nav-link" id="add_cart_box" href="javascript:void(0)">
                                    <i class="lni lni-shopping-basket"></i>
                                </a>
                            </li>
                            <a href="javascript:void(0)" class="d-inline-block sidemenu_btn d-block" id="sidemenu_toggle">
                                <i class="lni lni-menu"></i>
                            </a>
                            
                            <li class="d-inline-block nav-item dropdown position-relative" style="padding-left: 0px; padding-top: 10px">
                                <div class="media outlet-media">
                                    <div class="avatar-wrapper">
                                        <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                                        <img class="avatar" src="<c:url value="${loggedInUser.getAvatar()}"/>" alt=""></a>
                                        <div class="dropdown-menu">
                                            <ul>
                                                <li><a class="dropdown-item" href="book-shop\product-listing.html">Account</a></li>
                                                <li><a class="dropdown-item" href="book-shop/shop-cart.html.html">Log out</a></li>
                                            </ul>
                                        </div>
                  							
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- END HEADER NAVIGATION -->

<!--slider sec strat-->
<section id="slider-sec" class="slider-sec parallax" style="background: url('ASSETS/img/banner1.3.jpg');">
</section>
<!--slider sec end-->

<!-- START HEADING SECTION -->

<div class="container light-style flex-grow-1 container-p-y container-design">
    <h4 class="font-weight-bold py-3 mb-4">
        Account Settings
    </h4>
    <div class="card overflow-hidden">
        <div class="row no-gutters row-bordered row-border-light">
            <div class="col-md-3 pt-0">
                <div class="list-group list-group-flush account-settings-links">
                    <a class="list-group-item list-group-item-action active" data-toggle="list"
                        href="#account-general"><i class="fas fa-user mr-3"></i>General</a>
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                        href="#account-change-password"><i class="fas fa-key mr-3"></i>Change password</a>
                   
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                        href="#account-social-links"><i class="fas fa-globe mr-3"></i>Social links</a>
                        <!-- Order -->
                    <a class="list-group-item list-group-item-action" data-toggle="list"
                        href="#account-order"><i class="fas fa-shopping-cart mr-3"></i></i>Order</a> 
                </div>
            </div>
            <div class="col-md-9">
                <div class="tab-content">
                    <div class="tab-pane fade active show" id="account-general">
                		<form:form action="userAccount"  modelAttribute="account">
                        <div class="card-body media align-items-center">
                            <img class="avatar" style="width: 70px !important; height: 70px !important" src="<c:url value="${account.getAvatar()}"/>" alt
                                class="d-block ui-w-80">
                            <div class="media-body ml-4">
                                <label class="btn btn-outline-primary">
                                    Upload new photo
                                    <input type="file" id="avatarInput" class="account-settings-fileinput" accept="image/*" />
                                </label> &nbsp;
                                <button type="button" class="btn btn-default md-btn-flat">Reset</button>
                            </div>
                        </div>
                        <hr class="border-light m-0">
                        <div class="card-body"> 
                            <div class="form-group">
                                <label class="form-label">Họ Tên</label>
                                <form:input path="hoTen" type="text" class="form-control mb-1" value="${account.getHoTen()}"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Số Điện Thoại</label>
                                <form:input path="sDT" type="text" class="form-control" value="${account.getsDT()}"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Ngày Sinh</label>
                                <form:input path="ngaySinh"  type="text" class="form-control" id="expire_date" value="${account.getNgaySinh()}"/>
                            </div>
                            <div class="form-group">
                                <label class="form-label">E-mail</label>
                                <form:input  path="email" type="text" class="form-control mb-1" value="${account.getEmail()}"/>
                             
                            </div>

                            <div class="form-group">
                                <label class="form-label">Địa Chỉ</label>
                                <form:input path="diaChi" type="text" class="form-control" value="${account.getDiaChi()}"/>
                            </div>
                        </div>
	                    <div class="col-12">
	                          <a href="signin" style="display: flex; justify-content: flex-end">
	                          <button class="btn green-color-yellow-gradient-btn user-contact contact_btn"  type="submit">SAVE
	                         </button>
	                         </a>
	                    </div>
	                    </form:form>
                    </div>
                    <div class="tab-pane fade" id="account-change-password">
                        <div class="card-body pb-2">
                            <div class="form-group">
                                <label class="form-label">Current password</label>
                                <input type="password"  class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="form-label">New password</label>
                                <input type="password" id="password1" class="form-control">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Repeat new password</label>
                                <input type="password" id="password1" class="form-control">
                            </div>
                        </div>
                        <div class="col-12" style="display: flex; justify-content: flex-end">
	                          <button  class="btn green-color-yellow-gradient-btn user-contact contact_btn"  type="submit">SAVE
	                         </button>
	                    </div>
                    </div>
                    
                    <div class="tab-pane fade" id="account-social-links">
                        <div class="card-body pb-2">
                            <div class="form-group">
                                <label class="form-label">Twitter</label>
                                <input type="text" class="form-control" value="https://twitter.com/user">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Facebook</label>
                                <input type="text" class="form-control" value="https://www.facebook.com/user">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Google+</label>
                                <input type="text" class="form-control" value>
                            </div>
                            <div class="form-group">
                                <label class="form-label">LinkedIn</label>
                                <input type="text" class="form-control" value>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Instagram</label>
                                <input type="text" class="form-control" value="https://www.instagram.com/user">
                            </div>
                        </div>
                        <div class="col-12">
	                          <a href="signin" style="display: flex; justify-content: flex-end">
	                          <button class="btn green-color-yellow-gradient-btn user-contact contact_btn"  type="submit">SAVE
	                         </button>
	                         </a>
	                    </div>
                    </div>
                    <!-- Order -->
                    <div class="tab-pane fade" id="account-order">
                    <c:forEach var="donHang" items="${orders}">
                     <c:if test="${donHang.getStatus() == 0}">
                         <div class="order-status">
                                <p class="border-left-status" style="color: #ee4d2d;">Đã hủy</p>
                            </div>
                       </c:if>
                       
                         <c:if test="${donHang.getStatus() == 1}">
                         <div class="order-status">
                                <p class="border-left-status" style="color: #f7941d">Đang xử lý</p>
                            </div>
                       </c:if>
                       <c:if test="${donHang.getStatus() == 2}">
                         <div class="order-status">
                                <p class="border-left-status">Đang giao</p>
                            </div>
                       </c:if>
                       <c:if test="${donHang.getStatus() == 3}">
                         <div class="order-status">
                                <p class="border-left-status">Hoàn thành</p>
                            </div>
                       </c:if>
                            <c:forEach var="item" items="${donHang.getChiTiet()}">
                        	<div class="order">
                                
                                <div class="order-product">
                                   
                                    <img class="order-img" src="${item.getImg1()}" alt="">
                                   
                                    <div class="order-name">
                                        <h5 style="font-size: 16px; line-height: 22px; margin-bottom: 5px" class="order-font">${item.getTieuDe()}</h5>
                                        <h6 style="font-size: 14px !important;     color: rgba(0,0,0,.54);   margin: 0 0 5px;" class="order-font">${item.getTenTG()}</h6>
                                        <h6 style="font-size: 14px !important; margin: 0 0 5px;" class="order-font">x${item.getSoLuong()}</h6>
                                    </div>
                                    
                                </div>
                                <div class="order-price">
                                    <span style="margin-right: 20px;">$${item.getGia()}</span>
                                </div>
                               
                                
                            </div>
                            </c:forEach>
             			

                            
                          <!--   <div class="border-order"></div> -->
                           <div class="order-totalprice">
                                <span style="margin-right: 20px;">$${donHang.getTongTien() }0</span>
                            </div>
                            <div class="order-action">
                            <c:if test="${donHang.getStatus() == 1}">
                            	<div class="order-btn-cancel">
                                    <button class="btn-cancel" style="cursor: not-allowed; background-color: #ccc;color: #666;"   onclick="confirmDeleteOrder(${donHang.getIdDonHang()});">Đã Nhận Hàng</button>
                                </div>
                                <div class="order-btn-cancel">
                                    <button class="btn-cancel" onclick="confirmDeleteOrder(${donHang.getIdDonHang()});">Hủy Đơn Hàng</button>
                                </div>
                                
                             </c:if>
                             <c:if test="${donHang.getStatus() == 0}">
                            	
                                <div class="order-btn-cancel">
                                    <button class="btn-cancel" onclick="resetOrder(${donHang.getIdDonHang()});">Đặt Lại</button>
                                </div>
                             </c:if>
                             <c:if test="${donHang.getStatus() == 2}">
                             	<div class="order-btn-cancel">
                                    <button class="btn-cancel" onclick="confirmOrder(${donHang.getIdDonHang()});">Đã Nhận Hàng</button>
                                </div>
                             </c:if>
                             <c:if test="${donHang.getStatus() == 3}">
                             	
                                <div class="order-btn-cancel">
                                    <button class="btn-cancel" onclick="reOrder(${donHang.getIdDonHang()});">Mua Lại</button>
                                </div>
                             </c:if>
                            </div>
                            </c:forEach>
                          
                            
                    </div>




                    <div class="tab-pane fade" id="account-connections">
                        <div class="card-body">
                            <button type="button" class="btn btn-twitter">Connect to
                                <strong>Twitter</strong></button>
                        </div>
                        <hr class="border-light m-0">
                        <div class="card-body">
                            <h5 class="mb-2">
                                <a href="javascript:void(0)" class="float-right text-muted text-tiny"><i
                                        class="ion ion-md-close"></i> Remove</a>
                                <i class="ion ion-logo-google text-google"></i>
                                You are connected to Google:
                            </h5>
                            <a href="/cdn-cgi/l/email-protection" class="__cf_email__"
                                data-cfemail="f9979498818e9c9595b994989095d79a9694">[email&#160;protected]</a>
                        </div>
                        <hr class="border-light m-0">
                        <div class="card-body">
                            <button type="button" class="btn btn-facebook">Connect to
                                <strong>Facebook</strong></button>
                        </div>
                        <hr class="border-light m-0">
                        <div class="card-body">
                            <button type="button" class="btn btn-instagram">Connect to
                                <strong>Instagram</strong></button>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="account-notifications">
                        <div class="card-body pb-2">
                            <h6 class="mb-4">Activity</h6>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input" checked>
                                    <span class="switcher-indicator">
                                        <span class="switcher-yes"></span>
                                        <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Email me when someone comments on my article</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input" checked>
                                    <span class="switcher-indicator">
                                        <span class="switcher-yes"></span>
                                        <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Email me when someone answers on my forum
                                        thread</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input">
                                    <span class="switcher-indicator">
                                        <span class="switcher-yes"></span>
                                        <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Email me when someone follows me</span>
                                </label>
                            </div>
                        </div>
                        <hr class="border-light m-0">
                        <div class="card-body pb-2">
                            <h6 class="mb-4">Application</h6>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input" checked>
                                    <span class="switcher-indicator">
                                        <span class="switcher-yes"></span>
                                        <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">News and announcements</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input">
                                    <span class="switcher-indicator">
                                        <span class="switcher-yes"></span>
                                        <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Weekly product updates</span>
                                </label>
                            </div>
                            <div class="form-group">
                                <label class="switcher">
                                    <input type="checkbox" class="switcher-input" checked>
                                    <span class="switcher-indicator">
                                        <span class="switcher-yes"></span>
                                        <span class="switcher-no"></span>
                                    </span>
                                    <span class="switcher-label">Weekly blog digest</span>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  
</div>
<!-- END HEADING SECTION -->

<!--footer1 sec start-->
<div class="footer">
    <div class="container">
        <div class="row footer-container">
            <div class="col-sm-12 col-lg-4 f-sec1  text-center text-lg-left">
                <h4 class="high-lighted-heading">About Us</h4>
                <p>We take our mission of increasing our global access to quality education seriously. </p>
                <a href="#">Read more</a>
                <h4>Social Network</h4>
                <div class="s-icons">
                    <ul class="social-icons-simple">
                        <li><a href="javascript:void(0)" class="facebook-bg-hvr"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                        <li><a href="javascript:void(0)" class="twitter-bg-hvr"><i class="fab fa-twitter" aria-hidden="true"></i></a> </li>
                        <li><a href="javascript:void(0)" class="instagram-bg-hvr"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-12 col-lg-5 f-sec2 ">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <h4 class="text-center text-md-left">Information</h4>
                        <ul class="text-center text-md-left">
                            <li><a href="javascript:void(0)">About Us</a></li>
                            <li><a href="javascript:void(0)">Delivery Information</a></li>
                            <li><a href="javascript:void(0)">Privacy Policy</a></li>
                            <li><a href="javascript:void(0)">Terms & Condition</a></li>
                            <li><a href="javascript:void(0)">FAQ</a></li>
                            <li><a href="javascript:void(0)">Contact Us</a></li>
                            <li><a href="product-listing.html">Products</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-md-6">
                        <h4 class="text-center text-md-left">Account Info</h4>
                        <ul class="text-center text-md-left">
                            <li><a href="javascript:void(0)">My Account</a></li>
                            <li><a href="javascript:void(0)">Login & Register</a></li>
                            <li><a href="javascript:void(0)">Order History</a></li>
                            <li><a href="javascript:void(0)">Shipping Info</a></li>
                            <li><a href="#">Refund Policy</a></li>
                            <li><a href="javascript:void(0)">Responsive Website</a></li>
                            <li><a href="javascript:void(0)">Subscription</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-lgrr-3 f-sec3  text-center text-lg-left">
                <h4>Our Portfolio</h4>
                <div class="foot-tag-list">
                    <span>Classic</span>
                    <span>Journal</span>
                    <span>History</span>
                    <span>Poetry</span>
                    <span>Dictionary</span>
                    <span>Shopping</span>
                    <span>Fantasy</span>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12 footer_notes">
                <p class="whitecolor text-center w-100 wow fadeInDown">  <a class="web-link" href="http://www.themesindustry.com/" target="_blank"></a></p>
            </div>
        </div>
    </div>
</div>
<!--foo0ter1 sec end-->

<!--START SEARCH AREA-->
<div class="search-box-overlay">
    <a><i class="fas fa-times cross-sign" id="close-window"></i></a>

    <div class="container">
        <div class="row">
            <div class="col-12 search-col">
                <form action="javascript:void(0)">
                    <div class="input-group search-box-form">
                        <input type="text" onkeyup="searchByName(this)" class="form-control" placeholder="Search Here" aria-label="Search Here">
                        <div class="input-group-prepend">
                            <button class="input-group-text" type="submit" id="basic-addon1"><i class="fas fa-search"></i></button>
                        </div>
                    </div>
                </form>
            </div>
            <div class="search-listing row">
                <div class="col-12 mb-4">
                    <h4 class="">Filtered Items</h4>
                </div>
                <div class="col-12">
                    <div class="listing-search-scroll" id="content"	>
                        <div class="media row"  >
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">Product Name</a></h5>
                                <p class="category">Category Name</p>
                                <a class="btn black-sm-btn" href="book-shop\shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <div class="col-12">
                <hr>
            </div>

            <div class="col-12">
                <h4 class="outlet-title text-center"> - Author - </h4>
            </div>

            <div class="col-12">
                <div class="search-box-meida-items owl-carousel owl-theme">
				<c:forEach var="item" items="${author}">
				
                    <div class="item">
                        <div class="brand-search-box ml-auto mr-auto">
                            <div class="media">
                                <div class="brand-box-holder">
                                    <a href="javascript:void(0)"> <img class="mr-3" src="${item.getImg()}" alt="Generic placeholder image"></a>
                                </div>
                                <div class="media-body">
                                    <h5 class="mt-0"><a href="javascript:void(0)"> ${item.getTenTG()}</a></h5>
                                    <p> ${item.getNoiBat()}</p>
                                </div>
                            </div>
                        </div>

                    </div>
				</c:forEach>
               

                </div>
            </div>
        </div>
    </div>

</div>
<!--END SEARCH AREA -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>

	function searchByName(param) {
	    var txtSearch = param.value;
	    $.ajax({
	        url: "/BookStore/search", // Đường dẫn tới controller xử lý tìm kiếm
	        type: "GET",
	        data: {
	            txt: txtSearch
	        },
	        success: function (data) {
	            var row = document.getElementById("content");
	            row.innerHTML = data;
	        },
	        error: function (xhr) {
	            // Xử lý lỗi nếu có
	        }
	    });
	}

</script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.all.min.js"></script>
	<script>
	    function confirmDeleteOrder(orderId) {
	        Swal.fire({
	            title: 'Xác nhận hủy đơn hàng',
	            text: 'Bạn có chắc chắn muốn hủy đơn hàng này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'Xóa',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                // Nếu người dùng chấp nhận xóa, hãy chuyển họ đến URL xóa sản phẩm
	                window.location.href = "DeleteOrder/" + orderId;
	            }
	        });
	    }
	</script>
	<script>
	    function confirmOrder(orderId) {
	        Swal.fire({
	            title: 'Xác nhận',
	            text: 'Bạn có chắc chắn đã nhận đơn hàng này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'Xác nhận',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                // Nếu người dùng chấp nhận xóa, hãy chuyển họ đến URL xóa sản phẩm
	                window.location.href = "comfirmOrder/" + orderId;
	            }
	        });
	    }
	</script>
	
	<script>
	    function resetOrder(orderId) {
	        Swal.fire({
	            title: 'Xác nhận',
	            text: 'Bạn có chắc chắn muốn đặt đơn hàng này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'Xác nhận',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                // Nếu người dùng chấp nhận xóa, hãy chuyển họ đến URL xóa sản phẩm
	                window.location.href = "resetOrder/" + orderId;
	            }
	        });
	    }
	</script>
	<script>
	    function reOrder(orderId) {
	        Swal.fire({
	            title: 'Xác nhận',
	            text: 'Bạn có chắc chắn muốn đặt lại đơn hàng này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'Xác nhận',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                // Nếu người dùng chấp nhận xóa, hãy chuyển họ đến URL xóa sản phẩm
	                window.location.href = "reorder/" + orderId;
	            }
	        });
	    }
	</script>
<!-- JavaScript -->
<script src="<c:url value="/ASSETS/vendor/js/bundle.min.js"/>"></script>
<!-- Plugin Js -->
<script src="<c:url value="/ASSETS/vendor/js/jquery.fancybox.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/swiper.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/jquery.cubeportfolio.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/wow.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/bootstrap-input-spinner.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/parallaxie.min.js"/>"></script>
<script src="<c:url value="ASSETS/admin/jquery-ui-datepicker/jquery-ui.min.js"/>"></script>
 <script>
        $(function () {
            $("#expire_date").datepicker({
                changeMonth: true, // Cho phép chọn tháng
                changeYear: true, // Cho phép chọn năm
                yearRange: "1900:2025", // Phạm vi năm bạn muốn cho phép
            });
        });
 </script>
 <script> 
	 var avatarInput = document.getElementById('avatarInput');
	 var avatarImage = document.getElementById('avatarImage');
	
	 #avatarInput.addEventListener('change', function () {
	     if (avatarInput.files.length > 0) {
	         var selectedFile = avatarInput.files[0];
	         var objectURL = URL.createObjectURL(selectedFile);
	         avatarImage.src = objectURL;
	     }
	 });
	
	 function resetAvatar() {
	     // Đặt lại thẻ <img> về hình ảnh ban đầu (nếu có)
	     avatarImage.src = "<c:url value="${account.getAvatar()}"/>";
	 }

 </script>
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

<!-- Custom Script -->
<script src="<c:url value="/ASSETS/js/script.js"/>"></script>
</body>
</html>