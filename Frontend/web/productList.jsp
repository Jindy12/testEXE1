
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>
<fmt:setLocale value="en_US"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Carpipi product list</title>
        <link href="cssProList/bootstrap.min.css" rel="stylesheet">
        <link href="cssProList/font-awesome.min.css" rel="stylesheet">
        <link href="cssProList/price-range.css" rel="stylesheet">
        <link href="cssProList/animate.css" rel="stylesheet">
        <link href="cssProList/main.css" rel="stylesheet">
        <link href="cssProList/responsive.css" rel="stylesheet">
        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->
        <link rel="shortcut icon" href="imageProList/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="imageProList/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="imageProList/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="imageProList/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="imageProList/ico/apple-touch-icon-57-precomposed.png">

        <style>
            .paginationProList {
                float: right;
                margin: 0 0 5px;
                list-style: none; /* Bỏ các dấu chấm trước mỗi mục */
                padding: 0;
                display: flex; /* Thêm để hiển thị các mục li theo chiều ngang */
            }

            .paginationProList li {
                display: inline-block; /* Đảm bảo mỗi li được hiển thị theo hàng ngang */
            }

            .paginationProList li a {
                border: none;
                font-size: 95%;
                width: 30px;
                height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 30px !important;
                text-align: center;
                padding: 0;
            }

            li {
                flex: 1 0 30%; /* Chia mỗi phần tử chiếm 30% chiều rộng, đảm bảo 3 phần tử trong mỗi hàng */
                margin: 5px; /* Thêm khoảng cách giữa các phần tử */
                text-align: start;
            }

            .paginationProList li a:hover {
                color: #666;
            }

            .paginationProList li.active a {
                background: #4e4ffa;
            }

            .paginationProList li.active a:hover {
                background: #0397d6;
            }

            .paginationProList li.disabled i {
                color: #ccc;
            }

            .paginationProList li i {
                font-size: 16px;
                padding-top: 6px;
            }

            .hint-text {
                float: left;
                margin-top: 6px;
                font-size: 95%;
            }

        </style>
        <style>
            .message-popup {
                position: fixed;
                top: 20px;
                right: 20px;
                background-color: #4CAF50;
                color: white;
                padding: 15px;
                border-radius: 5px;
                z-index: 1000;
                display: none;
                animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }

            @keyframes fadeOut {
                from {
                    opacity: 1;
                }
                to {
                    opacity: 0;
                }
            }
        </style>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Kiểm tra nếu có thông báo
                var message = "${mesOfCart}";
                if (message && message.trim() !== "") {
                    var messageDiv = document.getElementById("message");
                    messageDiv.style.display = "block";

                    // Tự động ẩn sau 3 giây
                    setTimeout(function () {
                        messageDiv.style.display = "none";
                    }, 3000);
                }
            });
        </script>
    </head><!--/head-->

    <body>
        <jsp:include page="header.jsp"/>

        <div class="container">
            <div class="row">


                <!-- Advertisement Section -->
                <div class="col-sm-12">
                    <section id="advertisement">
                        <div class="container">
                            <img src="assets/images/welcome-hero/welcome-banner.jpg" alt="" class="img-responsive" />
                        </div>
                    </section>
                </div>

                <!-- Header Section -->
                <div class="col-sm-4">
                    <header id="header">
                        <div class="header-bottom">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="search_box pull-right">
                                            <form action="productlist" method="get">
                                                <input type="text"  name="keyword" placeholder="Search...."/><input type="submit" value="Search">

                                            </form>

                                            <div id="message" class="message-popup" style="display: none;">
                                                ${mesOfCart}
                                            </div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </header>
                </div>

                <div class="col-sm-2">
                    <header id="header">
                        <div class="header-bottom">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="sort_box">
                                            <form action="productlist" method="get">
                                                <!-- Trường ẩn để giữ các giá trị khác như brandId, styleId, và keyword -->
                                                <input type="hidden" name="brandId" value="${selectedBrandId}">
                                                <input type="hidden" name="styleId" value="${selectedStyleId}">
                                                <input type="hidden" name="keyword" value="${keyword}">
                                                <input type="hidden" name="page" value="${currentPage}">

                                                <!-- Trường sắp xếp -->
                                                <select name="sort" onchange="this.form.submit()">
                                                    <option value="default" ${param.sort == 'default' ? 'selected' : ''}>Sắp xếp theo</option>
                                                    <option value="asc" ${param.sort == 'asc' ? 'selected' : ''}>Tăng dần</option>
                                                    <option value="desc" ${param.sort == 'desc' ? 'selected' : ''}>Giảm dần</option>
                                                </select>
                                            </form>



                                            <div id="message" class="message-popup" style="display: none;">
                                                ${mesOfCart}
                                            </div>
                                        </div>
                                    </div>



                                </div>
                            </div>
                        </div>
                    </header>
                </div>                            

            </div>
        </div>


        <section>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="left-sidebar">
                            <h2>Hãng Xe</h2>
                            <div class="panel-group category-products" id="accordian"><!--category-productsr-->
                                <c:forEach var="brand" items="${brandList}">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <h4 class="panel-title">                    <a href="productlist?brandId=${brand.brandId}&page=1&sort=${param.sort}">${brand.brandName}</a>
                                            </h4>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div><!--/category-productsr-->
                            <div class="brands_products"><!--brands_products-->
                                <h2>Kiểu Dáng</h2>
                                <div class="brands-name">
                                    <ul class="nav nav-pills nav-stacked">
                                        <c:forEach var="style" items="${styleList}">
                                            <li>                    <a href="productlist?styleId=${style.styleId}&page=1&sort=${param.sort}">${style.styleName}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div><!--/brands_products-->



                            <div class="shipping text-center"><!--shipping-->
                                <h2>Mẫu mới nhất</h2>
                                <c:forEach var="pro" items="${newProduct}">
                                    <a href="productdetail?productId=${pro.productId}">
                                        <img src="${pro.images[0].imageUrl}" alt="${pro.name}" />
                                    </a>
                                </c:forEach>
                            </div><!--/shipping-->
                        </div>
                    </div>

                    <div class="col-sm-9 padding-right">
                        <div class="features_items"><!--features_items-->
                            <h2 class="title text-center">Features Items</h2>
                            <c:forEach var="pro" items="${productList}">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <c:choose>
                                                    <c:when test="${not empty pro.images}">
                                                        <img src="${pro.images[0].imageUrl}" alt="${pro.name}">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="assets/images/welcome-hero/welcome-banner.jpg" alt="${pro.name}">
                                                    </c:otherwise>
                                                </c:choose>
                                                <h2><fmt:formatNumber value="${pro.getPrice()}" type="number" pattern="#,##0.0"/> USD</h2>
                                                <p>${pro.name}</p>

                                                <a href="addtocart?productId=${pro.productId}&quantity=1" class="btn btn-default add-to-cart" onclick="showNotification()">
                                                    <i class="fa fa-shopping-cart"></i> Add to cart
                                                </a>
                                            </div>
                                            <div class="product-overlay">
                                                <div class="overlay-content">
                                                    <h2><fmt:formatNumber value="${pro.getPrice()}" type="number" pattern="#,##0.0"/> USD</h2>
                                                    <div>
                                                        <a href="productdetail?productId=${pro.productId}" class="product-detail-link">${pro.name}</a>
                                                    </div>
                                                        <c:forEach items="${colorsMap[pro.productId]}" var="color" begin="0" end="0">
                                                    <a href="addtocart?productId=${pro.productId}&quantity=1&color=${color.colorId}" 
                                                       class="btn btn-default add-to-cart"
                                                       >
                                                        <i class="fa fa-shopping-cart"></i>Add to cart
                                                    </a>
                                                       </c:forEach>
                                                </div>                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>

                            <div class="clearfix">
                                <ul class="paginationProList justify-content-center">
                                    <!-- Điều hướng về trang trước -->
                                    <c:if test="${currentPage > 1}">
                                        <li class="page-item">
                                            <a class="page-link" href="productlist?page=${currentPage - 1}&brandId=${selectedBrandId}&styleId=${selectedStyleId}&keyword=${keyword}&sort=${sort}">
                                                <i class="fa fa-angle-double-left"></i>
                                            </a>
                                        </li>
                                    </c:if>

                                    <!-- Pagination loop -->
                                    <c:forEach begin="${(currentPage - 1) <= 1 ? 1 : (currentPage - 1)}" end="${currentPage + 1 > totalPages ? totalPages : currentPage + 1}" var="i">
                                        <c:choose>
                                            <c:when test="${i == currentPage}">
                                                <!-- Current page -->
                                                <li class="page-item active">
                                                    <a class="page-link">${i}</a>
                                                </li>
                                            </c:when>
                                            <c:otherwise>
                                                <!-- Other pages -->
                                                <li class="page-item">
                                                    <a class="page-link" href="productlist?page=${i}&brandId=${selectedBrandId}&styleId=${selectedStyleId}&keyword=${keyword}&sort=${sort}">
                                                        ${i}
                                                    </a>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>

                                    <!-- Navigate to the next page -->
                                    <c:if test="${currentPage < totalPages}">
                                        <li class="page-item">
                                            <a class="page-link" href="productlist?page=${currentPage + 1}&brandId=${selectedBrandId}&styleId=${selectedStyleId}&keyword=${keyword}&sort=${sort}">
                                                <i class="fa fa-angle-double-right"></i>
                                            </a>
                                        </li>
                                    </c:if>

                                </ul>
                            </div>

                        </div><!--features_items-->
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footerDemo.jsp"></jsp:include>
            <script src="jsProList/jquery.js"></script>
            <script src="jsProList/price-range.js"></script>
            <script src="jsProList/jquery.scrollUp.min.js"></script>
            <script src="jsProList/bootstrap.min.js"></script>
            <script src="jsProList/jquery.prettyPhoto.js"></script>
            <script src="jsProList/main.js"></script>
        </body><!-- Thêm style cho alert -->
        <style>
            .custom-alert {
                position: fixed;
                top: 20px;
                right: 20px;
                background-color: #4CAF50;
                color: white;
                padding: 15px;
                border-radius: 5px;
                z-index: 1000;
                animation: fadeout 2s linear forwards;
            }

            @keyframes fadeout {
                0% {
                    opacity: 1;
                }
                70% {
                    opacity: 1;
                }
                100% {
                    opacity: 0;
                    visibility: hidden;
                }
            }
            .notification {
                background-color: #4CAF50; /* Green */
                color: white;
                padding: 15px;
                position: fixed;
                top: 20px;
                right: 20px;
                z-index: 1000;
                opacity: 0; /* Initially hidden */
                transition: opacity 1s ease; /* Fade in/out effect */
            }
        </style>
        <script>


<!-- Code HTML đã sửa -->
                                                    <a href="addtocart?productId=${pro.productId}&quantity=1" 
        class="btn btn-default add-to-cart" 
        onclick="showCartAlert(event)">
        <i class="fa fa-shopping-cart"></i> Add to cart
        </a>

                                                    <div class="product-overlay">
        <div class="overlay-content">
        <h2><fmt:formatNumber value="${pro.getPrice()}" type="number" pattern="#,###"/>đ</h2>
        <div><a href="productdetail?productId=${pro.productId}" class="product-detail-link">${pro.name}</a></div>
        <a href="addtocart?productId=${pro.productId}&quantity=1" 
        class="btn btn-default add-to-cart"
        onclick="showCartAlert(event)">
        <i class="fa fa-shopping-cart"></i>Add to cart
        </a>
        </div>
            </div>
    </script>
    <!-- Thêm script -->

</html>
