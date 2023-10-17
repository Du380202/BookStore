<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
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
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/wow.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/vendor/css/LineIcons.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/nouislider.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/range-slider.css"/>">
    <!-- Slider Setting Css  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/settings.css"/>">
    <!-- Mega Menu  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/megamenu.css"/>">
    <!-- StyleSheet  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/style.css"/>">
    <!-- Custom Css  -->
    <link rel="stylesheet" href="<c:url value="/ASSETS/css/custom.css"/>">
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
                                <a class="navbar-brand center-brand" href="home">
                                    <img src="<c:url value="ASSETS/img/logo.png"/>" alt="logo" class="logo-scrolled">
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
	                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="#">${item.getTenTheLoai()}</a></li>
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
	                                                                    <h6 class="mt-3 ml-3"><a href="#">${item.getTenTG()}</a></h6>
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
                                            <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">PAGES</a>
                                            <div class="dropdown-menu">
                                                <ul>
                                                    <li><i class="lni-angle-double-right right-arrow"></i><a
                                                            class="dropdown-item" href="list">Listing
                                                            One</a></li>
                                                    <li><i class="lni-angle-double-right right-arrow"></i><a
                                                            class="dropdown-item" href="list">Detail
                                                            Page</a></li>
                                                    <li><i class="lni-angle-double-right right-arrow"></i><a
                                                            class="dropdown-item" href="shopCart">ShopCart
                                                            Page</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact">CONTACT</a>
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
                                            <a class="nav-link collapsePagesSideMenu" data-toggle="collapse"
                                                href="#sideNavPages1">
                                                BOOKS <i class="fas fa-chevron-down"></i>
                                            </a>
                                            <div id="sideNavPages1" class="collapse sideNavPages">

                                                <ul class="navbar-nav mt-2">
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Love Does</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">No One Belongs</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">As I Lay Dying</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Life is Elsewhere</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">The Road</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Why Me?</a></li>
                                                </ul>
                                                <h5 class="sub-title">1. Classic</h5>
                                                <ul class="navbar-nav mt-2">
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Lorna Doone</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Lord of Flies</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Kidnapped</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">End World</a></li>
                                                </ul>

                                                <h5 class="sub-title">2. Novel's</h5>
                                                <ul class="navbar-nav mt-2">
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Romance</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Fantasy</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Thrillers</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Historical Fiction</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Others</a></li>
                                                </ul>

                                                <h5 class="sub-title">3. History</h5>
                                                <ul class="navbar-nav mt-2">
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Creative Thinking</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Historical Fiction</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Creative Thinking</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Personal Finance</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link collapsePagesSideMenu" data-toggle="collapse"
                                                href="#sideNavPages3">
                                                E-BOOKS <i class="fas fa-chevron-down"></i>
                                            </a>
                                            <div id="sideNavPages3" class="collapse sideNavPages">
                                                <ul class="navbar-nav mt-2">
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Art</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Autobiography</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Biography</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Chick lit</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Coming-of-age</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Anthology</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Drama</a></li>
                                                </ul>
                                                <h5 class="sub-title">1. Others</h5>
                                                <ul class="navbar-nav mt-2">
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Crime</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list"> Dictionary</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list"> Health</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">History</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Horror</a></li>
                                                    <li class="nav-item"><a class="nav-link"
                                                            href="list">Poetry</a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link collapsePagesSideMenu" data-toggle="collapse"
                                                href="#sideNavPages2">
                                                PAGES <i class="fas fa-chevron-down"></i>
                                            </a>
                                            <div id="sideNavPages2" class="collapse sideNavPages">
                                                <ul class="navbar-nav">
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="list">Listing One</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="list">Detail Page</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" href="list">StandAlone Page</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="contact">Contact</a>
                                        </li>
                                    </ul>
                                </nav>
                                <div class="side-footer w-100">
                                    <ul class="social-icons-simple white top40">
                                        <li><a class="facebook-bg-hvr" href="javascript:void(0)"><i
                                                    class="fab fa-facebook-f"></i> </a> </li>
                                        <li><a class="twitter-bg-hvr" href="javascript:void(0)"><i
                                                    class="fab fa-twitter"></i> </a> </li>
                                        <li><a class="instagram-bg-hvr" href="javascript:void(0)"><i
                                                    class="fab fa-instagram"></i> </a> </li>
                                    </ul>
                                    <p class="whitecolor">&copy; <span id="year"></span> Product Shop. Made With Love by
                                        ThemesIndustry</p>
                                </div>
                            </div>
                        </div>
                        <div id="close_side_menu" class="tooltip"></div>
                        <!-- End side menu -->
                    </header>
                    <div class="nav-utility">
                        <div class="manage-icons d-inline-block">
                            <ul class="d-flex justify-content-center align-items-center">
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
                                <a href="javascript:void(0)" class="d-inline-block sidemenu_btn d-block"
                                    id="sidemenu_toggle">
                                    <i class="lni lni-menu"></i>
                                </a>
                                
                                <c:if test="${empty loggedInUser}">
            					<li class="d-inline-block mini-menu-card">
                                <div class="col-12">
                                <a href="signin">
                                <button class="btn green-color-yellow-gradient-btn user-contact contact_btn" type="button">LOGIN
                                </button>
                                </a>
                            </div>
                            </li>
            				</c:if>
            				<c:if test="${not empty loggedInUser}">
	                            <li class="d-inline-block nav-item dropdown position-relative" style="padding-left: 0px; padding-top: 10px">
	                                <div class="media outlet-media">
	                                    <div class="avatar-wrapper">
	                                        <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	
	                                        <img class="avatar" src="<c:url value="${loggedInUser.getAvatar()}"/>" alt=""></a>
	                                        <div class="dropdown-menu">
	                                            <ul>
	                                                <li><a class="dropdown-item" href="userAccount">Account</a></li>
	                                                <li><a class="dropdown-item" href="logout">Log out</a></li>
	                                            </ul>
	                                        </div>
	                  							
	                                    </div>
	                                </div>
	                            </li>
                            </c:if>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END HEADER NAVIGATION -->

    <!--slider sec strat-->
    <section id="slider-sec" class="slider-sec parallax" style="background: url('ASSETS/img/banner1.2.jpg');">
    </section>
    <!--slider sec end-->

    <!--Product Line Up Start -->
    <div class="product-listing">
        <div class="container">
            <div class="row no-gutters">

                <!-- START STICKY NAV -->
                <div class="col-12 col-lg-4 order-2 order-lg-1 sticky">
                    <div id="product-filter-nav" class="product-filter-nav mb-3">
                        <div class="product-category">
                            <h5 class="filter-heading  text-center text-lg-left">Category</h5>
                            <ul>
                                <li><a href="javascript:void(0)">Tiểu thuyết </a><span>(2)</span></li>
                                <li><a href="javascript:void(0)">Tâm Lý </a><span>(4)</span></li>
                                <li><a href="javascript:void(0)">Khoa học viễn tưởng </a><span>(2)</span></li>
                                <li><a href="javascript:void(0)">Lịch sử </a><span>(7)</span></li>
                                <li><a href="javascript:void(0)">Cổ điển </a><span>(9)</span></li>
                            </ul>
                        </div>
                        <div class="product-price mt-1">
                            <h5 class="filter-heading">Shop By</h5>
                            <div id="slider-range"></div>
                            <p class="price-num" style="color: #0b2e13;">Price: <span id="min-p"></span> <span
                                    id="max-p"></span></p>
                        </div>

                        <button type="submit" class="btn yellow-color-green-gradient-btn mt-1 js-btn-filter">Filter</button>

                        <div class="product-add mt-4">
                            <div class="row no-gutters">
                                <div class="col-12">
                                    <img src="<c:url value="ASSETS/img/advertisement.jpg"/>" alt="images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END STICKY NAV -->

                <!-- START PRODUCT COL 8 -->
                <div class="col-md-12 col-lg-8 order-1 order-lg-2">
                    <div class="row">

                        <!-- START LISTING HEADING -->
                        <div class="col-12 product-listing-heading">
                            <h1 class="heading text-left">Product Listing</h1>
                            <p class="para_text text-left"></p>
                        </div>
                        <!-- END LISTING HEADING -->

                        <!-- START PRODUCT LISTING SECTION -->
                        <div class="col-12 product-listing-products">

                            <!-- START DISPLAY PRODUCT -->
                            <div class="product-list row">

                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="https://www.netabooks.vn/Data/Sites/1/Product/23855/vu-tru-trong-vo-hat-de-5.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-1-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html"> So Sad Today
                                            </a></h4>
                                        <p class="text-center p-item-price">$100.00</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-2-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-2-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html"> The Last
                                                Stand </a></h4>
                                        <p class="text-center p-item-price">$600.00</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-3-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-3.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html"> Love Does
                                            </a></h4>
                                        <p class="text-center p-item-price">$150.00</p>
                                    </div>
                                </div>

                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-4.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-4-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html">The Imortal
                                                Rules </a></h4>
                                        <p class="text-center p-item-price">$400.00</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-5-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-5.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html">As I lay Dying
                                            </a></h4>
                                        <p class="text-center p-item-price">$100.00</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-6-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-6.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html"> No One
                                                Belongs </a></h4>
                                        <p class="text-center p-item-price">$500.00</p>
                                    </div>
                                </div>

                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="img\<c:url value="ASSETS/img/book-2.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-2-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html"> Life Without
                                                Money </a></h4>
                                        <p class="text-center p-item-price">$200.00</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-6.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-6-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html"> Brave New
                                                World </a></h4>
                                        <p class="text-center p-item-price">$120.00</p>
                                    </div>
                                </div>
                                <div class="col-12 col-md-6 col-lg-4 manage-color-hover wow slideInUp"
                                    data-wow-delay=".2s">
                                    <div class="product-item owl-theme product-listing-carousel owl-carousel">
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-1-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="item p-item-img">
                                            <img src="<c:url value="ASSETS/img/book-1.jpg"/>" alt="images">
                                            <div class="text-center d-flex justify-content-center align-items-center">
                                                <a class="listing-cart-icon" href="shop-cart.html">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="p-item-detail">
                                        <h4 class="text-center p-item-name"><a href="product-detail.html">The Joke </a>
                                        </h4>
                                        <p class="text-center p-item-price">$150.00</p>
                                    </div>
                                </div>



                            </div>
                            <!-- END DISPLAY PRODUCT -->


                        </div>
                        <!-- END PRODUCT LISTING SECTION -->
                    </div>
                </div>
                <!-- END PRODUCT COL 8 -->

            </div>
        </div>
    </div>
    <!--Product Line Up End-->

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
                            <li><a href="javascript:void(0)" class="facebook-bg-hvr"><i class="fab fa-facebook-f"
                                        aria-hidden="true"></i></a></li>
                            <li><a href="javascript:void(0)" class="twitter-bg-hvr"><i class="fab fa-twitter"
                                        aria-hidden="true"></i></a> </li>
                            <li><a href="javascript:void(0)" class="instagram-bg-hvr"><i class="fab fa-instagram"
                                        aria-hidden="true"></i></a></li>
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
                <div class="col-sm-12 col-lgrr-3  f-sec3  text-center text-lg-left">
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
                    <p class="whitecolor text-center w-100 wow fadeInDown"> <a
                            class="web-link" href="http://www.themesindustry.com/" target="_blank"></a>
                    </p>
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
                            <input type="text" class="form-control" placeholder="Search Here" aria-label="Search Here">
                            <div class="input-group-prepend">
                                <button class="input-group-text" type="submit" id="basic-addon1"><i
                                        class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="search-listing row">
                    <div class="col-12 mb-4">
                        <h4 class="">Filtered Items</h4>
                    </div>
                    <div class="col-12">
                        <div class="listing-search-scroll">
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-1.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">So Sad Today</a></h5>
                                    <p class="category">Award Winning Book</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-2.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">As I Lay Dying</a></h5>
                                    <p class="category">Award Winning Book</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-3.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">Love Does</a></h5>
                                    <p class="category">Award Winning Book</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-2-1.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">The Last Stand</a></h5>
                                    <p class="category">Award Winning Book</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
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

                        <div class="item">
                            <div class="brand-search-box ml-auto mr-auto">
                                <div class="media">
                                    <div class="brand-box-holder">
                                        <a href="javascript:void(0)"> <img class="mr-3" src="<c:url value="ASSETS/img/author1.jpg"/>"
                                                alt="Generic placeholder image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0"><a href="javascript:void(0)"> Eva Smith</a></h5>
                                        <p> Cras sit amet nibh libero.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="item">
                            <div class="brand-search-box ml-auto mr-auto">
                                <div class="media">
                                    <div class="brand-box-holder">
                                        <a href="javascript:void(0)"> <img class="mr-3" src="<c:url value="ASSETS/img/author2.jpg"/>"
                                                alt="Generic placeholder image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0"><a href="javascript:void(0)">Rosa Parks</a></h5>
                                        <p> Cras sit amet nibh libero.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="item">
                            <div class="brand-search-box ml-auto mr-auto">
                                <div class="media">
                                    <div class="brand-box-holder">
                                        <a href="javascript:void(0)"> <img class="mr-3" src="<c:url value="ASSETS/img/author3.jpg"/>"
                                                alt="Generic placeholder image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0"><a href="javascript:void(0)">Alan Yang</a></h5>
                                        <p> Cras sit amet nibh libero.</p>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="item">
                            <div class="brand-search-box ml-auto mr-auto">
                                <div class="media">
                                    <div class="brand-box-holder">
                                        <a href="javascript:void(0)"><img class="mr-3" src="<c:url value="ASSETS/img/author4.jpg"/>"
                                                alt="Generic placeholder image"></a>
                                    </div>
                                    <div class="media-body">
                                        <h5 class="mt-0"><a href="javascript:void(0)">Kam John</a></h5>
                                        <p> Cras sit amet nibh libero.</p>
                                    </div>
                                </div>
                            </div>

                        </div>


                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--END SEARCH AREA -->

    <!--START Cart Box-->
    <div class="cart-box-overlay">
        <a><i class="fas fa-times cross-sign" id="close-window1"></i></a>

        <div class="container">
            <div class="row">
                <div class="search-listing row">
                    <div class="col-12 mb-4">
                        <h4 class="">Shop Cart</h4>
                    </div>
                    <div class="col-12">
                        <div class="listing-search-scroll">
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-1.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">So Sad Today</a></h5>
                                    <p class="category">light wear Lastest</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-2.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">As I Lay Dying</a></h5>
                                    <p class="category">light wear Lastest</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-3.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">Love Does</a></h5>
                                    <p class="category">light wear Lastest</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                            <div class="media row">
                                <div class="img-holder ml-1 mr-2 col-4">
                                    <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-2-1.jpg"/>" class="align-self-center"
                                            alt="cartitem"></a>
                                </div>
                                <div class="media-body mt-auto mb-auto col-8">
                                    <h5 class="name"><a href="javascript:void(0)">The Last Stand</a></h5>
                                    <p class="category">light wear Lastest</p>
                                    <a class="btn black-sm-btn" href="shop-cart.html"><i
                                            class="fas fa-shopping-bag"></i></a>
                                    <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bag-btn">
                <h4 class="total"><span>Total: </span>100$</h4>
                <a href="javascript:void(0)" class="btn green-color-yellow-gradient-btn">View Bag </a>
                <a href="javascript:void(0)" class="btn green-color-yellow-gradient-btn">Checkout </a>
            </div>

        </div>

    </div>
    <!--END Cart Box -->

    <!-- JavaScript -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    // Bắt đầu xử lý khi tài liệu đã tải hoàn tất
    $(document).ready(function() {
        // Thêm sự kiện click cho nút "Filter"
        $('.js-btn-filter').click(function() {
            // Lấy giá trị tối thiểu và tối đa từ các phần tử <span>
            var minPrice = $('#min-p').text();
            var maxPrice = $('#max-p').text();

            // Tạo một đối tượng JSON để gửi lên máy chủ
            var dataToSend = {
                minPrice: minPrice,
                maxPrice: maxPrice
            };

            // Sử dụng AJAX để gửi yêu cầu POST lên máy chủ Spring
            $.ajax({
                type: "POST",
                url: "/BookStore/listLoc",
                data: JSON.stringify(dataToSend),
                contentType: "application/json",
                dataType: "json",
                success: function(response) {
                    // Xử lý kết quả từ máy chủ (nếu cần)
                    console.log(response);
                },
                error: function(error) {
                    console.error('Lỗi trong quá trình gửi dữ liệu: ', error);
                }
            });
        });
    });
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
<script src="<c:url value="/ASSETS/vendor/js/stickyfill.min.js"/>"></script>
<script src="<c:url value="/ASSETS/js/nouislider.min.js"/>"></script>
    <!-- Custom Script -->
<script src="<c:url value="/ASSETS/js/script.js"/>"></script>
</body>

</html>