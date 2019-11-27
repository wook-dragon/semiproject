<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="dorne-load"></div>
    </div>

    <!-- ***** Search Form Area ***** -->
    <div class="dorne-search-form d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-close-btn" id="closeBtn">
                        <i class="pe-7s-close-circle" aria-hidden="true"></i>
                    </div>
                    <form action="#" method="get">
                        <input type="search" name="caviarSearch" id="search" placeholder="Search Your Desire Destinations or Events">
                        <input type="submit" class="d-none" value="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Header Area Start ***** -->
    <jsp:include page="/common/top.jsp"></jsp:include>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)">
    </div>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- Explore Area -->
    <section class="dorne-explore-area d-md-flex">
        <!-- Explore Search Area -->
        <div class="explore-search-area d-md-flex">
            <!-- Explore Search Form -->
            <div class="explore-search-form" style = "background-color:#ffefd5; opacity:0.8">
                <h6 style = "color:#6b8e23; ">어떤 지역으로 떠나고 싶으세요?</h6>
                <!-- Tabs -->
                <div class="nav nav-tabs" id="heroTab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-places-tab" data-toggle="tab" href="#nav-places" role="tab" aria-controls="nav-places" aria-selected="true">Places</a>
                </div>
                <!-- Tabs Content -->
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-places" role="tabpanel" aria-labelledby="nav-places-tab">
                        <form action="#" method="get">
                            <select class="custom-select" id="destinations">
                                <option selected>Your Destinations</option>
                                <option value="1">New York</option>
                                <option value="2">Latvia</option>
                                <option value="3">Dhaka</option>
                                <option value="4">Melbourne</option>
                                <option value="5">London</option>
                            </select>
                            <select class="custom-select" id="catagories">
                                <option selected>All Catagories</option>
                                <option value="1">Catagories 1</option>
                                <option value="2">Catagories 2</option>
                                <option value="3">Catagories 3</option>
                                <option value="3">Catagories 4</option>
                            </select>
                         
 
                            <div class="row mt-md-5 mt-0">
                                <div class="col-12 col-xl-6">
                                    <label class="custom-control custom-checkbox mb-3">
                                        <input type="checkbox" class="custom-control-input" >
                                        <span class="custom-control-indicator"></span>
                                        <span class="custom-control-description" style = "color: #6b8e23;">Accepts Credit Cards</span>
                                    </label>
                                </div>
                               
                            </div>
                            <button type="submit" class="btn dorne-btn mt-50 bg-white text-dark"><i class="fa fa-search pr-2" aria-hidden="true"></i> Search</button>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="nav-events" role="tabpanel" aria-labelledby="nav-events-tab">
                        <form action="#" method="get">
                            <select class="custom-select" id="events-destinations">
                                <option selected>Your Destinations</option>
                                <option value="1">New York</option>
                                <option value="2">Latvia</option>
                                <option value="3">Dhaka</option>
                                <option value="4">Melbourne</option>
                                <option value="5">London</option>
                            </select>
                            <select class="custom-select" id="events-catagories">
                                <option selected>All Catagories</option>
                                <option value="1">Catagories 1</option>
                                <option value="2">Catagories 2</option>
                                <option value="3">Catagories 3</option>
                                <option value="3">Catagories 4</option>
                            </select>
                            <select class="custom-select" id="events-price-range">
                                <option selected>Price Range</option>
                                <option value="1">$100 - $499</option>
                                <option value="2">$500 - $999</option>
                                <option value="3">$1000 - $4999</option>
                                <option value="3">$5000+</option>
                            </select>
                            <select class="custom-select" id="events-proximity">
                                <option selected>Proximity</option>
                                <option value="1">Proximity 1</option>
                                <option value="2">Proximity 2</option>
                                <option value="3">Proximity 3</option>
                                <option value="3">Proximity 4</option>
                                <option value="3">Proximity 5</option>
                            </select>
                            <button type="submit" class="btn dorne-btn mt-50 bg-white text-dark"><i class="fa fa-search pr-2" aria-hidden="true"></i> Search</button>
                        </form>
                    </div>
                </div>
            </div>
            
            <!-- 후기들 + 지도로 찾기 할 때 후기 추천 -->
            <div class="explore-search-result">
                <!-- Single Features Area -->
                <div class="single-features-area" >
                    <img src="img/bg-img/review-1.jpg" alt=""  style ="height: 300px;">
                    <!-- Price -->
                    <div class="price-start">
                        <p>FROM $59/night</p>
                    </div>
                    <div class="feature-content d-flex align-items-center justify-content-between">
                        <div class="feature-title">
                            <h5>Ibiza</h5>
                            <p>Party</p>
                        </div>
                        <div class="feature-favourite">
                            <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <!-- Single Features Area -->
                <div class="single-features-area">
                    <img src="img/bg-img/feature-2.jpg" alt="">
                    <!-- Price -->
                    <div class="price-start">
                        <p>FROM $59/night</p>
                    </div>
                    <div class="feature-content d-flex align-items-center justify-content-between">
                        <div class="feature-title">
                            <h5>Paris</h5>
                            <p>Luxury</p>
                        </div>
                        <div class="feature-favourite">
                            <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <!-- Single Features Area -->
                <div class="single-features-area">
                    <img src="img/bg-img/feature-3.jpg" alt="">
                    <!-- Price -->
                    <div class="price-start">
                        <p>FROM $59/night</p>
                    </div>
                    <div class="feature-content d-flex align-items-center justify-content-between">
                        <div class="feature-title">
                            <h5>Lake Como</h5>
                            <p>Spectacular</p>
                        </div>
                        <div class="feature-favourite">
                            <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
                <!-- Single Features Area -->
                <div class="single-features-area">
                    <img src="img/bg-img/feature-4.jpg" alt="">
                    <!-- Price -->
                    <div class="price-start">
                        <p>FROM $59/night</p>
                    </div>
                    <div class="feature-content d-flex align-items-center justify-content-between">
                        <div class="feature-title">
                            <h5>Greece</h5>
                            <p>Sunny</p>
                        </div>
                        <div class="feature-favourite">
                            <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Explore Map Area -->
        <div class="explore-map-area">
            <div id="exploreGoogleMap"></div>
        </div>
    </section>

    <!-- ****** Footer Area Start ****** -->
    <jsp:include page="/common/bottom.jsp"></jsp:include>
    <script src="js/google-map/explore-map-active.js"></script>
    <!-- ****** Footer Area End ****** -->
</body>

</html>