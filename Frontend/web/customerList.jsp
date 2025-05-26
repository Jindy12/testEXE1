<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer List</title>
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
        <link href="assetsTuan/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assetsTuan/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="assetsTuan/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assetsTuan/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assetsTuan/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
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
            <div class="body">
                <h1>Customer List</h1>
                <main class="page-content bg-light">
                    <div class="top-header">
                        <div class="header-bar d-flex justify-content-between border-bottom">
                            <div class="d-flex align-items-center">                                
                                <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                    <i class="uil uil-bars"></i>
                                </a>

                                <div class="search-bar p-0 d-none d-lg-block ms-2">
                                    <div id="search" class="menu-search mb-0">
                                        <form method="get" id="searchform" class="searchform" action="customerlist">
                                            <div>
                                                <input type="text" class="form-control border rounded-pill" name="search" id="s" placeholder="Search Customer..." value="${search}" >
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </div>
                                        </form>                             
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="container-fluid">
                        <div class="layout-specing">
                            <div class="d-md-flex justify-content-between">
                                <h5 class="mb-3">Customers List</h5>

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
                                        <li class="breadcrumb-item active" aria-current="page">Customer List</li>
                                    </ul>
                                </nav>
                            </div>

                            <!-- Khối lọc trạng thái -->
                            <div class="col-sm-3">
                                <form action="customerlist" method="get" class="d-flex">
                                    <div class="input-group">
                                        <select name="status" class="form-control">
                                            <option value="">Tất cả trạng thái</option>
                                            <option value="1" ${param.status == '1' ? 'selected' : ''}>Hoạt động</option>
                                            <option value="0" ${param.status == '0' ? 'selected' : ''}>Không hoạt động</option>
                                            <option value="2" ${param.status == '2' ? 'selected' : ''}>Đang xử lý</option>
                                        </select>
                                        <span class="input-group-append">
                                            <button class="btn btn-secondary" type="submit">Lọc</button>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="row">
                                <div class="col-12 mt-4">
                                    <div class="table-responsive shadow rounded">
                                        <table class="table table-center bg-white mb-0">
                                            <thead>
                                                <tr>
                                                    <th class="border-bottom p-3" style="min-width: 50px;">
                                                        <a class="text-decoration-none" href="customerlist?sort=userId&order=${order == 'asc' && sort == 'userId' ? 'desc' : 'asc'}">
                                                            ID <i class="fa fa-sort"></i>
                                                        </a></th>
                                                    <th class="border-bottom p-3" style="min-width: 150px;">
                                                        <a class="text-decoration-none" href="customerlist?sort=name&order=${order == 'asc' && sort == 'name' ? 'desc' : 'asc'}">
                                                            Họ và Tên <i class="fa fa-sort"></i>
                                                        </a>
                                                    </th>
                                                    <th class="border-bottom p-3">Avatar</th>
                                                    <th class="border-bottom p-3">Giới tính</th>
                                                    <th class="border-bottom p-3">
                                                        <a class="text-decoration-none" href="customerlist?sort=email&order=${order == 'asc' && sort == 'email' ? 'desc' : 'asc'}">
                                                            Email <i class="fa fa-sort"></i>
                                                        </a>
                                                    </th>
                                                    <th class="border-bottom p-3">
                                                        <a class="text-decoration-none" href="customerlist?sort=phone&order=${order == 'asc' && sort == 'phone' ? 'desc' : 'asc'}">
                                                            Số điện thoại <i class="fa fa-sort"></i>
                                                        </a>
                                                    </th>
                                                    <th class="border-bottom p-3">Địa chỉ</th>
                                                    <th class="border-bottom p-3">Trạng thái</th>
                                                    <th class="border-bottom p-3">Thao tác</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach var="customer" items="${customerList}">
                                                    <tr>
                                                        <td class="p-3">${customer.userId}</td>
                                                        <td class="p-3">${customer.firstName} ${customer.lastName}</td>
                                                        <td class="p-3">
                                                            <img src="img/${customer.avatar}" alt="avatar" style="width: 80px; height: 80px;" class="avatar avatar-md-sm rounded-circle shadow">
                                                        </td>
                                                        <td class="py-3">
                                                            <c:choose>
                                                                <c:when test="${customer.gender == 0}">Nam</c:when>
                                                                <c:when test="${customer.gender == 1}">Nữ</c:when>
                                                                <c:otherwise>Khác</c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td class="p-3">${customer.email}</td>
                                                        <td class="p-3">${customer.mobile}</td>
                                                        <td class="p-3">${customer.address}</td>
                                                        <td class="p-3">
                                                            <c:choose>
                                                                <c:when test="${customer.status == 0}">
                                                                    <span class="text-danger">Không hoạt động</span> <!-- Màu đỏ -->
                                                                </c:when>
                                                                <c:when test="${customer.status == 1}">
                                                                    <span class="text-success">Hoạt động</span> <!-- Màu xanh lục -->
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <span class="text-primary">Chờ xử lý</span> <!-- Màu xanh nước biển -->
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td class="p-3">

                                                            <a href="viewcustomer?userId=${customer.userId}" class="btn btn-icon btn-pills btn-soft-success"><i class="uil uil-pen"></i></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div><!--end row-->
                            <div class="row text-center">
                                <!-- Pagination -->
                                <div class="col-12 mt-4">
                                    <div class="d-md-flex align-items-center text-center justify-content-between">
                                        <span class="text-muted me-3">Showing <b>${page}</b> out of <b>${num}</b> pages customers</span>
                                        <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                            <c:if test="${page > 1}">
                                                <li class="page-item"><a class="page-link" href="customerlist?page=${page - 1}&sort=${sort}&order=${order}" aria-label="Previous">Prev</a></li>
                                                </c:if>
                                                <c:forEach begin="${(page - 1) <= 1 ? 1 : (page - 1)}" end="${page + 1 > num ? num : page + 1}" var="i">
                                                    <c:choose>
                                                        <c:when test="${i == page}">
                                                        <li class="page-item active"><a class="page-link">${i}</a></li>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <li class="page-item"><a href="customerlist?page=${i}&sort=${sort}&order=${order}" class="page-link">${i}</a></li>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                                <c:if test="${page < num}">
                                                <li class="page-item"><a class="page-link" href="customerlist?page=${page + 1}&sort=${sort}&order=${order}" aria-label="Next">Next</a></li>
                                                </c:if>
                                        </ul>
                                    </div>
                                </div>
                            </div><!--end row-->
                        </div>
                    </div>
                    <!--end container-->
            </div>
        </main>
    </div>
    <!-- javascript -->
    <script src="assetsSlider/js/bootstrap.bundle.min.js"></script>
    <!-- simplebar -->
    <script src="assetsSlider/js/simplebar.min.js"></script>
    <!-- Icons -->
    <script src="assetsSlider/js/feather.min.js"></script>
    <!-- Main Js -->
    <script src="assetsSlider/js/app.js"></script>
</body>
</html>