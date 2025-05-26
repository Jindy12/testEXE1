<%-- 
    Document   : feedbacklistmarketing
    Created on : Nov 1, 2024, 12:28:30 AM
    Author     : Sonvu
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.DecimalFormat" %>
<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order Detail</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="../../../index.html" />
        <meta name="Version" content="v1.2.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="img/logo3.png">
        <!-- Bootstrap -->
        <link href="assetsSlider/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assetsSlider/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="assetsSlider/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assetsSlider/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assetsSlider/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">


        <style>
            .infor-customer {
                display: grid; /* Sử dụng grid để chia cột */
                grid-template-columns: repeat(2, 1fr); /* Chia thành 2 cột */
                grid-auto-rows: minmax(0, 1fr); /* Giữ chiều cao mỗi dòng bằng nhau */
                height: 200px; /* Điều chỉnh chiều cao tổng thể để cắt phần còn lại */
                overflow: hidden; /* Ẩn phần còn lại */
                width: 600px;
            }

            .infor-customer-order {
                display: grid; /* Sử dụng grid để chia cột */
                grid-template-columns: repeat(2, 1fr); /* Chia thành 2 cột */
                grid-auto-rows: minmax(0, 1fr); /* Giữ chiều cao mỗi dòng bằng nhau */
                height: 290px; /* Điều chỉnh chiều cao tổng thể để cắt phần còn lại */
                overflow: hidden; /* Ẩn phần còn lại */
                width: 500px;
            }

            .infor-customer {
                margin-bottom: 2px;
            }
            .infor-customer h5{
                margin-bottom: 3px;
            }

            .cart_menu td{
                text-align: center;
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
                            <img src="img/logoBnoBG.png" height="120px" class="logo-light-mode" alt="">
                            <img src="img/logoBnoBG.png" height="120px" class="logo-dark-mode" alt="">
                        </a>
                    </div>
                    <ul class="sidebar-menu pt-3">

                        <c:choose>
                            <c:when test="${sessionScope.account.roleId == 1}">
                                <li><a href="settingsList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Setting List</a></li>
                                </c:when>
                            </c:choose>
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
            <!-- sidebar-wrapper  -->
            <!-- Start Page Content -->
            <main class="page-content bg-light">
                <div class="top-header">
                    <div class="header-bar d-flex justify-content-between border-bottom">
                        <div class="d-flex align-items-center">
                            <a href="#" class="logo-icon">
                                <img src="assets_son/images/logo-icon.png" height="30" class="small" alt="">
                                <span class="big">
                                    <img src="assets_son/images/logo-dark.png" height="24" class="logo-light-mode" alt="">
                                    <img src="assets_son/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                                </span>
                            </a>
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>
                            <!------------search----------------->
                            <div class="search-bar p-0 d-none d-lg-block ms-2">
                                <div id="search" class="menu-search mb-0">
                                    <form action="SliderList" role="search" method="get" id="searchform" class="searchform">
                                        <div class="search-container">
                                            <!-- Filter by status -->
                                            <span>
                                                <label for="status">Trạng thái:</label>
                                            </span>
                                            <span>
                                                <select name="status" style="height:40px; border-radius: 10px; padding: 10px; border: 1px solid #ccc;">
                                                    <option value="">Tất cả</option>

                                                </select>
                                            </span>
                                            <!-- Search by title or backlink -->
                                            <span>
                                                <input type="text" class="form-control border rounded-pill" id="s" name="search" placeholder="Tìm kiếm theo tên/ backlink" value="${param.search}" />
                                            </span>
                                            <!-- Search button -->
                                            <span>
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!------------------end search--------------------->
                        </div>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0"></h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <c:choose>
                                        <c:when test="${sessionScope.account.roleId == 1}">
                                            <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${sessionScope.account.roleId == 2}">
                                            <li class="breadcrumb-item"><a href="index.html">Marketing</a></li>
                                            </c:when>
                                        </c:choose>

                                    <li class="breadcrumb-item active" aria-current="page">Order detail</li>
                                </ul>
                            </nav>
                        </div>
                        <div class="row">
                            <div class="shopper-informations">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="shopper-info">
                                            <p>Thông tin người mua</p>

                                            <ul class="infor-customer-order">

                                                <li>
                                                    <h5>Họ tên</h5>
                                                    <p>${accountOrder.firstName} ${accountOrder.lastName}</p>
                                                </li>
                                                <li>
                                                    <h5>Emai</h5>
                                                    <p>${accountOrder.email}</p>
                                                </li>
                                                <li>
                                                    <h5>Số điện thoại</h5>
                                                    <p>${accountOrder.mobile}</p>
                                                </li>                                              
                                                <li>
                                                    <h5>Ngày đặt hàng</h5>
                                                    <p>${accountOrder.createDate}</p>
                                                </li>

                                                <li>
                                                    <h5>Note</h5>
                                                   <p>
                                                       <textarea rows="2" class="form-control">${accountOrder.note}</textarea>
                                                   </p>
                                                </li>
                                                

                                            </ul>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <h5>Trạng thái</h5>
                            <% //   ${status.statusId == orderDetail.orderStatus ? 'selected' : ''}" %>


                            <form action="orderdetailforsale" method="post" style="display: inline; width: 300px">
                                <select class="form-select" name="statusId">
                                    <c:forEach items="${requestScope.listStatusOrder}" var="status">
                                        <option value="${status.statusId}" ${status.statusId == statusSelect ? 'selected' : ''}>
                                            ${status.description}
                                        </option>
                                    </c:forEach>

                                </select>
                                <input type="hidden" name="orderId" value="${accountOrder.orderId}">
                                <span>
                                    <input class="btn btn-primary" type="submit" id="searchsubmit" value="Xử lý">
                                </span>


                                <!-- Vòng lặp thêm input ẩn cho từng styleId đã chọn -->


                            </form>
                            <div class="review-payment">
                                <h2>Thông tin sản phẩm</h2>
                            </div>
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-bottom p-3" style="">Sản phẩm</th>
                                                <th class="border-bottom p-3" style="min-width: 120px;">Mô tả</th>
                                                <th class="border-bottom p-3">Màu sắc</th>                          
                                                <th class="border-bottom p-3">Số lượng</th>
                                                <th class="border-bottom p-3" style="max-width: 330px">Giá</th>
                                                <th class="border-bottom p-3">Tiền thuế</th>
                                                <th class="border-bottom p-3">Tổng</th>

                                            </tr>


                                        </thead>
                                        <tbody>
                                            <c:forEach items="${requestScope.orderList}" var="od">
                                                <tr>
                                                    <td>
                                                        <a href="productDetail.jsp?productId=${od.productId}">
                                                            <img style="width: 300px; padding: 10px 10px;" src="${od.imageUrl}" alt="">
                                                        </a>
                                                    </td>
                                                    <td>
                                                        <h5><a href="">${od.productName}</a></h5>
                                                        <p>ID: ${od.productId}</p></td>
                                                    <td>
                                                        <c:forEach items="${requestScope.colorList}" var="color">
                                                            <c:if test="${od.colorId == color.colorId}">
                                                                ${color.colorName}
                                                            </c:if>
                                                        </c:forEach>

                                                    </td>                                    
                                                    <td>${od.quantity}</td>
                                                    <td>
                                                        <fmt:formatNumber value="${od.productPrice}" type="number" pattern="#,###"/>
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber value="${od.productPrice * 1.2}" type="number" pattern="#,###"/>
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber value="${od.productPrice * 1.2 + od.productPrice}" type="number" pattern="#,###"/>
                                                    </td>

                                                </tr>


                                            </c:forEach>
                                            <tr>
                                                <td colspan="3">&nbsp;</td>
                                                <td colspan="3">
                                                    <table class="table table-condensed total-result">

                                                        <tr class="shipping-cost">
                                                            <td>Giá vận chuyển</td>
                                                            <td>Miễn phí</td>										
                                                        </tr>
                                                        
                                                        <tr>
                                                            <td>Tổng</td>
                                                            <td><span><fmt:formatNumber value="${accountOrder.totalPrice}" type="number" pattern="#,###"/></span></td>
                                                        </tr>

                                                    </table>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="shopper-informations">
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="shopper-info">
                                            <p>Thông tin người nhận</p>

                                            <ul class="infor-customer">
                                                <li>
                                                    <h5>Họ tên</h5>
                                                    <p>${accountOrder.orderName}</p>
                                                </li>
                                                <li>
                                                    <h5>Emai</h5>
                                                    <p>${accountOrder.orderEmail}</p>
                                                </li>
                                                <li>
                                                    <h5>Số điện thoại</h5>
                                                    <p>${accountOrder.orderPhone}</p>
                                                </li>                                              
                                                <li>
                                                    <h5>Địa chỉ người nhận</h5>
                                                    <p>${accountOrder.shippingAddress}</p>
                                                </li>
                                            </ul>

                                        </div>
                                    </div>

                                </div>                   
                            </div>
                            <!--end row-->
                            <!--                        <div class="row text-center">
                                                         Pagination 
                                                        <div class="col-12 mt-4">
                                                            <div class="d-md-flex align-items-center text-center justify-content-between">
                                                                <span class="text-muted me-3">Hiển thị ${(currentPage - 1) * 15 + 1} - ${(currentPage - 1) * 15 + sliders.size()} ${totalItems}</span>
                                                                <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                                                     Previous Button 
                            <c:if test="${currentPage > 1}">
                                <li class="page-item">
                                    <a class="page-link" href="${pageContext.request.contextPath}/SliderList?page=${currentPage - 1}&search=${param.search}&status=${param.status}" aria-label="Previous">Prev</a>
                                </li>
                            </c:if>
    
                             Page Numbers 
                            <c:forEach begin="1" end="${totalPages}" var="page">
                                <li class="page-item ${currentPage == page ? 'active' : ''}">
                                    <a class="page-link" href="${pageContext.request.contextPath}/SliderList?page=${page}&search=${param.search}&status=${param.status}">${page}</a>
                                </li>
                            </c:forEach>
    
                             Next Button 
                            <c:if test="${sliders.size() == 15}">
                                <li class="page-item">
                                    <a class="page-link" href="${pageContext.request.contextPath}/SliderList?page=${currentPage + 1}&search=${param.search}&status=${param.status}" aria-label="Next">Next</a>
                                </li>
                            </c:if>
                        </ul>
                    </div>
                </div>
                                                                         PAGINATION END 
            </div>end row-->
                        </div>
                    </div><!--end container-->

                    <!-- Footer Start -->
                    <footer class="bg-white shadow py-3">

                    </footer><!--end footer-->
                    <!-- End -->
            </main>
            <!--End page-content" -->
        </div>
        <!-- page-wrapper -->
        <!-- javascript -->
        <script src="assets_son/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="assets_son/js/simplebar.min.js"></script>
        <!-- Icons -->
        <script src="assets_son/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets_son/js/app.js"></script>

    </body>
</html>


