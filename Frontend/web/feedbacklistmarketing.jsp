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
        <title>Feedback List</title>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.10.5/font/bootstrap-icons.min.css">

        <style>
            /* CSS cho tooltip */
            .tooltip-text {
                visibility: hidden;
                width: 70px;
                background-color: white; /* Nền trắng */
                color: black; /* Màu chữ đen */
                text-align: center;
                border-radius: 5px;
                padding: 5px;
                border: 1px solid #ddd;
                position: absolute;
                z-index: 1;
                bottom: 125%; /* Đặt tooltip dưới thẻ */
                left: 50%;
                margin-left: -35px; /* Để căn giữa tooltip */
                opacity: 0;
                transition: opacity 0.3s;
                font-weight: bold;
            }

            /* Hiển thị tooltip khi hover */
            .tooltip-container:hover .tooltip-text {
                visibility: visible;
                opacity: 1;
            }

            /* Đảm bảo thẻ <a> có position relative để tooltip được căn đúng */
            .tooltip-container {
                position: relative;
                display: inline-block;
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
                                <li><a href="admindashboard"><i class="uil uil-dashboard me-2 d-inline-block"></i>Dashboard</a></li>
                                <li><a href="settingsList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Setting List</a></li>
                                <li><a href="userlist"><i class="uil uil-dashboard me-2 d-inline-block"></i>User List</a></li>
                                <li><a href="customerlist"><i class="uil uil-user me-2 d-inline-block"></i>Customer List</a></li>
                                <li><a href="proformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Product List</a></li>
                                <li><a href="SliderList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Slider List</a></li>
                                <li class="sidebar-dropdown">
                                    <a href="javascript:void(0)">
                                        <i class="uil uil-flip-h me-2 d-inline-block"></i>Posts List</a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li><a href="postlist">Tất cả bài viết</a></li>
                                                <c:forEach items="${topic}" var="t">
                                                <li><a href="postlist?topic=${t.blogTopicId}">${t.toppicName}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="orderlistforsale"><i class="uil uil-dashboard me-2 d-inline-block" ></i>Order List</a></li>
                                <li><a href="feedbacklistformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Feedback List</a></li>
                            </c:when>
                            <c:when test="${sessionScope.account.roleId == 2}">
                                <li><a href="marketingdashboard"><i class="uil uil-dashboard me-2 d-inline-block"></i>Dashboard</a></li>
                                <li><a href="customerlist"><i class="uil uil-user me-2 d-inline-block"></i>Customer List</a></li>
                                <li><a href="proformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Product List</a></li>
                                <li><a href="SliderList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Slider List</a></li>
                                <li class="sidebar-dropdown">
                                    <a href="javascript:void(0)">
                                        <i class="uil uil-flip-h me-2 d-inline-block"></i>Posts List</a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li><a href="postlist">Tất cả bài viết</a></li>
                                                <c:forEach items="${topic}" var="t">
                                                <li><a href="postlist?topic=${t.blogTopicId}">${t.toppicName}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="feedbacklistformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Feedback List</a></li>
                            </c:when>
                        </c:choose> 
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
                                    <form action="feedbacklistformarketing" role="search" method="get" id="searchform" class="searchform">
                                        <div class="search-container">
                                            <!-- Filter by status -->
                                            <span>
                                                <label for="status">Trạng thái:</label>
                                            </span>
                                            <span>
                                                <select name="status" style="height:40px; border-radius: 10px; padding: 10px; border: 1px solid #ccc;">
                                                    <option value="">Tất cả</option>
                                                    <option value="1" ${param.status == '1' ? 'selected' : ''}>Hiện</option>
                                                    <option value="0" ${param.status == '0' ? 'selected' : ''}>Ẩn</option>

                                                </select>
                                            </span>
                                            <!-- Search by title or backlink -->
                                            <span>
                                                <input type="text" class="form-control border rounded-pill" id="s" name="search" placeholder="Tìm kiếm" value="${param.search}" />
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
                            <h5 class="mb-0">Slider</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <c:choose>
                                        <c:when test="${sessionScope.account.roleId == 1}">
                                            <li class="breadcrumb-item"><a href="admindashboard">Admin</a></li>
                                            </c:when>
                                        </c:choose>
                                        <c:choose>
                                            <c:when test="${sessionScope.account.roleId == 2}">
                                            <li class="breadcrumb-item"><a href="marketingdashboard">Marketing</a></li>
                                            </c:when>
                                        </c:choose>

                                    <li class="breadcrumb-item active" aria-current="page">Feedback</li>
                                </ul>
                            </nav>
                        </div>
                        <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-bottom p-3" style="min-width: 20px;">
                                                    <a class="text-decoration-none" href="feedbacklistformarketing?sort=feedbackId&search=${search}&status=${status}&order=${order == 'asc' && sort == 'feedbackId' ? 'desc' : 'asc'}">
                                                        ID <i class="fa fa-sort"></i>
                                                    </a>
                                                </th>
                                                <th class="border-bottom p-3" style="min-width: 140px;">
                                                    Tên nguời dùng
                                                </th>
                                                <th class="border-bottom p-3">
                                                    <a class="text-decoration-none" href="feedbacklistformarketing?sort=name&search=${search}&status=${status}&order=${order == 'asc' && sort == 'name' ? 'desc' : 'asc'}">
                                                        Tên sản phẩm <i class="fa fa-sort"></i>
                                                    </a>
                                                </th>
                                                <th class="border-bottom p-3" style="max-width: 330px">Nội dung</th>
                                                <th class="border-bottom p-3">
                                                    <a class="text-decoration-none" href="feedbacklistformarketing?sort=time&search=${search}&status=${status}&order=${order == 'asc' && sort == 'time' ? 'desc' : 'asc'}">
                                                        Thời gian <i class="fa fa-sort"></i>
                                                    </a>
                                                </th>
                                                <th class="border-bottom p-3">Đánh giá</th>
                                                <th class="border-bottom p-3" style="min-width: 100px;"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="list" items="${listFeedback}">
                                                <tr>
                                                    <td class="p-3">${list.feedbackId}</td>
                                                    <td class="p-3" style="min-width: 140px;">
                                                        <c:forEach items="${requestScope.listAccount}" var="account">
                                                            <c:if test="${account.userId == list.userId}">
                                                                ${account.firstName} ${account.lastName}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td class="p-3">
                                                        <c:forEach items="${requestScope.listProduct}" var="pro">
                                                            <c:if test="${pro.productId == list.productId}">
                                                                ${pro.name}
                                                            </c:if>
                                                        </c:forEach>
                                                    </td>
                                                    <td class="py-3" style="max-width: 330px">${list.feedbackInfo}</td>
                                                    <td class="p-3">${list.feedbackTime}</td>
                                                    <td class="p-3">
                                                        <c:forEach var="i" begin="1" end="5">
                                                            <c:choose>
                                                                <c:when test="${i <= list.feedbackRate}">
                                                                    <i class="fa fa-star"></i>
                                                                </c:when>
                                                                <c:when test="${i == (list.feedbackRate + 1) && list.feedbackRate % 1 != 0}">
                                                                    <i class="fas fa-star-half-alt"></i>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <i class="far fa-star"></i>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </c:forEach>

                                                    </td>
                                                    <td>
                                                        <form action="feedbacklistformarketing" method="post" style="display: inline;">
                                                            <input type="hidden" name="feedbackId" value="${list.feedbackId}" />
                                                            <input type="hidden" name="status" value="${list.status == 1 ? 0 : 1}">
                                                            <input type="hidden" name="currentStatus" value="${status}" />

                                                            <!-- Container cho nút và tooltip -->
                                                            <div class="tooltip-container" style="position: relative; display: inline-block;">
                                                                <button 
                                                                    type="submit" 
                                                                    name="action" 
                                                                    value="updateSliderStatus" 
                                                                    class="btn btn-icon btn-pills ${list.status == 1 ? 'btn-soft-danger' : 'btn-soft-success'}">
                                                                    <span class="${list.status == 1 ? 'uil uil-times' : 'uil uil-check'}"></span>
                                                                </button>

                                                                <!-- Tooltip -->
                                                                <div class="tooltip-text ${list.status == 1 ? '' : 'tooltip-show'}">
                                                                    ${list.status == 1 ? 'Ẩn' : 'Hiện'}
                                                                </div>
                                                            </div>
                                                        </form>
                                                        <div class="tooltip-container">
                                                            <a href="feedbackdetail?id=${list.feedbackId}" class="btn btn-icon btn-pills btn-soft-success">
                                                                <i class="uil uil-pen"></i>
                                                            </a>

                                                            <!-- Tooltip cho thẻ <a> -->
                                                            <div class="tooltip-text">
                                                                Chi tiết
                                                            </div>
                                                        </div>
                                                    </td>

                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!--end row-->
                        <div class="row text-center">
                            <!-- Pagination -->
                            <div class="col-12 mt-4">
                                <div class="d-md-flex align-items-center text-center justify-content-between">

                                    <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                        <c:set var="queryString" value="" />

                                        <!-- Kiểm tra và thêm tham số sort nếu có -->
                                        <c:if test="${not empty sort}">
                                            <c:set var="queryString" value="${queryString}&sort=${sort}&order=${order}" />
                                        </c:if>

                                        <!-- Kiểm tra và thêm tham số search nếu có -->
                                        <c:if test="${not empty search}">
                                            <c:set var="queryString" value="${queryString}&search=${search}" />
                                        </c:if>

                                        <!-- Kiểm tra và thêm tham số status nếu có -->
                                        <c:if test="${not empty status}">
                                            <c:set var="queryString" value="${queryString}&status=${status}" />
                                        </c:if>



                                        <c:if test="${index > 1}">
                                            <li class="page-item">
                                                <a class="page-link" href="feedbacklistformarketing?index=${index - 1}${queryString}" aria-label="Previous">Prev
                                                </a></li>
                                            </c:if>
                                            <c:forEach begin="${(index - 1) <= 1 ? 1 : (index - 1)}" end="${index + 1 > endP ? endP : index + 1}" var="i">
                                                <c:choose>
                                                    <c:when test="${i == index}">
                                                    <li class="page-item active"><a class="page-link">${i}</a></li>
                                                    </c:when>
                                                    <c:otherwise>
                                                    <li class="page-item"><a href="feedbacklistformarketing?index=${i}${queryString}" class="page-link">${i}</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                            </c:forEach>
                                            <c:if test="${index < endP}">
                                            <li class="page-item"><a class="page-link" href="feedbacklistformarketing?index=${index + 1}${queryString}" aria-label="Next">Next</a></li>
                                            </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
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
