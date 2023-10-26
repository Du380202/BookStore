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
	    
	    .mg-5px {
	    	margin-left: 5px ;
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
        
        .cart_table .quote input {
		    margin: 0;
		    width: 35px;
		}
    
		
		.cart_table .shopping-product {
		    display: inline-block;
		    height: 70px;
		    margin-right: 10px;
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
                                                <li><i class="lni-angle-double-right right-arrow"></i><a class="dropdown-item" href="#">Detail Page</a></li>
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
                                        <a class="nav-link" href="product-listing.html"> HOME</a>
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
                                                    <a class="nav-link" href="list">Listing One</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="list">Detail Page</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="shopCart">StandAlone Page</a>
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

<!--slider sec strat-->
<section id="slider-sec" class="slider-sec parallax" style="background: url('ASSETS/img/banner1.3.jpg');">
</section>
<!--slider sec end-->

<!-- START HEADING SECTION -->
<div class="about_content">

    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-12 col-lg-10  text-center text-lg-left wow slideInUp" data-wow-duration="2s">
                <h1 class="heading">Get Ready For Checkout?</h1>
                <p class="para_text"></p>
            </div>
        </div>
    </div>


    <!-- START SHOP CART SECTION -->
    <div class="shop-cart wow slideInUp" data-wow-duration="2s">
        <div class="container">
            <!-- START SHOP CART TABLE -->
            <div class="row pt-5">
                <div class="col-12 col-md-12  cart_table wow fadeInUp animated" data-wow-delay="300ms" style="visibility: visible; animation-delay: 300ms; animation-name: fadeInUp;">
                    <div class="table-responsive">
                        <table class="table table-bordered border-radius">
                            <thead>
                            <tr>
                            	<th class="darkcolor">Image</th>
                                <th class="darkcolor">Product</th>
                                <th class="darkcolor">Price</th>
                                <th class="darkcolor">Quantity</th>
                                <th class="darkcolor">Total</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="item" items="${cartView}">
                            	
                            <tr>
                            	<td>
                                    
                                      <div class="col-12 col-lg-2 product-detail-cart-image">
                                           <a class="shopping-product" href=""><img src="<c:url value="${item.getImg1()}"/>" alt="Generic placeholder image"></a>
                                       </div>

                                </td>
                                <td>
                                    <div class="d-table product-detail-cart">

                                        <div class="media">
                                            <div class="row no-gutters">
                                                <div class="col-12 col-lg-10 mt-auto product-detail-cart-data">
                                                    <div class="media-body ml-lg-3">
                                                        <h4 class="product-name "><a href="product-detail.html"> ${item.getTieuDe()}</a></h4>
                                                        <p class="product-des "> ${item.getTenTG()}</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <h4 class="text-center d-table-price amount">${item.getGia()}</h4>
                                </td>
                                <td class="text-center">
									    <div class="quote text-center mt-1">
									        <div class="input_plus_mins">
									            <div class="qty text-center" style="justify-content: center;">
									                <span class="minus bg-dark" id="decreaseButton" onclick="confirmUpdate(${item.getIdSach()}, ${item.getSoLuong()}-1, ${item.getGiaBanSp()} -${item.getGia()})"><i class="lni-minus"></i></span>
									                <input type="number" class="count" name="qty" value="${item.getSoLuong()}">
									                <span class="plus bg-dark" id="increaseButton" onclick="confirmUpdate(${item.getIdSach()}, ${item.getSoLuong()}+1, ${item.getGiaBanSp()} +${item.getGia()})"><i class="lni-plus"></i></span>
									            </div>
									        </div>
									    </div>
									</td>

                                <td>
                                    <h4 class="text-center amount">${item.getGiaBanSp()}</h4>
                                </td>
                                <td class="text-center"><a class="btn-close" href="RemoveCart/${item.getIdSach()}"><i class="lni-trash"></i></a></td>
                            </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                   
                </div>
            </div>
            <!-- END SHOP CART TABLE -->

            <!-- START SHOP CART CHECKOUT FORM -->
            <div class="row pt-5">
                <div class="col-12 col-lg-6 wow slideInLeft" data-wow-duration="2s">
                    <div class="calculate-shipping">
                        <h4 class="heading">Place Order</h4>
                        <form:form action="PlaceOrder" modelAttribute="donhang">
                        <div class="form-group">
                                <form:input class="form-control" placeholder="Phone Number" path="sdt"/>
                            </div>
                           <div class="form-group">
                                <form:input class="form-control" placeholder="Address" path="diaChi"/>
                            </div>
                            <div class="form-group">
                                <label class="select form-control">
                                    <select name="country" id="states">
                                        <option>Payment Method</option>
                                        <option>Thanh toán khi nhận hàng</option>
                                        <option>Thanh toán ngay</option>
                                    </select>
                                </label>
                            </div>
                           
                       
	                          <button class="btn green-color-yellow-gradient-btn user-contact contact_btn"  type="submit">
	                          	PAYMENT
	                         </button>
	              
                        </form:form>
                    </div>
                </div>
                <div class="col-12 col-lg-6 wow slideInRight" data-wow-duration="2s">
                    <div class="card-total">
                        <h4 class="heading">Total Price</h4>
                        <table>
                            <tr>
                                <td>Total</td>
                                <td>$${TotalPrice}</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <!-- END SHOP CART CHECKOUT FORM -->

        </div>
    </div>
    <!-- END SHOP CART SECTION-->

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


<!-- JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.3.5/dist/sweetalert2.all.min.js"></script>
	<script>
	    function confirmUpdate(productId, soluong, total) {
	        /* Swal.fire({
	            title: 'Xác nhận',
	            text: 'Bạn có chắc chắn muốn cập nhật giỏ hàng này?',
	            icon: 'warning',
	            showCancelButton: true,
	            confirmButtonText: 'cập nhật',
	            cancelButtonText: 'Hủy bỏ'
	        }).then((result) => {
	            if (result.isConfirmed) {
	                 */
	                window.location.href = "updateCart/" + productId + "/" + soluong + "/" + total;
	           /*  }
	        }); */
	    }
	</script>
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

<script src="<c:url value="/ASSETS/vendor/js/bundle.min.js"/>"></script>
<!-- Plugin Js -->
<script src="<c:url value="/ASSETS/vendor/js/jquery.fancybox.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/owl.carousel.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/swiper.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/jquery.cubeportfolio.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/wow.min.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/bootstrap-input-spinner.js"/>"></script>
<script src="<c:url value="/ASSETS/vendor/js/parallaxie.min.js"/>"></script>

<!-- Custom Script -->
<script src="<c:url value="/ASSETS/js/script.js"/>"></script>
</body>
</html>