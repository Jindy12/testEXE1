<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
                font-family: Arial, sans-serif;
                line-height: 1.4;
                background-color: #f8f9fa;
                color: #333;
            }

            .header {
                margin-top: 20px;
            }

            .header .tabs {
                display: flex;
                gap: 20px;
            }

            .header .tabs li {
                list-style: none;
            }

            .header .tabs li a {
                text-decoration: none;
                color: #555;
                font-size: 16px;
                padding: 8px 15px;
                border-bottom: 3px solid transparent;
                transition: border-bottom 0.3s ease, color 0.3s ease;
            }

            .header .tabs li a:hover,
            .header .tabs .active a {
                border-bottom: 3px solid orange;
                color: orange;
            }

            .order-list {
                margin-top: 20px;
            }

            .order-item {
                background-color: white;
                border: 1px solid #e0e0e0;
                padding: 20px;
                margin: 15px;
                border-radius: 10px;
                transition: box-shadow 0.3s ease;
            }

            .order-item:hover {
                box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
            }

            .order-shop {
                display: flex;
                justify-content: flex-end;
                align-items: center;
                gap: 5px;
            }

            .view-shop-btn {
                padding: 8px 16px;
                background-color: #2980b9;
                color: white;
                border-radius: 5px;
                font-size: 14px;
                text-decoration: none;
                transition: background-color 0.3s ease;
            }

            .view-shop-btn:hover {
                background-color: #1e6389;
            }

            .order-details {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }

            .product-info {
                display: flex;
                align-items: center;
                width: 100%;
                gap: 50px;
            }

            .product-info > div {
                flex: 1;
            }

            .product-info img {
                width: 500px;
                height: 280px;
                margin-right: 20px;
                border-radius: 10px;
                object-fit: cover;
            }

            .order-details h4 {
                font-size: 22px;
                color: #2c3e50;
            }

            .order-details p {
                font-size: 18px;
            }

            .order-detail-item{
                background-color: white;
                border: 1px solid #e0e0e0;
                padding: 20px;
                margin: 4px;
                border-radius: 10px;
            }

            .order-actions {
                margin-left: auto;
                text-align: right;
                display: flex;
                justify-content: space-between;
            }

            .order-actions .price {
                color: #e74c3c;
                font-size: 22px;
                font-weight: bold;
                margin-bottom: 10px;
            }

            .return-btn,
            .buy-again-btn {
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 14px;
                transition: background-color 0.3s ease;
            }

            .return-btn {
                background-color: #7f8c8d;
                color: white;
            }

            .return-btn:hover {
                background-color: #616a6e;
            }

            .buy-again-btn {
                background-color: #e74c3c;
                color: white;
            }

            .buy-again-btn:hover {
                background-color: #c0392b;
            }

            .delivery-status {
                margin-top: 13px;
                font-size: 18px;
                color: green;
            }
            .form-group {
                display: inline-block;
                margin-left: 10px;
            }

            .form-control {
                width: 200px;
                padding: 5px;
                border: 1px solid #ccc;
                border-radius: 4px;
                background-color: #f9f9f9;
                transition: border-color 0.3s;
            }

            .form-control:focus {
                border-color: #007bff;
                outline: none;
            }
        </style>
    </head>
    <body>
        <div class="page-wrapper doctris-theme toggled">
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content" data-simplebar style="height: calc(100% - 60px);">
                    <div class="sidebar-brand">
                        <a href="home">
                            <img src="img/logoBlack.png" height="120" class="logo-light-mode" alt="">
                        </a>
                    </div>
                    <ul class="sidebar-menu pt-3">
                        <li><a href="dashboardforsale"><i class="uil uil-dashboard me-2 d-inline-block" ></i>Dashboard</a></li>
                        <li><a href="orderlistforsale"><i class="uil uil-dashboard me-2 d-inline-block" ></i>Order List</a></li>
                        <li><a href="salecheck"><i class="uil uil-dashboard me-2 d-inline-block"></i>Check Order</a></li>
                    </ul>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->
                <ul class="sidebar-footer list-unstyled mb-0">
                    <li class="list-inline-item mb-0 ms-1">
                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary">
                            <i class="uil uil-comment icons"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- Start Page Content -->
            <main class="page-content bg-light">
                <div class="top-header">
                    <div class="header-bar d-flex justify-content-between align-items-center border-bottom">
                        <div class="d-flex align-items-center">
                            <a href="#" class="logo-icon">
                                <img src="assets1/images/logo-icon.png" height="30" class="small" alt="">
                                <span class="big">
                                    <img src="assets1/images/logo-dark.png" height="24" class="logo-light-mode" alt="">
                                    <img src="assets1/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                                </span>
                            </a>
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>
                            <li class="list-inline-item mb-0 ms-1 d-flex align-items-center">
                                <a href="home">
                                    <div class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="home" class="fea icon-sm"></i></div>
                                </a>
                            </li>
                        </div>

                        <!-- Thêm chữ "carpipi" vào giữa -->
                        <div class="text-center flex-grow-1">
                            <h2 class="mb-0" style="font-family: 'Courier New', Courier, monospace; font-weight: bold; color: #3b5998;">carpipi</h2>
                        </div>

                        <ul class="list-unstyled mb-0 d-flex align-items-center">
                            <li class="list-inline-item mb-0 ms-1">
                                <a href="logout">
                                    <div class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="log-out" class="fea icon-sm"></i></div>
                                </a>
                            </li>

                            <li class="list-inline-item mb-0 ms-1">
                                <a href="userprofile">
                                    <div class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="user" class="fea icon-sm"></i></div>
                                </a>
                            </li>

                            <li class="list-inline-item mb-0 ms-1">
                                <div class="dropdown dropdown-primary">
                                    <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <img src="img/avatar-trang-4.jpg" class="avatar avatar-ex-small rounded-circle" alt="">
                                    </button>
                                    <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                        <a class="dropdown-item d-flex align-items-center text-dark" href="https://shreethemes.in/doctris/layouts/admin/profile.html">
                                            <img src="img/avatar-trang-4.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                        </a>
                                        <a class="dropdown-item text-dark" href="userprofile"><span class="mb-0 d-inline-block me-1"><i class="uil uil-setting align-middle h6"></i></span> Profile Settings</a>
                                        <div class="dropdown-divider border-top"></div>
                                        <a class="dropdown-item text-dark" href="logout"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span> Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="container-fluid">
                    <div class="layout-specing">
                        <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                            <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                <li class="breadcrumb-item"><a href="home">Trang chủ</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Vận chuyển</li>
                            </ul>
                        </nav>
                        <div class="row mt-4">
                            <div class="col-12">
                                <div class="table-responsive bg-white shadow rounded">
                                    <div class="header">
                                        <c:set var="currentStatusId" value="${param.statusId != null ? param.statusId : 0}" />
                                        <ul class="tabs">
                                            <li class="${currentStatusId == 0 ? 'active' : ''}"><a href="salecheck">Tất cả</a></li>
                                            <li class="${currentStatusId == 1 ? 'active' : ''}"><a href="salecheck?statusId=1">Chờ xác nhận</a></li>
                                            <li class="${currentStatusId == 2 ? 'active' : ''}"><a href="salecheck?statusId=2">Đã xác nhận</a></li>
                                            <li class="${currentStatusId == 3 ? 'active' : ''}"><a href="salecheck?statusId=3">Đang giao hàng</a></li>
                                            <li class="${currentStatusId == 4 ? 'active' : ''}"><a href="salecheck?statusId=4">Hoàn thành</a></li>
                                            <li class="${currentStatusId == 5 ? 'active' : ''}"><a href="salecheck?statusId=5">Đã hủy</a></li>
                                        </ul>
                                    </div>
                                    <div class="order-list">
                                        <c:choose>

                                            <c:when test="${empty requestScope.order}">
                                                <p style="
                                                   text-align: center;
                                                   font-size: 18px;
                                                   color: #2c3e50;
                                                   background-color: #f0f8ff;
                                                   padding: 15px;
                                                   border-radius: 8px;
                                                   box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                                                   margin: 20px 0;
                                                   ">Chưa có đơn nào, xin hãy chờ khách mua hàng.</p>
                                            </c:when>

                                            <c:otherwise>
                                                <c:forEach items="${order}" var="order">
                                                    <div class="order-item">

                                                        <div class="order-shop">
                                                            <a href="" class="status-link">
                                                                <p class="delivery-status">
                                                                    <c:choose>
                                                                        <c:when test="${order.orderStatus == 1}">
                                                                            Đơn hàng đang chờ xử lý
                                                                        </c:when>
                                                                        <c:when test="${order.orderStatus == 2}">
                                                                            Đơn hàng đã được xác nhận
                                                                        </c:when>
                                                                        <c:when test="${order.orderStatus == 3}">
                                                                            Đơn hàng đang được giao đi
                                                                        </c:when>
                                                                        <c:when test="${order.orderStatus == 4}">
                                                                            Đơn hàng đã được giao thành công
                                                                        </c:when>
                                                                        <c:when test="${order.orderStatus == 5}">
                                                                            Đơn hàng đã bị hủy
                                                                        </c:when>
                                                                    </c:choose>
                                                                </p>
                                                            </a>
                                                            &nbsp;&nbsp;

                                                            <!-- Form dùng để cập nhật trạng thái đơn hàng -->
                                                            <form id="orderForm" action="salecheck" method="POST">
                                                                <!-- Hidden field để gửi orderId -->
                                                                <input type="hidden" name="orderId" value="${order.orderId}">

                                                                <!-- Kiểm tra trạng thái và chỉ hiển thị nút nếu orderStatus == 1 -->
                                                                <c:if test="${order.orderStatus == 1}">
                                                                    <!-- Nút xác nhận đơn hàng -->
                                                                    <button type="submit" class="btn btn-success" name="orderStatus" value="2" onclick="return confirm('Bạn có chắc muốn xác nhận đơn hàng này?');">
                                                                        Xác nhận
                                                                    </button>

                                                                    <!-- Nút hủy đơn hàng -->
                                                                    <!--                                                                    <button type="submit" class="btn btn-danger" name="orderStatus" value="5" onclick="return confirm('Bạn có chắc muốn hủy đơn hàng này?');">
                                                                                                                                            Hủy đơn
                                                                                                                                        </button>-->
                                                                </c:if>
                                                            </form>
                                                        </div>
                                                        <c:forEach items="${orderDetailsMap[order.orderId]}" var="detail">
                                                            <div class="order-detail-item">
                                                                <div class="product-info">
                                                                    <img src="${detail.imageUrl}" class="product-img" alt="Product Image">
                                                                    <div class="product-description">
                                                                        <h4><a href="orderInfor?orderId=${order.orderId}" class="product-name">${detail.productName}</a></h4>
                                                                        <p class="brand">Hãng xe: ${detail.brandName}</p>
                                                                        <p class="quantity">Số lượng: ${detail.quantity}</p>
                                                                        <p class="color">Màu sắc: ${detail.colorName}</p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </c:forEach>
                                                        <div class="order-actions">
                                                            <a href="" class="status-link">
                                                                <p class="delivery-status">
                                                                    <c:choose>
                                                                        <c:when test="${order.payMethod == 1}">
                                                                            Đơn hàng đã được thanh toán trước
                                                                        </c:when>
                                                                        <c:when test="${order.payMethod == 2}">
                                                                            Đơn hàng thanh toán khi khách hàng nhận được hàng
                                                                        </c:when>
                                                                        <c:when test="${order.payMethod == 3}">
                                                                            Đơn hàng đã được thanh toán trước
                                                                        </c:when>
                                                                    </c:choose>
                                                                </p>
                                                            </a>

                                                            <p class="price">
                                                                <span>Thành tiền:</span>&nbsp;&nbsp;
                                                                <fmt:formatNumber value="${order.totalPrice}" type="currency" currencySymbol="USD"/>
                                                            </p>
                                                        </div>
                                                        <div class="button-container">
                                                            <a href="orderInfor?orderId=${order.orderId}">
                                                                <button class="return-btn">Thông tin đơn hàng</button>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                </div>
                            </div><!--end row--> 
                        </div>
                        <div class="row text-center">
                            <!-- Pagination -->
                            <div class="col-12 mt-4">
                                <div class="d-md-flex align-items-center text-center justify-content-between">
                                    <span class="text-muted me-3">Showing <b>${page}</b> out of <b>${num}</b> pages orders</span>
                                    <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                        <c:if test="${page > 1}">
                                            <li class="page-item"><a class="page-link" href="salecheck?page=${page - 1}&statusId=${statusId}&keyword=${keyword}" aria-label="Previous">Prev</a></li>
                                            </c:if>
                                            <c:forEach begin="${(page - 1) <= 1 ? 1 : (page - 1)}" end="${page + 1 > num ? num : page + 1}" var="i">
                                                <c:choose>
                                                    <c:when test="${i == page}">
                                                    <li class="page-item active"><a class="page-link">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a href="salecheck?page=${i}&statusId=${statusId}&keyword=${keyword}" class="page-link">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <c:if test="${page < num}">
                                            <li class="page-item"><a class="page-link" href="salecheck?page=${page + 1}&statusId=${statusId}&keyword=${keyword}" aria-label="Next">Next</a></li>
                                            </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!--end container-->
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
