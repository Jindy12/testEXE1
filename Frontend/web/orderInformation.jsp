<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Carpipi</title>
        <!-- favicon -->
        <link rel="shortcut icon" href="img/logo3.png">
        <!-- Bootstrap -->
        <link href="assets1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assets1/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="assets1/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets1/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assets1/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
        <style>
            body {
                font-family: 'Roboto', sans-serif;
                background-color: #f8f9fa;
                margin: 0;
                padding: 20px;
            }

            .order-tracking-container {
                background-color: #fff;
                padding: 25px;
                max-width: 1200px;
                margin: 20px auto;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
                transition: all 0.3s ease;
            }

            .order-header {
                display: flex;
                justify-content: space-around;
                align-items: center;
                margin-top: 20px;
                gap: 300px;
            }

            .back-link {
                color: #3498db;
                text-decoration: none;
                font-weight: bold;
                transition: color 0.3s;
            }

            .back-link:hover {
                color: #2c3e50;
            }

            .order-id {
                font-weight: bold;
                color: #2c3e50;
            }

            .order-status {
                color: #e74c3c;
                font-weight: bold;
            }

            .order-progress {
                display: flex;
                justify-content: space-between;
                margin: 30px 0;
                gap: 25px;
            }

            .step {
                text-align: center;
                flex: 1;
                padding: 12px;
                border-radius: 5px;
                background-color: #ecf0f1;
                position: relative;
                font-size: 14px;
            }

            .step.completed {
                background-color: #2ecc71;
                color: white;
                box-shadow: 0px 4px 8px rgba(46, 204, 113, 0.3);
            }

            .step.active {
                background-color: #f1c40f;
                color: black;
                box-shadow: 0px 4px 8px rgba(241, 196, 15, 0.3);
            }

            .step::before {
                content: '';
                position: absolute;
                top: 50%;
                left: 100%;
                height: 4px;
                width: calc(100% - 20px);
                background-color: #bdc3c7;
                z-index: -1;
                transform: translateY(-50%);
                transition: background-color 0.3s;
            }

            .step:last-child::before {
                display: none;
            }

            .shipping-info h3 {
                font-size: 18px;
                color: #2c3e50;
                font-weight: bold;
                margin-top: 25px;
            }

            .tracking-timeline {
                margin: 20px 0;
                border-left: 4px solid #2ecc71;
                padding-left: 20px;
            }

            .timeline-entry .time {
                font-weight: bold;
                color: #2c3e50;
                font-size: 14px;
            }

            .product-info {
                align-items: center;
                gap: 150px;
            }

            .product-info > div {
                flex: 1;
            }

            .product-info img {
                width: auto;
                height: 300px;
                margin-right: 20px;
                border-radius: 10px;
            }

            .order-summary {
                background-color: #f8f9fa; /* Màu nền nhạt cho khung */
                border: 1px solid #ddd; /* Viền nhạt cho khung */
                padding: 15px;
                border-radius: 8px; /* Bo góc khung */
                max-width: 400px; /* Đặt độ rộng tối đa */
                margin: 20px auto; /* Căn giữa */
            }

            .order-summary .table {
                margin-bottom: 0; /* Loại bỏ khoảng cách dưới */
            }

            .order-summary td.text-muted {
                color: #6c757d; /* Màu chữ nhạt */
                font-size: 16px;
            }

            .order-summary td.text-right {
                color: #333;
                font-size: 16px;
            }

            .order-summary td.font-weight-bold {
                font-weight: 700;
                color: #212529; /* Màu chữ đậm */
            }

            .order-summary tr {
                border-bottom: 1px solid #ddd;
            }

            .order-summary tr:last-child {
                border-bottom: none; /* Loại bỏ viền dưới cùng */
            }

            .total {
                font-weight: bold;
                background-color: #f0f0f0;
            }

            .total td {
                background-color: #f8f9fa;
                font-size: 16px;
                color: #34495e;
            }
            .product-info1 {
                display: flex;
                align-items: center;
                width: 100%;
                margin-bottom: 10px;
                border: 1px solid #ddd; /* Đặt màu và độ rộng viền */
                box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.1); /* Bóng đổ với độ mờ và hướng */
                padding: 10px; /* Tạo khoảng cách bên trong */
                border-radius: 5px; /* Bo tròn các góc */
            }


            .product-info1 > div {
                flex: 1;
            }

            .product-info1 img {
                width: 500px;
                height: 280px;
                margin-right: 20px;
                border-radius: 10px;
                object-fit: cover;
            }
            /* Container chính */
            .d-flex.justify-content-between.gap-2 {
                display: flex;
                justify-content: space-between;
                gap: 20px;
                margin-bottom: 20px;
            }

            /* Shipping Info */
            .shipping-info {
                background-color: #f1f1f1; /* Màu nền nhạt */
                border: 1px solid #ccc; /* Viền nhạt */
                padding: 20px;
                border-radius: 8px; /* Bo góc */
                width: 48%; /* Đặt chiều rộng cố định */
            }

            .shipping-info h5 {
                font-size: 18px;
                color: #333;
                margin-bottom: 10px;
            }

            .shipping-info p {
                font-size: 14px;
                color: #555;
                margin: 4px 0;
            }

            /* Tracking Timeline */
            .tracking-timeline {
                background-color: #f1f1f1;
                border: 1px solid #ccc;
                padding: 20px;
                border-radius: 8px;
                width: 48%;
            }

            .timeline-entry {
                display: flex;
                flex-direction: column;
                align-items: flex-start;
                border-left: 3px solid #28a745; /* Viền trái cho dòng thời gian */
                padding-left: 15px;
            }

            .timeline-entry .time {
                font-size: 14px;
                color: #6c757d;
                margin-bottom: 5px;
            }

            .timeline-entry .status {
                font-size: 16px;
                color: #28a745;
                font-weight: bold;
            }


        </style>

    </head>
    <body>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->
        <div class="page-wrapper doctris-theme toggled">
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content" data-simplebar style="height: calc(100% - 60px);">
                    <div class="sidebar-brand">
                        <a href="home">
                            <img src="img/logoBlack.png" height="120" class="logo-light-mode" alt="">
                        </a>
                    </div>
                    <ul class="sidebar-menu pt-3">
                        <li>
                            <a href="userprofile"><i class="uil uil-user me-2 d-inline-block"></i>Profile</a>
                        </li>
                        <li>
                            <a href="productlist"><i class="uil uil-car me-2 d-inline-block"></i>Product List</a>
                        </li>
                    </ul>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->
                <ul class="sidebar-footer list-unstyled mb-0">
                    <li class="list-inline-item mb-0 ms-1">
                        <a class="btn btn-icon btn-pills btn-soft-primary">
                            <i class="uil uil-comment icons"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- Start Page Content -->
            <main class="page-content bg-light">
                <div class="top-header">
                    <div class="header-bar d-flex justify-content-between border-bottom">
                        <div class="d-flex align-items-center">
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>
                            <div class="search-bar p-0 d-none d-lg-block ms-2">
                                <div id="search" class="menu-search mb-0">
                                    <form method="get" id="searchform" class="searchform" action="searchCart">
                                        <div>
                                            <input type="text" class="form-control border rounded-pill" name="keyword" id="s" placeholder="Search Keywords..." value="${param.keyword}" >
                                            <input type="submit" id="searchsubmit" value="Search">
                                        </div>
                                    </form>                             
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="layout-specing">
                    <div class="row mt-4">
                        <div class="col-12">
                            <div class="table-responsive bg-white shadow rounded p-4">
                                <!-- Header Section -->
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <a href="javascript:void(0)" onclick="window.history.back()" class="back-link text-primary font-weight-bold">← TRỞ LẠI</a>
                                    <span class="order-status text-muted">
                                        <c:forEach var="detail" items="${orderInfor}" begin="0" end="0">
                                            <strong>MÃ ĐƠN HÀNG:</strong> ${detail.orderId}&nbsp;&nbsp;||&nbsp;&nbsp;<span class="text-success">${detail.orderStatusDescription}</span>
                                        </c:forEach>
                                    </span>
                                </div>

                                <!-- Order Progress -->
                                <div class="order-progress d-flex justify-content-around mb-4">
                                    <c:set var="currentStatus" value="${orderInfor[0].orderStatus}" /> <!-- Lấy trạng thái hiện tại -->

                                    <div class="step ${currentStatus >= 1 ? 'completed' : ''}">Đơn Hàng Đã Đặt</div>
                                    <div class="step ${currentStatus >= 2 ? 'completed' : ''}">Đã Thanh Toán <span class="price"></span></div>
                                    <div class="step ${currentStatus == 3 ? 'active' : ''} ${currentStatus > 3 ? 'completed' : ''}">Chờ Giao Hàng</div>
                                    <div class="step ${currentStatus == 4 ? 'active' : ''}">Đã Nhận Hàng</div>
                                    <div class="step ${currentStatus == 5 ? 'active text-danger' : ''}">Đã Hủy</div>
                                </div>


                                <!-- Product Details -->
                                <div class="product-info">
                                    <c:forEach var="order" items="${orderInfor}">
                                        <!-- Product Image -->
                                        <div class="product-info1">
                                            <a href="productdetail?productId=${order.productId}">
                                                <img src="${order.imageUrl}" class="product-img rounded">
                                            </a>

                                            <!-- Product Info -->
                                            <div>
                                                <h4 class="mb-2">
                                                    <a href="#" class="text-dark text-decoration-none font-weight-bold">${order.productName}</a>
                                                </h4>
                                                <p class="text-muted mb-1">Màu xe: ${order.colorName}</p>
                                                <p class="text-muted mb-1">Số lượng: ${order.quantity}</p>
                                                <p class="text-muted mb-1">Phương thức thanh toán: 
                                                    <c:choose>
                                                        <c:when test="${order.payMethod == 1}">Chuyển khoản VNPay</c:when>
                                                        <c:when test="${order.payMethod == 2}">COD</c:when>
                                                        <c:when test="${order.payMethod == 3}">Số dư tài khoản</c:when>
                                                        <c:otherwise>Khác</c:otherwise>
                                                    </c:choose>
                                                </p>
                                                <p class="price mb-0">
                                                    <span class="text-muted">Giá: </span>
                                                    <%-- 
                                                    <span style="text-decoration: line-through; color: #999;">
                                                        <fmt:formatNumber value="2500000" type="currency" currencySymbol="₫" />
                                                    </span>&nbsp;
                                                    --%>

                                                    <span class="text-danger font-weight-bold">
                                                        <fmt:formatNumber value="${order.productPrice}" type="currency" currencySymbol="$" />
                                                    </span>
                                                </p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                                <!-- Shipping Info and Tracking Timeline -->
                                <div class="d-flex justify-content-between gap-2 mb-4">
                                    <c:forEach var="user" items="${orderInfor}" begin="0" end="0">
                                        <div class="shipping-info">
                                            <h5 class="font-weight-bold">Địa Chỉ Nhận Hàng</h5>
                                            <p class="mb-1">${user.orderName}</p>
                                            <p class="mb-1">${user.orderPhone}</p>
                                            <p class="mb-1">${user.orderEmail}</p>
                                            <p>${user.shippingAddress}</p>
                                        </div>
                                        <div class="tracking-timeline">
                                            <div class="timeline-entry">
                                                <span class="time text-muted">${user.createDate}</span>
                                                <span class="status">Đặt hàng thành công</span>
                                                <span class="time text-muted">Mã vận chuyển: ${user.orderDeliverCode}</span>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>

                                <!-- Order Summary and Reorder Button -->
                                <div class="d-flex justify-content-between align-items-center mb-6">
                                    <div class="order-summary">
                                        <table class="table table-borderless mb-0">
                                            <c:forEach var="sum" items="${orderInfor}" begin="0" end="0">
                                                <tbody>
                                                    <tr>
                                                        <td class="text-muted">Tổng tiền hàng</td>
                                                        <td class="text-right font-weight-bold">
                                                            <fmt:formatNumber value="${sum.totalPrice}" type="currency" currencySymbol="$" />
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </c:forEach>
                                        </table>
                                    </div>

                                    <c:forEach var="rebuy" items="${orderInfor}" begin="0" end="0">
                                        <div class="reorder-btn ml-3">
                                            <!-- Nút mua lại -->
                                            <a href="addtocart?productId=${rebuy.productId}&colorId=${rebuy.colorId}&quantity=1" 
                                               class="btn btn-primary">Mua lại</a>

                                            <!-- Thêm khoảng cách giữa các nút -->
                                            <c:if test="${rebuy.orderStatus == 1}">
                                                <a href="cancelorder?orderId=${rebuy.orderId}&totalprice=${rebuy.totalPrice}&userId=${rebuy.userId}&payMethod=${rebuy.payMethod}"
                                                   onclick="return confirmCancel();" class="ml-2">
                                                    <button class="btn btn-danger">Hủy Đơn</button>
                                                </a>
                                            </c:if>
                                        </div>

                                        <!-- JavaScript xác nhận hủy đơn hàng -->
                                        <script type="text/javascript">
                                            function confirmCancel() {
                                                return confirm("Bạn chắc chắn muốn hủy đơn hàng này?");
                                            }
                                        </script>
                                    </c:forEach>

                                </div>


                            </div>
                        </div><!--end row--> 
                    </div>
                </div>
                <!--end container-->
            </main>
        </div>
        <!-- javascript -->
        <script src="assets1/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="assets1/js/simplebar.min.js"></script>
        <!-- Icons -->
        <script src="assets1/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets1/js/app.js"></script>
    </body>
</html>
