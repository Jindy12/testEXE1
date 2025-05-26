<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>
<fmt:setLocale value="en_US"/>

<!doctype html>
<html class="no-js" lang="en">

    <head>
        <!-- meta data -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!--font-family-->
        <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

        <link href="https://fonts.googleapis.com/css?family=Rufina:400,700" rel="stylesheet">

        <!-- title of site -->
        <title>CarShop</title>

        <!-- For logo png -->
        <link rel="shortcut icon" type="image/icon" href="img/logo3.png"/>

        <!--font-awesome.min.css-->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!--linear icon css-->
        <link rel="stylesheet" href="assets/css/linearicons.css">

        <!--flaticon.css-->
        <link rel="stylesheet" href="assets/css/flaticon.css">

        <!--animate.css-->
        <link rel="stylesheet" href="assets/css/animate.css">

        <!--owl.carousel.css-->
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">

        <!--bootstrap.min.css-->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">

        <!-- bootsnav -->
        <link rel="stylesheet" href="assets/css/bootsnav.css" >	

        <!--style.css-->
        <link rel="stylesheet" href="assets/css/style.css">

        <!--responsive.css-->
        <link rel="stylesheet" href="assets/css/responsive.css">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->

        <!--[if lt IE 9]>
                        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
            .car-desc {
                overflow: hidden;
                text-overflow: ellipsis;
                display: -webkit-box;
                -webkit-line-clamp: 2; /* number of lines to show */
                line-clamp: 2;
                -webkit-box-orient: vertical;

            }
            .hello{
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .footInfo{
                color: white;
                font-size: 16px;
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .footH2{
                height: 80px;
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;

            }
            .footInfo {
                text-decoration: none;
                color: white;
            }

            .footInfo:hover {
                text-decoration: underline;
                color: #ccc; /* Màu khi hover */
                transform: none; /* Không áp dụng transform khi hover */
            }


            .contact{
                background-color: black;

            }
        </style>
    </head>

    <body>
        <!--welcome-hero start -->
        <section id="home" class="welcome-hero">



            <!-- top-area Start -->
            <div class="top-area">
                <div class="header-area">

                    <!-- Start Navigation -->
                    <nav class="navbar navbar-default bootsnav  navbar-sticky navbar-scrollspy"  data-minus-value-desktop="70" data-minus-value-mobile="55" data-speed="1000">

                        <div class="container">

                            <!-- Start Header Navigation -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                                    <i class="fa fa-bars"></i>
                                </button>

                                <a href="home" style="text-decoration:none; color: black"> <img class="headerLogo"
                                                                                                src="img/logoWnoBG.png" alt="" style="height: 78px;"></a>
                                <!--                                <a class="navbar-brand" href="index.html">Carpipi<span></span></a>-->
                            </div><!--/.navbar-header-->
                            <!-- End Header Navigation -->

                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse menu-ui-design" id="navbar-menu">
                                <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                                    <!--                                    <li class=" scroll active"><a href="home">Trang Chủ</a></li>-->
                                    <c:choose>
                                        <c:when test="${sessionScope.account.roleId == 1}">
                                            <li><a href="admindashboard">Admin</a></li>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${sessionScope.account.roleId == 2}">
                                            <li><a href="marketingdashboard">Makerting</a></li>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${sessionScope.account.roleId == 3}">
                                            <li><a href="dashboardforsale">Sale</a></li>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${sessionScope.account.roleId == 5}">
                                            <li><a href="shipper">Shipper</a></li>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${sessionScope.account == null||sessionScope.account.roleId == 4}">
                                            <li class="scroll"><a href="#new-cars">Mẫu mới</a></li>
                                            </c:when>
                                        </c:choose>
                                    
<!--                                    <li class="scroll"><a href="#featured-cars">Xe tiêu biểu</a></li>-->


                                    <li class=""><a href="productlist">Danh sách mẫu</a></li>
                                    <li class=""><a href="BlogListServlet">Tin xe</a></li>
                                        <c:if test="${sessionScope.account == null||sessionScope.account.roleId == 4}">
<!--                                        <li ><li class="scroll"><a href="#contact">Liên lạc</a></li></li>-->
                                        </c:if>
                                    <c:choose>
                                        <c:when test="${sessionScope.account == null}">
                                            <li></li>
                                            </c:when>
                                            <c:otherwise>
                                            <li><a href="userprofile">Welcome, ${sessionScope.account.lastName}!</a></li>
                                            </c:otherwise>
                                        </c:choose>    
                                    <c:if test="${sessionScope.account != null}">
                                        <li>
                                            <a href="carts">Giỏ Hàng</a>
                                        </li>
                                    </c:if>

                                    
                                        <c:choose>
                                            <c:when test="${sessionScope.account == null}">
                                            <li><a href="byaccount">Đăng Nhập</a></li>
                                            </c:when>
                                            <c:otherwise>
                                            <li><a href="logout">Đăng Xuất</a></li>
                                            </c:otherwise>
                                        </c:choose>
                                </ul><!--/.nav -->
                            </div><!-- /.navbar-collapse -->
                        </div><!--/.container-->
                    </nav><!--/nav-->
                    <!-- End Navigation -->
                </div><!--/.header-area-->
                <div class="clearfix"></div>

            </div><!-- /.top-area-->
            <!-- top-area End -->

            <div class="container">
                <div class="welcome-hero-txt">
                    <h2>Sở hữu chiếc xe bạn mong muốn với mức giá hợp lý! </h2>
                </div>
            </div>


        </section><!--/.welcome-hero-->
        <!--welcome-hero end -->


        <!--new-cars start -->
        <section id="new-cars" class="new-cars">
            <div class="container">
                <div class="section-header">
                    <p>Khám phá <span></span> Những mẫu xe mới nhất</p>
                    <h2>mẫu xe mới nhất</h2>
                </div><!--/.section-header-->
                <div class="new-cars-content">
                    <div class="owl-carousel owl-theme" id="new-cars-carousel">
                        <c:forEach var="nCar" items="${newProducts}">
                            <div class="new-cars-item">
                                <div class="single-new-cars-item">
                                    <div class="row">
                                        <div class="col-md-7 col-sm-12">
                                            <div class="new-cars-img">
                                                <img src="${nCar.imageUrl}" alt="${nCar.title}"/>
                                            </div><!--/.new-cars-img-->
                                        </div>
                                        <div class="col-md-5 col-sm-12">
                                            <div class="new-cars-txt">
                                                <h2><a href="productdetail?productId=${nCar.productId}">${nCar.title}<span> za100</span></a></h2>
                                                <p>
                                                    ${nCar.description}
                                                </p>
                                                <button class="welcome-btn new-cars-btn" onclick="window.location.href = 'productdetail?productId=${nCar.productId}'">
                                                    Xem chi tiết
                                                </button>
                                            </div><!--/.new-cars-txt-->	
                                        </div><!--/.col-->
                                    </div><!--/.row-->
                                </div><!--/.single-new-cars-item-->
                            </div><!--/.new-cars-item-->
                        </c:forEach>
                    </div><!--/#new-cars-carousel-->
                </div><!--/.new-cars-content-->
            </div><!--/.container-->
        </section><!--/.new-cars-->
        <!--new-cars end -->
        <!--new-cars end -->


        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!--featured-cars start -->
        <section id="featured-cars" class="featured-cars">
            <div class="container">
                <div class="section-header">
                    <p>checkout <span>the</span> featured cars</p>
                    <h2>featured cars</h2>
                </div><!--/.section-header-->
                <div class="featured-cars-content" >
                    <div class="d-flex" style="width: 100%; display: flex; flex-wrap: wrap; gap: 20px; justify-content: center;">
                        <c:forEach var="product" items="${featuredProducts}">
                            <div class="w-25" style="width: 20%;"> 
                                <div class="single-featured-cars">
                                    <div class="featured-img-box">
                                        <div class="featured-cars-img">
                                            <!-- Hiển thị hình ảnh đầu tiên của sản phẩm -->
                                            <c:choose>
                                                <c:when test="${not empty product.images}">
                                                    <img src="${product.images[0].imageUrl}" alt="${product.name}">
                                                </c:when>
                                                <c:otherwise>
                                                    <img src="assets/images/default-car.png" alt="${product.name}">
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                        <div class="featured-model-info">
                                            <p>
                                                Seat: ${product.seatNumber} <!-- Hiển thị số ghế -->
                                                <span class="featured-mi-span"> ${product.fuel}</span> <!-- Hiển thị loại nhiên liệu -->
                                                automatic 
                                            </p>
                                        </div>
                                    </div>
                                    <div class="featured-cars-txt">
                                        <!-- Tên và đường dẫn chi tiết sản phẩm -->
                                        <h2><a href="productdetail?productId=${product.productId}">${product.name}</a></h2>
                                        <!-- Hiển thị giá sản phẩm với định dạng tiền tệ -->
                                        <h3><fmt:formatNumber value="${product.getPrice()}" type="number" pattern="#,##0.0"/> USD</h3>
                                        <!-- Hiển thị mô tả ngắn về sản phẩm -->
                                        <p class="car-desc">${product.description}</p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div><!--/.container-->
        </section><!--/.featured-cars-->
        <!--featured-cars end --> 




        <!--brand strat -->
        <section id="brand"  class="brand">
            <div class="container">
                <div class="brand-area">
                    <div class="owl-carousel owl-theme brand-item">
                        <c:forEach var="bra" items="${brandList}">
                            <div class="item">
                                <a href="productlist?brandId=${bra.brandId}&page=1">
                                    <img src="${bra.image}" alt="brand-image" />
                                </a>
                            </div><!--/.item-->
                        </c:forEach>
                    </div><!--/.owl-carousel-->
                </div><!--/.clients-area-->

            </div><!--/.container-->

        </section><!--/brand-->	
        <!--brand end -->

        <!--contact start-->
        <footer id="contact"  class="contact">
            <div class="container">
                <div class="footer-top">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="single-footer-widget">
                                <div class="footer-logo">
                                    <a href="index.html" target="_blank" style="text-decoration:none; color: black"> <img class="headerLogo"
                                                                                                                          src="img/logoWnoBG.png" alt="" style="height: 80px;"></a>
                                </div>
                                <p style="color: white; font-size: 16px">
                                    Công ty chúng tôi chuyên phân phối các hãng xe của Đức.
                                </p>
                                <div class="footer-contact">
                                    <ul>
                                        <a href="mailto:carpipi@gmail.com" target="_blank" style="text-decoration:none; color: white; font-size: 16px">
                                            <i class="fa fa-envelope"></i>
                                            carpipi@gmail.com
                                        </a>
                                    </ul>
                                    <ul style="color: white; font-size: 16px">
                                        <i class="fa fa-phone"></i>
                                        0987654321
                                    </ul>




                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6">
                            <div class="single-footer-widget" style="color: white; font-size: 16px; display: flex; flex-direction: column; align-items: center;">
                                <h2 class="footH2" style=" font-size: 20px; height: 80px; text-align: center;">về carpipi</h2>
                                <ul style="list-style: none; padding: 0; margin: 0; text-align: center;">
                                    <li><a class="footInfo" href="carpipiInfo.jsp" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">về chúng tôi</a></li>
                                    <li><a class="footInfo" href="carpipiInfo.jsp" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">sự nghiệp</a></li>
                                    <li><a class="footInfo" href="carpipiInfo.jsp" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">điều khoản dịch vụ</a></li>
                                    <li><a class="footInfo" href="carpipiInfo.jsp" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">chính sách bảo mật</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-md-4 col-xs-12">
                            <div class="single-footer-widget" style="display: flex; flex-direction: column; align-items: center; color: white;">
                                <h2 class="footH2" style="font-size: 20px; height: 80px; text-align: center;">thương hiệu hàng đầu</h2>
                                <div class="row" style="display: flex; justify-content: center; width: 100%;">
                                    <div class="col-md-7 col-xs-6" style="text-align: center;">
                                        <ul style="list-style: none; padding: 0; margin: 0;">
                                            <li><a class="footInfo" href="#" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">BMW</a></li>
                                            <li><a class="footInfo" href="#" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">Audi</a></li>
                                            <li><a class="footInfo" href="#" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">Mercedes</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-md-5 col-xs-6" style="text-align: center;">
                                        <ul style="list-style: none; padding: 0; margin: 0;">
                                            <li><a class="footInfo" href="#" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">Wolkswagen</a></li>
                                            <li><a class="footInfo" href="#" style="text-decoration:none; color:white; display:inline-block; padding:0; margin:0;">Porsche</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

            </div><!--/.container-->

            <div id="scroll-Top">
                <div class="return-to-top">
                    <i class="fa fa-angle-up " id="scroll-top" data-toggle="tooltip" data-placement="top" title="" data-original-title="Back to Top" aria-hidden="true"></i>
                </div>

            </div><!--/.scroll-Top-->

        </footer><!--/.contact-->
        <!--contact end-->



        <!-- Include all js compiled plugins (below), or include individual files as needed -->

        <script src="assets/js/jquery.js"></script>

        <!--modernizr.min.js-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js"></script>

        <!--bootstrap.min.js-->
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- bootsnav js -->
        <script src="assets/js/bootsnav.js"></script>

        <!--owl.carousel.js-->
        <script src="assets/js/owl.carousel.min.js"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>

        <!--Custom JS-->
        <script src="assets/js/custom.js"></script>

    </body>

</html>
