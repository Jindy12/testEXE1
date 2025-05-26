<%-- 
    Document   : userList
    Created on : Oct 20, 2024, 11:32:02 PM
    Author     : hiule
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Doctris - Doctor Appointment Booking System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="../../../index.html" />
        <meta name="Version" content="v1.2.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="assets1/images/favicon.ico.png">
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

    </head>
    <style>.dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-menu {
            display: none; /* Hide dropdown by default */
            position: absolute;
            background-color: white;
            border: 1px solid #ccc;
            z-index: 1;
        }

        .dropdown:hover .dropdown-menu {
            display: block; /* Show dropdown on hover */
        }

        .dropdown-item {
            padding: 10px;
            text-decoration: none;
            color: black;
            display: block;
        }

        .dropdown-item:hover {
            background-color: #f0f0f0; /* Change background on hover */
        }</style>
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
                                <img src="assets1/images/logo-icon.png" height="30" class="small" alt="">
                                <span class="big">
                                    <img src="assets1/images/logo-dark.png" height="24" class="logo-light-mode" alt="">
                                    <img src="assets1/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                                </span>
                            </a>
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>


                            <div class="search-bar p-0 d-none d-lg-block ms-2">
                                <div id="search" class="menu-search mb-0">
                                    <form method="get" id="searchform" class="searchform" action="searchUser">
                                        <div>
                                            <input type="text" class="form-control border rounded-pill" name="keyword" id="s" placeholder="Search Keywords..." value="${param.keyword}" >
                                            <input type="submit" id="searchsubmit" value="Search">
                                        </div>
                                    </form>                             </div>
                            </div>
                            <a href="userlist" class="btn btn-secondary ms-2">Reset Search</a> <!-- Reset button -->
                        </div>


                    </div>
                </div>

                <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">User List</h5>
                            <c:if test="${not empty sessionScope.msg_suc}">
                                <div class="alert alert-success">
                                    ${sessionScope.msg_suc}
                                </div>
                                <c:remove var="msg_suc" scope="session" />
                            </c:if>
                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="admindashboard">Admin</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">User List</li>

                                </ul>
                            </nav>
                        </div>

                        <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                    <table class="table table-center bg-white mb-0">



                                        <table class="table table-center bg-white mb-0">
                                            <thead>
                                                <tr>

                                                    <th class="border-bottom p-3">Name</th>
                                                    <th class="border-bottom p-3">Email</th>
                                                    <th class="border-bottom p-3">Mobile</th>
                                                    <th class="border-bottom p-3">Gender</th>
                                                    <th class="border-bottom p-3">Address</th>
                                                    <th class="border-bottom p-3">Role</th>
                                                    <th class="border-bottom p-3">Avatar</th>
                                                    <th class="border-bottom p-2">Status</th>
                                                    <th class="border-bottom text-center p-4">Edit</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:if test="${ empty sessionScope.accountOneAdmin}"> 
                                                    <c:forEach var="account" items="${sessionScope.accountListAdmin}">
                                                        <tr>

                                                            <td class="p-3">${account.firstName} ${account.lastName}</td>
                                                            <td class="p-3">${account.email}</td>
                                                            <td class="p-3">${account.mobile}</td>
                                                            <td class="p-3">
                                                                <c:choose>
                                                                    <c:when test="${account.gender == 0}">
                                                                        Male
                                                                    </c:when>
                                                                    <c:when test="${account.gender == 1}">
                                                                        Female
                                                                    </c:when>
                                                                    <c:when test="${account.gender == 3}">
                                                                        Other
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        Not Specified
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td class="p-3">${account.address}</td>
                                                            <td class="p-3">
                                                                <c:choose>
                                                                    <c:when test="${account.roleId == 1}">
                                                                        Admin
                                                                    </c:when>
                                                                    <c:when test="${account.roleId == 2}">
                                                                        Marketing
                                                                    </c:when>
                                                                    <c:when test="${account.roleId == 3}">
                                                                        Sale
                                                                    </c:when>
                                                                    <c:when test="${account.roleId == 4}">
                                                                        Customer
                                                                    </c:when>
                                                                    <c:when test="${account.roleId == 5}">
                                                                        Shipper
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        Unknown Role
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </td>
                                                            <td class="p-3"><img src="img/${account.avatar}" alt="avatar" class="avatar avatar-md-sm rounded-circle shadow"></td>
                                                            <td class="p-2">
                                                                <c:if test="${ account.status == 1 }">  
                                                                    <span class="badge bg-soft-success">Hoạt Động</span>
                                                                </c:if>
                                                                <c:if test="${ account.status == 2 }">  
                                                                    <span class="badge bg-soft-warning">Không Hoạt Động</span>
                                                                </c:if>
                                                                <c:if test="${ account.status == 0 }">  
                                                                    <span class="badge bg-soft-warning">Pending</span>
                                                                </c:if>

                                                            </td>
                                                            <c:if test="${account.userId != sessionScope.account.userId}">

                                                                <td class="text-center p-4">
                                                                    <div class="dropdown">
                                                                        <a href="" class="btn btn-icon btn-pills btn-soft-success dropdown-toggle" id="dropdownMenuButton" aria-expanded="false">
                                                                            <i class="uil uil-pen"></i>
                                                                        </a>
                                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                            <a class="dropdown-item" href="editRole?userId=${account.userId}&roleId=1">Admin</a>
                                                                            <a class="dropdown-item" href="editRole?userId=${account.userId}&roleId=2">Marketing</a>
                                                                            <a class="dropdown-item" href="editRole?userId=${account.userId}&roleId=3">Sale</a>
                                                                            <a class="dropdown-item" href="editRole?userId=${account.userId}&roleId=4">Customer</a>
                                                                            <a class="dropdown-item" href="editRole?userId=${account.userId}&roleId=5">Shipper</a>
                                                                        </div>
                                                                    </div>

                                                                    <div class="dropdown">
                                                                        <a href="" class="btn btn-icon btn-pills btn-soft-danger dropdown-toggle" id="dropdownMenuButton" aria-expanded="false">
                                                                            <i class="uil uil-ban"></i>
                                                                        </a>
                                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                            <a class="dropdown-item" href="banUser?userId=${account.userId}&status=0">Duyệt Lại</a>
                                                                            <a class="dropdown-item" href="banUser?userId=${account.userId}&status=1">Hoạt Động</a>
                                                                            <a class="dropdown-item" href="banUser?userId=${account.userId}&status=2">Cấm</a>

                                                                        </div>
                                                                    </div>
                                                                    <a href="userprofileadmin?userId=${account.userId}" class="btn btn-icon btn-pills btn-soft-primary">
                                                                        <i class="uil uil-eye"></i>



                                                                </td>
                                                            </c:if>
                                                        </tr>
                                                    </c:forEach>
                                                </c:if>
                                                <c:if test="${not empty sessionScope.accountOneAdmin}">  
                                                    <tr>

                                                        <td class="p-3">${sessionScope.accountOneAdmin.firstName} ${sessionScope.accountOneAdmin.lastName}</td>
                                                        <td class="p-3">${sessionScope.accountOneAdmin.email}</td>
                                                        <td class="p-3">${sessionScope.accountOneAdmin.mobile}</td>
                                                        <td class="p-3">
                                                            <c:choose>
                                                                <c:when test="${sessionScope.accountOneAdmin.gender == 0}">
                                                                    Male
                                                                </c:when>
                                                                <c:when test="${sessionScope.accountOneAdmin.gender == 1}">
                                                                    Female
                                                                </c:when>
                                                                <c:when test="${sessionScope.accountOneAdmin.gender == 3}">
                                                                    Other
                                                                </c:when>
                                                                <c:otherwise>
                                                                    Not Specified
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td class="p-3">${sessionScope.accountOneAdmin.address}</td>
                                                        <td class="p-3">
                                                            <c:choose>
                                                                <c:when test="${sessionScope.accountOneAdmin.roleId == 1}">
                                                                    Admin
                                                                </c:when>
                                                                <c:when test="${sessionScope.accountOneAdmin.roleId == 2}">
                                                                    Marketing
                                                                </c:when>
                                                                <c:when test="${sessionScope.accountOneAdmin.roleId == 3}">
                                                                    Sale
                                                                </c:when>
                                                                <c:when test="${sessionScope.accountOneAdmin.roleId == 4}">
                                                                    Customer
                                                                </c:when>
                                                                <c:when test="${sessionScope.accountOneAdmin.roleId == 5}">
                                                                    Shipper
                                                                </c:when>
                                                                <c:otherwise>
                                                                    Unknown Role
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </td>
                                                        <td class="p-3"><img src="img/${sessionScope.accountOneAdmin.avatar}" alt="avatar" class="avatar avatar-md-sm rounded-circle shadow"></td>
                                                        <td class="p-3"><span class="badge bg-soft-success">action</span></td>
                                                        <td class="text-end p-3">


                                                            <a href="" class="btn btn-icon btn-pills btn-soft-success" data-bs-toggle="modal" data-bs-target="#editprofile"><i class="uil uil-pen"></i></a>
                                                            <a href="#" class="btn btn-icon btn-pills btn-soft-danger"><i class="uil uil-trash"></i></a>
                                                        </td>
                                                    </tr>    </c:if>
                                                </tbody>
                                            </table>

                                    </div>
                                </div>
                            </div><!--end row-->

                            <div class="row text-center">
                                <!-- PAGINATION START -->
                                <div class="col-12 mt-4">
                                    <div class="d-md-flex align-items-center text-center justify-content-between">

                                        <!--                                        <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                                                                    <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Previous">Prev</a></li>
                                                                                    <li class="page-item active"><a class="page-link" href="javascript:void(0)">1</a></li>
                                                                                    <li class="page-item"><a class="page-link" href="javascript:void(0)">2</a></li>
                                                                                    <li class="page-item"><a class="page-link" href="javascript:void(0)">3</a></li>
                                                                                    <li class="page-item"><a class="page-link" href="javascript:void(0)" aria-label="Next">Next</a></li>
                                                                                </ul>-->
                                    <c:choose>
                                        <c:when test="${accountListAdmin==null || accountListAdmin.size()==0}">
                                            Not founds
                                        </c:when>
                                        <c:otherwise>
                                            <nav aria-label="Page navigation example" class="d-flex justify-content-center">
                                                <ul class="pagination">

                                                    <c:forEach begin="1" end="${totalPage}" var="i">
                                                        <li class="page-item ${i == page?"active":""}"><a class="page-link" href="userlist?page=${i}">${i}</a></li>
                                                        </c:forEach>

                                                </ul>
                                            </nav>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                            </div><!--end col-->
                            <!-- PAGINATION END -->
                        </div><!--end row-->
                    </div>
                </div><!--end container-->

                <!-- Footer Start -->

                <!-- End -->
            </main>
            <!--End page-content" -->
        </div>
        <!-- page-wrapper -->

        <!-- Offcanvas Start -->
        <div class="offcanvas offcanvas-end bg-white shadow" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
            <div class="offcanvas-header p-4 border-bottom">
                <h5 id="offcanvasRightLabel" class="mb-0">
                    <img src="assets1/images/logo-dark.png" height="24" class="light-version" alt="">
                    <img src="assets1/images/logo-light.png" height="24" class="dark-version" alt="">
                </h5>
                <button type="button" class="btn-close d-flex align-items-center text-dark" data-bs-dismiss="offcanvas" aria-label="Close"><i class="uil uil-times fs-4"></i></button>
            </div>
            <div class="offcanvas-body p-4 px-md-5">
                <div class="row">
                    <div class="col-12">
                        <!-- Style switcher -->
                        <div id="style-switcher">
                            <div>
                                <ul class="text-center list-unstyled mb-0">
                                    <li class="d-grid"><a href="javascript:void(0)" class="rtl-version t-rtl-light" onclick="setTheme('style-rtl')"><img src="assets1/images/layouts/light-dash-rtl.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">RTL Version</span></a></li>
                                    <li class="d-grid"><a href="javascript:void(0)" class="ltr-version t-ltr-light" onclick="setTheme('style')"><img src="assets1/images/layouts/light-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">LTR Version</span></a></li>
                                    <li class="d-grid"><a href="javascript:void(0)" class="dark-rtl-version t-rtl-dark" onclick="setTheme('style-dark-rtl')"><img src="assets1/images/layouts/dark-dash-rtl.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">RTL Version</span></a></li>
                                    <li class="d-grid"><a href="javascript:void(0)" class="dark-ltr-version t-ltr-dark" onclick="setTheme('style-dark')"><img src="assets1/images/layouts/dark-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">LTR Version</span></a></li>
                                    <li class="d-grid"><a href="javascript:void(0)" class="dark-version t-dark mt-4" onclick="setTheme('style-dark')"><img src="assets1/images/layouts/dark-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">Dark Version</span></a></li>
                                    <li class="d-grid"><a href="javascript:void(0)" class="light-version t-light mt-4" onclick="setTheme('style')"><img src="assets1/images/layouts/light-dash.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">Light Version</span></a></li>
                                    <li class="d-grid"><a href="../landing/index.html" target="_blank" class="mt-4"><img src="assets1/images/layouts/landing-light.png" class="img-fluid rounded-md shadow-md d-block" alt=""><span class="text-muted mt-2 d-block">Landing Demos</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- end Style switcher -->
                    </div><!--end col-->
                </div><!--end row-->
            </div>

            <div class="offcanvas-footer p-4 border-top text-center">
                <ul class="list-unstyled social-icon mb-0">
                    <li class="list-inline-item mb-0"><a href="https://1.envato.market/doctris-template" target="_blank" class="rounded"><i class="uil uil-shopping-cart align-middle" title="Buy Now"></i></a></li>
                    <li class="list-inline-item mb-0"><a href="https://dribbble.com/shreethemes" target="_blank" class="rounded"><i class="uil uil-dribbble align-middle" title="dribbble"></i></a></li>
                    <li class="list-inline-item mb-0"><a href="https://www.facebook.com/shreethemes" target="_blank" class="rounded"><i class="uil uil-facebook-f align-middle" title="facebook"></i></a></li>
                    <li class="list-inline-item mb-0"><a href="https://www.instagram.com/shreethemes/" target="_blank" class="rounded"><i class="uil uil-instagram align-middle" title="instagram"></i></a></li>
                    <li class="list-inline-item mb-0"><a href="https://twitter.com/shreethemes" target="_blank" class="rounded"><i class="uil uil-twitter align-middle" title="twitter"></i></a></li>
                    <li class="list-inline-item mb-0"><a href="mailto:support@shreethemes.in" class="rounded"><i class="uil uil-envelope align-middle" title="email"></i></a></li>
                    <li class="list-inline-item mb-0"><a href="../../../index.html" target="_blank" class="rounded"><i class="uil uil-globe align-middle" title="website"></i></a></li>
                </ul><!--end icon-->
            </div>
        </div>
        <!-- Offcanvas End -->

        <!-- Modal start -->
        <!-- Profile Settings Start -->
        <div class="modal fade" id="editprofile" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-bottom p-3">
                        <h5 class="modal-title" id="exampleModalLabel">Profile Settings</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-3 pt-4">
                        <div class="row align-items-center">
                            <div class="col-lg-2 col-md-4">
                                <img src="assets1/images/doctors/01.jpg" class="avatar avatar-md-md rounded-pill shadow mx-auto d-block" alt="">
                            </div><!--end col-->

                            <div class="col-lg-5 col-md-8 text-center text-md-start mt-4 mt-sm-0">
                                <h6 class="">Upload your picture</h6>
                                <p class="text-muted mb-0">For best results, use an image at least 256px by 256px in either .jpg or .png format</p>
                            </div><!--end col-->

                            <div class="col-lg-5 col-md-12 text-lg-end text-center mt-4 mt-lg-0">
                                <a href="#" class="btn btn-primary">Upload</a>
                                <a href="#" class="btn btn-soft-primary ms-2">Remove</a>
                            </div><!--end col-->
                        </div><!--end row-->

                        <form class="mt-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">First Name</label>
                                        <input name="name" id="name" type="text" class="form-control" placeholder="First Name :">
                                    </div>
                                </div><!--end col-->

                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Last Name</label>
                                        <input name="name" id="name2" type="text" class="form-control" placeholder="Last Name :">
                                    </div>
                                </div><!--end col-->

                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Your Email</label>
                                        <input name="email" id="email" type="email" class="form-control" placeholder="Your email :">
                                    </div> 
                                </div><!--end col-->

                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label class="form-label">Phone no.</label>
                                        <input name="number" id="number" type="text" class="form-control" placeholder="Phone no. :">
                                    </div>                                                                               
                                </div><!--end col-->

                                <div class="col-md-12">
                                    <div class="mb-3">
                                        <label class="form-label">Your Bio Here</label>
                                        <textarea name="comments" id="comments" rows="4" class="form-control" placeholder="Bio :"></textarea>
                                    </div>
                                </div>
                            </div><!--end row-->

                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="submit" id="submit" name="send" class="btn btn-primary" value="Save changes">
                                </div><!--end col-->
                            </div><!--end row-->
                        </form><!--end form-->
                    </div>
                </div>
            </div>
        </div>
        <!--         Profile Settings End 
        
        -->                 Profile Start 
        <!--               <div  class="modal fade" id="viewprofile" tabindex="-1" aria-labelledby="exampleModalLabel1" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header border-bottom p-3">
                                <h5 class="modal-title" id="exampleModalLabel1">Profile</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body p-3 pt-4">
                                <div class="d-flex align-items-center">
                                     Use the account's avatar if available, otherwise provide a default image 
                                    <img src="img/${account.avatar}" class="avatar avatar-small rounded-pill" alt="Avatar">
                                    <h5 class="mb-0 ms-3">${acc.firstName} ${acc.lastName}</h5>
                                </div>
                                <ul class="list-unstyled mb-0 d-md-flex justify-content-between mt-4">
                                    <li>
                                        <ul class="list-unstyled mb-0">
                                            <li class="d-flex">
                                                <h6></h6>
                                                <p class="text-muted ms-2"></p>
                                            </li>
        
                                            <li class="d-flex">
                                                <h6>Gender:</h6>
                                                <p class="text-muted ms-2">
        <c:choose>
            <c:when test="${acc.gender == 0}">Male</c:when>
            <c:when test="${acc.gender == 1}">Female</c:when>
            <c:when test="${acc.gender == 3}">Other</c:when>
            <c:otherwise>Not Specified</c:otherwise>
        </c:choose>
        </p>
        </li>
        
        <li class="d-flex">
        <h6 class="mb-0">Role:</h6>
        <td class="p-3">
        <c:choose>
            <c:when test="${account.roleId == 1}">
                Admin
            </c:when>
            <c:when test="${account.roleId == 2}">
                Marketing
            </c:when>
            <c:when test="${account.roleId == 3}">
                Sale
            </c:when>
            <c:when test="${account.roleId == 4}">
                Customer
            </c:when>
            <c:when test="${account.roleId == 5}">
                Shipper
            </c:when>
            <c:otherwise>
                Unknown Role
            </c:otherwise>
        </c:choose>
        </td>
        </li>
        </ul>
        </li>
        <li>
        <ul class="list-unstyled mb-0">
        <li class="d-flex">
        <h6>Email:</h6>
        <p class="text-muted ms-2">${acc.email}</p>
        </li>
        
        <li class="d-flex">
        <h6>Mobile:</h6>
        <p class="text-muted ms-2">${acc.mobile}</p>
        </li>
        
        <li class="d-flex">
        <h6 class="mb-0">Address:</h6>
        <p class="text-muted ms-2 mb-0">${acc.address}</p>
        </li>
        </ul>
        </li>
        </ul>
        </div>
        </div>
        </div>
        </div>
        Profile End 
        Modal end -->
        <script>
            document.getElementById("dropdownMenuButton").addEventListener("click", function (event) {
                event.preventDefault(); // Prevent default anchor behavior
                const dropdownMenu = this.nextElementSibling;
                dropdownMenu.style.display = dropdownMenu.style.display === 'block' ? 'none' : 'block';
            });

            // Close dropdown if clicked outside
            window.addEventListener("click", function (event) {
                if (!event.target.matches('#dropdownMenuButton')) {
                    const dropdowns = document.querySelectorAll('.dropdown-menu');
                    dropdowns.forEach(dropdown => {
                        dropdown.style.display = 'none';
                    });
                }
            });
        </script>
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
