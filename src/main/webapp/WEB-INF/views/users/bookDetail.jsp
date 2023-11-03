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
        
        .avatar-comment {
        	width: 60px !important ;
            height: 60px !important ; 
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
        
        .user-rating-select {
        	display: flex;
        	
        }
        
        .user-rating-select li a i {
		    color: #999; /* Màu mặc định của ngôi sao */
		    margin: 5px;
		        
		}
		
		.user-rating-select li a i:hover {
		    color: gold; /* Màu khi bạn trỏ chuột vào */
		}
				
		.media-auto {
	        display: -ms-flexbox;
	        /* display: flex; */
	        -ms-flex-align: start;
	        align-items: flex-start
	    }
	    .tab-content .reviews .media-auto .user-rating li a {
	        color: #f5c136;
	    }
	    
	    .tab-content .reviews .media-auto {
		    margin-bottom: 15px;
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
                                                                <c:forEach var="item" items="${productNew}">
                                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="detail?id=${item.getMaSach()}">${item.getTenSach()}</a></li>
                                                              </c:forEach>
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
                                            <a class="nav-link dropdown-toggle" href="javascript:void(0)"
                                                data-toggle="dropdown" aria-haspopup="true"
                                                aria-expanded="false">PAGES</a>
                                            <div class="dropdown-menu">
                                                <ul>
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="list">Listing One</a></li>
                                                <c:if test="${empty loggedInUser}">
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="signin">Form Page</a></li>
                                             	</c:if>
                                             	<c:if test="${not empty loggedInUser}">
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="form">Form Page</a></li>
                                             	</c:if>
                                             <c:if test="${empty loggedInUser}">
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="signin">ShopCart Page</a></li>
                                             </c:if>
                                             
                                             <c:if test="${not empty loggedInUser}">
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="shopCart">ShopCart Page</a></li>
                                             </c:if>
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
                                    <a class="nav-link" href="shopCart">
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
<section id="slider-sec" class="slider-sec parallax" style="background: url('ASSETS/img/banner1.1.jpg');">
</section>
<!--slider sec end-->

<!-- START HEADING SECTION -->
<div class="about_content">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <div class="product-body">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb text-center text-lg-left">
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Home</a></li>
                            <li class="breadcrumb-item"><a href="javascript:void(0)">Categories</a></li>
                            <li class="breadcrumb-item" aria-current="page"><a href="javascript:void(0)">Books</a></li>
                            <li class="breadcrumb-item"><a class="active" href="javascript:void(0)">The Road</a></li>
                        </ol>
                    </nav>
                    <div class="pro-detail-sec row">
                        <div class="col-12">
                            <h4 class="pro-heading text-center text-lg-left">${productDetail.getTenSach()}</h4>
                            <p class="pro-text text-center text-lg-left"></p>
                        </div>
                    </div>
                    <div class="row product-list product-detail">

                        <div class="col-12 col-lg-6 product-detail-slider">
                            <div class="wrapper">
                                <div class="Gallery swiper-container img-magnifier-container" id="gallery">
                                    <div class="swiper-wrapper myimgs">
                                        <div class="swiper-slide"> <a href="<c:url value="${productDetail.getAnh1()}"/>" data-fancybox="1" title="Zoom In"><img class="myimage" src="<c:url value="${productDetail.getAnh1()}"/>" alt="gallery"></a></div>
                                        <div class="swiper-slide"> <a href="<c:url value="${productDetail.getAnh2()}"/>" data-fancybox="2" title="Zoom In"><img class="myimage" src="<c:url value="${productDetail.getAnh2()}"/>" alt="thumnails"></a></div>
                                        <div class="swiper-slide"> <a href="<c:url value="${productDetail.getAnh3()}"/>" data-fancybox="3" title="Zoom In"><img class="myimage" src="<c:url value="${productDetail.getAnh3()}"/>" alt="thumnails"></a></div>
                                    </div>
                                </div>
                                <div class="Thumbs swiper-container" id="thumbs">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide"> <img src="<c:url value="${productDetail.getAnh1()}"/>" alt="thumnails"></div>
                                        <div class="swiper-slide"> <img src="<c:url value="${productDetail.getAnh2()}"/>" alt="thumnails"></div>
                                        <div class="swiper-slide"> <img src="<c:url value="${productDetail.getAnh3()}"/>" alt="thumnails"></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-6 text-center text-lg-left">
                            <div class="product-single-price">
                                <h4><span class="real-price">$${productDetail.getGiaBan()}</span> <span><del>$450</del></span></h4>
                                <p class="pro-description">
                                
                                
                                
                                </p>
                            </div>

                            <div class="product-checklist">
                                <ul>
                                    <li><i class="fas fa-check"></i> Satisfaction 100% Guaranteed</li>
                                    <li><i class="fas fa-check"></i> free shipping on orders over $99</li>
                                    <li><i class="fas fa-check"></i> 14 days easy Return</li>
                                </ul>
                            </div>

                            <div class="row product-quantity input_plus_mins no-gutters">

                             <c:if test="${productDetail.getSoLuongTon() > 0}">
                                <div class="col-12 col-lg-9">
                                    <a href="<c:url value="/AddCart/${productDetail.getMaSach()}"/>"><button class="btn green-color-yellow-gradient-btn">ADD TO CART</button></a>
                                </div>
                            </c:if>
                            
                             <c:if test="${productDetail.getSoLuongTon() == 0}">
                                <div class="col-12 col-lg-9">
                                    <a href="javascript:void(0)"/><button class="btn green-color-yellow-gradient-btn">OUT OF STOCK</button></a>
                                </div>
                            </c:if>
                            </div>
								

                            <div class="dropdown-divider"></div>

                            <div class="product-tags-list">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                    <c:forEach var="item" items="${categories}">
							        	<c:if test="${productDetail.getMaTheLoai() == item.getIdTheLoai()}">
							        	<li class="breadcrumb-item"><p class="d-inline">SKU: <span>${productDetail.getMaSach() }</span></p></li>
                                        <li class="breadcrumb-item"><span class="d-inline">Categories: <a href="javascript:void(0)">${item.getTenTheLoai()}</a><span class="comma-separtor"></li>
								        </c:if>
							        </c:forEach>
                                        
                                    </ol>
                                </nav>
                            </div>

                            <div class="share-product-details">
                                <ul class="share-product-icons">
                                    <li><p>Share Link:</p></li>
                                    <li><a href="javascript:void(0)" class="facebook-bg-hvr"><i class="fab fa-facebook-f" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)" class="twitter-bg-hvr"><i class="fab fa-twitter" aria-hidden="true"></i></a> </li>
                                    <li><a href="javascript:void(0)" class="linkedin-bg-hvr"><i class="fab fa-linkedin-in" aria-hidden="true"></i></a></li>
                                    <li><a href="javascript:void(0)" class="instagram-bg-hvr"><i class="fab fa-instagram" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-12 mt-4 mb-4">
                            <div class="row no-gutters product-all-details">

                                <ul class="col-12 nav nav-tabs" id="myTab" role="tablist">
                                    <li class="col-4 nav-item">
                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Project Description</a>
                                    </li>
                                    <li class="col-4 nav-item">
                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Additional Information</a>
                                    </li>
                                    <li class="col-4 nav-item">
                                        <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Customer Reviews </a>
                                    </li>
                                </ul>
                                <div class="col-12 tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <p class="product-tab-description text-center text-lg-left">${productDetail.getMoTa()}</p>
<!--                                         <p class="product-tab-description text-center text-lg-left">If you are a small business and you are interested in small rebranding then this is a perfect plan for you, having Five years experience in Blogging, photographing, Disgning and love to cycling,Writting,Singing and Traveling around the world</p>
 -->                                    </div>
                                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                                        <div class="row">
                                            <div class="col-12">
                                                <table class="table table-striped">
                                                    <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">First</th>
                                                        <th scope="col">Last</th>
                                                        <th scope="col">Handle</th>
                                                    </tr>
                                                    </thead>
                                                    <tbody>
                                                    <tr>
                                                        <th scope="row">1</th>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">2</th>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">3</th>
                                                        <td>Larry</td>
                                                        <td>the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">4</th>
                                                        <td>Alex</td>
                                                        <td>Thorn</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade reviews" id="contact" role="tabpanel" aria-labelledby="contact-tab">
										<c:forEach var="item" items="${comments}">
                                        <div class="media-auto">
                                            <div class="row no-gutter">
                                                <div class="col-12 col-lg-2 p-0">
													
                                                    <div class="row no-gutters">
                                                        <div class="col-12 d-flex  justify-content-center">
                                                            <img class="avatar-comment" src="<c:url value="${item.getAvatar()}"/>" alt="Generic placeholder image">
                                                        </div>
                                                        <div class="col-12 d-flex mt-2 justify-content-center">
                                                            <ul class="user-rating">
                                                                <li><a href="#"><i class="lni-star-filled"></i></a></li>
                                                                <li><a href="#"><i class="lni-star-filled"></i></a></li>
                                                                <li><a href="#"><i class="lni-star-filled"></i></a></li>
                                                                <li><a href="#"><i class="lni-star-filled"></i></a></li>
                                                                <li><a href="#"><i class="lni-star"></i></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-12 col-lg-10 p-0">
                                                    <div class="media-body" style="padding: 0px 25px;  border-left: 1px solid #eceff6;">
                                                        <span class="text-center text-lg-left d-block">${item.getNgay() }</span>
                                                        <h5 class="mb-2 text-center text-lg-left">${item.getUserName() }</h5>
                                                        <p class="text-center text-lg-left">${item.getNoiDung()}</p>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        </c:forEach>

                                        <div class="row pl-2 pr-2">
                                            <div class="col-12 d-flex mb-4 mt-3">
                                                <h5 class="text-nowrap">Add Review</h5>
                                                <hr class="w-100 ml-5">
                                            </div>
                                            <div class="col-12">
                                                <form:form action="detail/${productDetail.getMaSach()}" modelAttribute="comment" class="getin_form border-form">
                                                    <div class="row">
                                                        <div class="col-12 col-lg-2 text-center text-lg-left">
                                                            <h5 class="text-nowrap">Your Rating</h5>
                                                        </div>
                                                        <div class="col-12 col-lg-10 text-center text-lg-left">
														    <ul class="user-rating-select">
														        <li><a href="" id="star1"><i class="lni-star"></i></a></li>
														        <li><a href="" id="star2"><i class="lni-star"></i></a></li>
														        <li><a href="" id="star3"><i class="lni-star"></i></a></li>
														        <li><a href="#" id="star4"><i class="lni-star"></i></a></li>
														        <li><a href="#" id="star5"><i class="lni-star"></i></a></li>
														    </ul>
														</div>

                                                        <div class="col-12">
                                                            <div class="form-group">
                                                                <form:textarea path="noiDung" class="form-control textareaclass" rows="5" id="comment" placeholder="Your Review"></form:textarea>
                                                            </div>
                                                        </div>

                                                        <div class="col-12 mt-3">
                                                            <div class="form-group d-flex justify-content-center d-lg-block">
                                                                <button type="submit" class="text-center btn green-color-yellow-gradient-btn">Add Review</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </form:form>
                                            </div>
                                        </div>

                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                </div>

            </div>
        </div>
    </div>

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
                <p class="whitecolor text-center w-100 wow fadeInDown"> <a class="web-link" href="http://www.themesindustry.com/" target="_blank"></a></p>
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
                                <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-1.jpg"/>" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">So Sad Today</a></h5>
                                <p class="category">light wear Lastest</p>
                                <a class="btn black-sm-btn" href="shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-2.jpg"/>" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">As I Lay Dying</a></h5>
                                <p class="category">light wear Lastest</p>
                                <a class="btn black-sm-btn" href="shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-3.jpg"/>" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">Love Does</a></h5>
                                <p class="category">light wear Lastest</p>
                                <a class="btn black-sm-btn" href="shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
                                <a class="btn black-sm-btn" href="javascript:void(0)"><i class="fas fa-eye"></i></a>
                            </div>
                        </div>
                        <div class="media row">
                            <div class="img-holder ml-1 mr-2 col-4">
                                <a href="javascript:void(0)"><img src="<c:url value="ASSETS/img/book-2-1.jpg"/>" class="align-self-center" alt="cartitem"></a>
                            </div>
                            <div class="media-body mt-auto mb-auto col-8">
                                <h5 class="name"><a href="javascript:void(0)">The Last Stand</a></h5>
                                <p class="category">light wear Lastest</p>
                                <a class="btn black-sm-btn" href="shop-cart.html"><i class="fas fa-shopping-bag"></i></a>
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
<!-- <script>
//JavaScript code
const stars = document.querySelectorAll('.user-rating li');
let rating = 0;

stars.forEach(star => {
    star.addEventListener('click', () => {
        rating = stars.indexOf(star) + 1; // Lấy vị trí của ngôi sao và cộng thêm 1 để có giá trị rating
        for (let i = 0; i < stars.length; i++) {
            if (i < rating) {
                stars[i].classList.add('selected');
            } else {
                stars[i].classList.remove('selected');
            }
        }
        console.log('Rating: ' + rating); // In ra giá trị rating trong console
    });
});

</script> -->

<script>
const stars = document.querySelectorAll('.user-rating-select li a i');
let currentRating = 0;
let isRated = false; // Biến cờ kiểm tra đã đánh giá hay chưa
let ratingCount = 0; // Số lượng đánh giá
stars.forEach((star, index) => {
    star.addEventListener('click', () => {
        if (!isRated) {
            currentRating = index + 1;
            isRated = true; // Đã đánh giá xong
            for (let i = 0; i <= index; i++) {
                stars[i].style.color = 'gold';
            }
            ratingCount++; // Tăng số lượng đánh giá
            updateRatingCount(); // Cập nhật số lượng đánh giá trên view

            // Sử dụng AJAX để gửi số lượng đánh giá lên controller
            sendRatingToController(ratingCount);
        }
    });

    star.addEventListener('mouseenter', () => {
        if (!isRated) {
            for (let i = 0; i <= index; i++) {
                stars[i].style.color = 'gold';
            }
        }
    });

    star.addEventListener('mouseleave', () => {
        if (!isRated) {
            for (let i = 0; i <= index; i++) {
                stars[i].style.color = '#999';
            }
        }
    });
});
</script>
<!-- Custom Script -->
<script src="<c:url value="/ASSETS/js/script.js"/>"></script>
</body>
</html>