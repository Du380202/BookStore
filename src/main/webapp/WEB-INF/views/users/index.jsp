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
<div class="header-area">
    <div class="container">
        <div class="row upper-nav">
            <div class=" text-left nav-logo">
                <a href="home" class="navbar-brand"><img src="<c:url value="/ASSETS/img/logo.png"/>" alt="img"></a>
            </div>
            <div class="ml-auto nav-mega d-flex justify-content-end align-items-center">
                <header class="site-header" id="header">
                    <nav class="navbar navbar-expand-md  static-nav">
                        <div class="container position-relative megamenu-custom">
                            <a class="navbar-brand center-brand" href="index-book-shop.html">
                                <img src="<c:url value="/ASSETS/img/logo.png"/>" alt="logo" class="logo-scrolled">
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
                                        <a class="nav-link dropdown-toggle" href="javascript:void(0)" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">PAGES</a>
                                        <div class="dropdown-menu">
                                            <ul>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="list">Listing One</a></li>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="">Detail Page</a></li>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="shopCart">ShopCart Page</a></li>
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
                                        <a class="nav-link" href="book-shop\product-listing.html"> HOME</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link collapsePagesSideMenu" data-toggle="collapse" href="#sideNavPages1">
                                            BOOKS <i class="fas fa-chevron-down"></i>
                                        </a>
                                        <div id="sideNavPages1" class="collapse sideNavPages">

                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Love Does</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">No One Belongs</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">As I Lay Dying</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Life is Elsewhere</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">The Road</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Why Me?</a></li>
                                            </ul>
                                            <h5 class="sub-title">1. Classic</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Lorna Doone</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Lord of Flies</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Kidnapped</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">End World</a></li>
                                            </ul>

                                            <h5 class="sub-title">2. Novel's</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Romance</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Fantasy</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Thrillers</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Historical Fiction</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Others</a></li>
                                            </ul>

                                            <h5 class="sub-title">3. History</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Creative Thinking</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Historical Fiction</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Creative Thinking</a></li>
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Personal Finance</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link collapsePagesSideMenu" data-toggle="collapse" href="#sideNavPages3">
                                            E-BOOKS <i class="fas fa-chevron-down"></i>
                                        </a>
                                        <div id="sideNavPages3" class="collapse sideNavPages">
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="book-shop\product-listing.html">Art</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Autobiography</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Biography</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Chick lit</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Coming-of-age</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Anthology</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Drama</a></li>
                                            </ul>
                                            <h5 class="sub-title">1. Others</h5>
                                            <ul class="navbar-nav mt-2">
                                                <li class="nav-item"><a class="nav-link" href="list">Crime</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list"> Dictionary</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list"> Health</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">History</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Horror</a></li>
                                                <li class="nav-item"><a class="nav-link" href="list">Poetry</a></li>
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
                                                    <a class="nav-link" href="list">Listing One</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="list">Detail Page</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="list">ShopCart Page</a>
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
                            <a href="javascript:void(0)" class="d-inline-block sidemenu_btn d-block" id="sidemenu_toggle">
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

<!--BANNER START-->
<div class="homer-banner">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-6 d-flex justify-content-center align-items-center text-center text-lg-left">
                <div class="banner-description">
                    <span class="small-heading animated fadeInRight delay-1s">BEST AVAILABLE</span>
                    <h1 class="w-sm-100 w-md-100 w-lg-25 animated fadeInLeft delay-1s">BOOKS <span>COLLECTION</span></h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!--BANNER END-->

<!--START OUR SERVICES-->
<div class="our-services">
    <div class="container">
        <div class="row">

            <div class="col-sm-12 col-md-12 col-lgrr-3 ">
                <div class="service">
                    <div class="media">
                        <div class="service-card">
                            <i class="fas fa-truck mr-3"></i>
                            <div class="media-body">
                                <h5 class="mt-0">Free Shipping Item</h5>
                                <span>Order over $500</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lgrr-3 ">
                <div class="service">
                    <div class="media">
                        <div class="service-card">
                            <i class="fas fa-undo mr-3"></i>
                            <div class="media-body">
                                <h5 class="mt-0">Money Back Guarantee</h5>
                                <span>100% money back</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lgrr-3 ">
                <div class="service">
                    <div class="media">
                        <div class="service-card">
                            <i class="fas fa-piggy-bank mr-3"></i>
                            <div class="media-body">
                                <h5 class="mt-0">Cash On Delivery</h5>
                                <span>Lorem ipsum dolor amet</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lgrr-3 ">
                <div class="service">
                    <div class="media">
                        <div class="service-card">
                            <i class="fas fa-hands-helping mr-3"></i>
                            <div class="media-body">
                                <h5 class="mt-0">Help & Support</h5>
                                <span>Call us: +0123,4567.89</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--END OUR SERVICES-->

<!-- START PORTOLIO SECTION -->
<div class="portfolio-section">
    <div class="container">
        <div class="row">

            <!-- START PORTFOLIO HEADING -->
            <div class="col-12">
                <div class="portfolioHeading text-center">
                    <h1 class="high-lighted-heading">Our Popular Product</h1>
                    <p></p>
                </div>
            </div>
            <!-- END PORTFOLIO HEADING -->

            <!-- START FILTERS -->
            <div class="col-12">
                <div class="clearfix d-flex justify-content-center">
                    <div id="js-filters-blog-posts" class="cbp-l-filters-button cbp-1-filters-alignCenter">
                        <div data-filter="*" class="cbp-filter-item-active cbp-filter-item">All </div>
                        <div data-filter=".Classic" class="cbp-filter-item">Classics</div>
                        <div data-filter=".Fantasy" class="cbp-filter-item">Fantasy</div>
                        <div data-filter=".motion" class="cbp-filter-item">Historical Fiction</div>
                    </div>
                </div>	
            </div>
            <!-- END FILTERS -->

            <!-- START Products IMAGES -->
			<div class="col-12">
			    <div id="js-grid-blog-posts" class="cbp">
				<c:forEach var = "item" items = "${productNew}">
			        <div class="cbp-item Classic Fantasy">
			            <a class="portfolio-circle-cart" href="<c:url value="/AddCart/${item.getMaSach()}"/>">
			                <i class="fa fa-shopping-cart"></i>
			            </a>
			            <div class="cbp-caption-defaultWrap  owl-theme sync-portfolio-carousel owl-carousel">
			                <div class="item"> <a href="<c:url value="${item.getAnh1()}"/>" class="cbp-caption" data-fancybox="gallery1" data-title="Book 1"><img src="<c:url value="${item.getAnh1()}"/>" alt="Book 1"></a></div>
			                <div class="item"> <a href="<c:url value="${item.getAnh2()}"/>" class="cbp-caption" data-fancybox="gallery1" data-title="Book 1"><img src="<c:url value="${item.getAnh2()}"/>" alt="Book 1"></a></div>
			            </div>
			            <div class="row">
			                <div class="col-12 text-center">
			                    <div class="cbp-l-grid-blog-title"><a href="detail?id=${item.getMaSach()}"  class="portfolio-title">${item.getTenSach()}</a></div>
			                </div>
			                <div class="col-12 text-center">
			                    <div class="cbp-l-grid-blog-desc portfolio-des">$${item.getGiaBan()}0</div>
			                </div>
			            </div>
			        </div>
				</c:forEach>
			    </div>
			</div>
			<!-- END PORTFOLIO IMAGES -->

        </div>
    </div>
</div>
<!-- END PORTOLIO SECTION -->

<!--START BANNER SECTION-->
<div class="banner-section parallax-slide">
    <div class="container">
        <div class="row">
            <div class="col-12 col-lg-6 text-center text-lg-left">
                <div class="banner-content-wrapper">
                    <span>TRENDING PRODUCT OF THE WEEK</span>
                    <h1>Books <span>Collections</span></h1>
                    <p></p>
                    <button type="button" class="btn green-color-yellow-gradient-btn">BUY NOW</button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--END BANNER SECTION-->

<!--START LATEST ARRIVALS-->
<div class="lastest_arrivals">
    <div class="container">
        <div class="row">
            <div class="col-12 mb-4">
                <h1>Published Books</h1>
            </div>

            <div class="col-12">
                <div class="lastest_featured_products owl-carousel owl-theme">
					<c:forEach var = "item" items = "${productNew}">
                    <div class="lastest_arrival_items item">
                        <a href="<c:url value="/AddCart/${item.getMaSach()}"/>" class="lastest-addto-cart"><i class="fa fa-shopping-cart"></i></a>
                        <div class="card">
                            <span class="product-type">NEW</span>
                            <div class="image-holder">
                                <a href="<c:url value="${item.getAnh1()}"/>" data-fancybox="lastest_product" data-title="Shirt Name">
                                    <img src="<c:url value="${item.getAnh1()}"/>" class="card-img-top" alt="Lastest Arrivals 1">
                                </a>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-12 text-center">
                                        <h5 class="card-title"><a href="detail?id=${item.getMaSach()}">${item.getTenSach()}</a></h5>
                                    </div>
                                    <div class="col-12 text-center">
                                        <p class="card-text"> $${item.getGiaBan()}0</p>
                                    </div>
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
<!--END LATEST ARRIVALS-->
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
                            <li><a href="book-shop\contact.html">Contact Us</a></li>
                            <li><a href="book-shop\product-listing.html">Products</a></li>
                        </ul>
                    </div>
                    <div class="col-12 col-md-6">
                        <h4 class="text-center text-md-left">Account Info</h4>
                        <ul class="text-center text-md-left">
                            <li><a href="javascript:void(0)">Login & Register</a></li>
                            <li><a href="book-shop\shop-cart.html">Order History</a></li>
                            <li><a href="javascript:void(0)">Shipping Info</a></li>
                            <li><a href="javascript:void(0)">Refund Policy</a></li>
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
                <p class="whitecolor text-center w-100 wow fadeInDown"><a class="web-link" href="http://www.themesindustry.com/" target="_blank"></a></p>
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
                    <div class="listing-search-scroll">
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="book-shop\img\book-1.jpg" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">So Sad Today</a></h5>
                                <p class="category">Award Winning Book</p>
                                <a class="btn black-sm-btn" href="book-shop\shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="book-shop\img\book-2.jpg" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">As I Lay Dying</a></h5>
                                <p class="category">Award Winning Book</p>
                                <a class="btn black-sm-btn" href="book-shop\shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="book-shop\img\book-3.jpg" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">Love Does</a></h5>
                                <p class="category">Award Winning Book</p>
                                <a class="btn black-sm-btn" href="book-shop\shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="book-shop\img\book-2-1.jpg" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">The Last Stand</a></h5>
                                <p class="category">Award Winning Book</p>
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

                    <div class="item">
                        <div class="brand-search-box ml-auto mr-auto">
                            <div class="media">
                                <div class="brand-box-holder">
                                    <a href="javascript:void(0)"> <img class="mr-3" src="book-shop\img\author1.jpg" alt="Generic placeholder image"></a>
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
                                    <a href="javascript:void(0)"> <img class="mr-3" src="book-shop\img\author2.jpg" alt="Generic placeholder image"></a>
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
                                    <a href="javascript:void(0)"> <img class="mr-3" src="book-shop\img\author3.jpg" alt="Generic placeholder image"></a>
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
                                    <a href="javascript:void(0)"><img class="mr-3" src="book-shop\img\author4.jpg" alt="Generic placeholder image"></a>
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
                    <c:forEach var="item" items="${Cart}">
                    
                    
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="<c:url value="${item.value.sach.getAnh1()}"/>" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">${item.value.sach.getTenSach()}</a></h5>
                                <p class="category">${item.value.getAuthorName()}</p>
                                <a class="btn black-sm-btn" href="shopCart"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="detail?id=${item.value.sach.getMaSach()}"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                      </c:forEach>
                        
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="bag-btn">
            <h4 class="total"><span>Total: </span> 15$</h4>
            <a href="javascript:void(0)" class="btn green-color-yellow-gradient-btn">View Bag </a>
            <a href="javascript:void(0)" class="btn yellow-color-green-gradient-btn">Checkout </a>
        </div>

    </div>

</div>
<!--END Cart Box -->

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

<script src="<c:url value="/ASSETS/vendor/js/jquery.themepunch.tools.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/jquery.themepunch.revolution.min.js"/>"></script>
<!-- SLIDER REVOLUTION EXTENSIONS -->
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.actions.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.carousel.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.kenburn.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.layeranimation.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.migration.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.navigation.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.parallax.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.slideanims.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/extensions/revolution.extension.video.min.js"/>"></script>

<!-- Custom Script -->
<script src="<c:url value="/ASSETS/js/script.js"/>"></script>
</body>
</html>