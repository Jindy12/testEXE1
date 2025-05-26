<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Carpipi</title>
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
        <link href="assets1/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assets1/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Select2 -->
        <link href="assets1/css/select2.min.css" rel="stylesheet" />
        <!-- Icons -->
        <link href="assets1/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets1/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assets1/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />

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
                        <li><a href="index.html"><i class="uil uil-dashboard me-2 d-inline-block"></i>Dashboard</a></li>


                        <li class="sidebar-dropdown">
                            <a href="userpro"><i class="uil uil-user me-2 d-inline-block"></i>Profile</a>

                        </li>





                        <li class="sidebar-dropdown">
                            <a href="javascript:void(0)"><i class="uil uil-shopping-cart me-2 d-inline-block"></i>Shopping Cart</a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li><a href="shop.html">Shop</a></li>
                                    <li><a href="product-detail.html">Shop Detail</a></li>
                                    <li><a href="shopcart.html">Shopcart</a></li>
                                    <li><a href="checkout.html">Checkout</a></li>
                                </ul>
                            </div>
                        </li>

                        <li class="sidebar-dropdown">
                            <a href="javascript:void(0)"><i class="uil uil-flip-h me-2 d-inline-block"></i>Blogs</a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li><a href="blogs.html">Blogs</a></li>
                                    <li><a href="blog-detail.html">Blog Detail</a></li>
                                </ul>
                            </div>
                        </li>






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
                                    <form role="search" method="get" id="searchform" class="searchform">
                                        <div>
                                            <input type="text" class="form-control border rounded-pill" name="s" id="s" placeholder="Search Keywords...">
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
                            <h5 class="mb-0">Add User</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item"><a href="userlist">Danh Sách Người Dùng</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Thêm Người Dùng</li>
                                </ul>
                            </nav>
                        </div>

                        <div class="row">
                            <div class="col-lg-8 mt-4">
                                <div class="card border-0 p-4 rounded shadow">
                                    <div class="row align-items-center">
                                        <div class="col-lg-2 col-md-4">
                                            <img src="img/avatar-trang-4.jpg"  class="avatar avatar-md-md rounded-pill shadow mx-auto d-block" alt="">
                                        </div><!--end col-->

                                        <div class="col-lg-5 col-md-8 text-center text-md-start mt-4 mt-sm-0">

                                           

                                            <!-- Display Error Message -->
                                            <c:if test="${not empty sessionScope.msg_err}">
                                                <div class="alert alert-danger">
                                                    ${sessionScope.msg_err}
                                                </div>
                                                <c:remove var="msg_err" scope="session" />
                                            </c:if>








                                            <!-- Display Specific Error Messages -->







                                        </div><!--end col-->

                                        
                                    </div><!--end row-->

                                    <form action="addUser" method="post" enctype="multipart/form-data">
                                        <div class="row">
                                            <!-- First Name -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Họ</label>
                                                    <input name="firstName" type="text" class="form-control" placeholder="First Name :"
                                                           value="${sessionScope.input_firstName}" required>
                                                </div>
                                                <c:if test="${not empty sessionScope.msg_firstname}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_firstname}
                                                    </div>
                                                    <c:remove var="msg_firstname" scope="session" />
                                                </c:if>
                                            </div>

                                            <!-- Last Name -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Tên</label>
                                                    <input name="lastName" type="text" class="form-control" placeholder="Last Name :"
                                                           value="${sessionScope.input_lastName}" required>
                                                </div>
                                                <c:if test="${not empty sessionScope.msg_lastname}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_lastname}
                                                    </div>
                                                    <c:remove var="msg_lastname" scope="session" />
                                                </c:if>
                                            </div>

                                            <!-- User Name -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Tên Người Dùng</label>
                                                    <input name="userName" type="text" class="form-control" placeholder="Tên Người Dùng :"
                                                           value="${sessionScope.input_userName}" required>
                                                </div>
                                                <c:if test="${not empty sessionScope.msg_username}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_username}
                                                    </div>
                                                    <c:remove var="msg_username" scope="session" />
                                                </c:if>
                                                <c:if test="${not empty sessionScope.msg_username_ex}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_username_ex}
                                                    </div>
                                                    <c:remove var="msg_username_ex" scope="session" />
                                                </c:if>
                                            </div>

                                            <!-- Email -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Email</label>
                                                    <input name="email" type="email" class="form-control" placeholder="Your email :"
                                                           value="${sessionScope.input_email}" required>
                                                </div>
                                                <c:if test="${not empty sessionScope.msg_gmail}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_gmail}
                                                    </div>
                                                    <c:remove var="msg_gmail" scope="session" />
                                                </c:if>
                                                <c:if test="${not empty sessionScope.msg_gmail_ex}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_gmail_ex}
                                                    </div>
                                                    <c:remove var="msg_gmail_ex" scope="session" />
                                                </c:if>
                                            </div>

                                            <!-- Phone Number -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Số điện thoại</label>
                                                    <input name="mobile" type="text" class="form-control" placeholder="Phone number :"
                                                           value="${sessionScope.input_mobile}" required>
                                                </div>
                                                <c:if test="${not empty sessionScope.msg_phone}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_phone}
                                                    </div>
                                                    <c:remove var="msg_phone" scope="session" />
                                                </c:if>
                                                <c:if test="${not empty sessionScope.msg_phone_ex}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_phone_ex}
                                                    </div>
                                                    <c:remove var="msg_phone_ex" scope="session" />
                                                </c:if>
                                            </div>

                                            <!-- Address -->
                                            <div class="col-md-12">
                                                <div class="mb-3">
                                                    <label class="form-label">Địa chỉ</label>
                                                    <input name="address" type="text" class="form-control" placeholder="Address :"
                                                           value="${sessionScope.input_address}" required>                                                </div>
                                            </div>

                                            <!-- Gender -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Giới tính</label>
                                                    <select name="gender" class="form-control" required>
                                                        <option value="0" ${sessionScope.input_gender == 0 ? 'selected' : ''}>Nam</option>
                                                        <option value="1" ${sessionScope.input_gender == 1 ? 'selected' : ''}>Nữ</option>
                                                        <option value="2" ${sessionScope.input_gender == 2 ? 'selected' : ''}>Khác</option>
                                                    </select>
                                                </div>
                                            </div>

                                            <!-- Role -->
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label class="form-label">Vai trò</label>
                                                    <select name="role" class="form-control" required>
                                                        <option value="1" ${sessionScope.input_role == 1 ? 'selected' : ''}>Admin</option>
                                                        <option value="2" ${sessionScope.input_role == 2 ? 'selected' : ''}>Marketing</option>
                                                        <option value="3" ${sessionScope.input_role == 3 ? 'selected' : ''}>Sale</option>
                                                        <option value="4" ${sessionScope.input_role == 4 ? 'selected' : ''}>Customer</option>
                                                        <option value="5" ${sessionScope.input_role == 5 ? 'selected' : ''}>Shipper</option>
                                                    </select>
                                                </div>
                                                <c:if test="${not empty sessionScope.msg_role}">
                                                    <div class="text-danger" style="font-size: 0.875em;">
                                                        ${sessionScope.msg_role}
                                                    </div>
                                                    <c:remove var="msg_role" scope="session" />
                                                </c:if>
                                            </div>

                                            <!-- Avatar -->
                                            <div class="col-md-12">
                                                <label class="labels">Chọn ảnh đại diện</label>
                                                <input name="avatar" type="file" class="form-control" accept="image/*">
                                                <small class="form-text text-muted mb-2">chọn ảnh</small>
                                            </div>
                                        </div><!--end row-->
<c:remove var="input_firstName" scope="session"/>
<c:remove var="input_lastName" scope="session"/>
<c:remove var="input_userName" scope="session"/>
<c:remove var="input_email" scope="session"/>
<c:remove var="input_mobile" scope="session"/>
<c:remove var="input_address" scope="session"/>
<c:remove var="input_gender" scope="session"/>
<c:remove var="input_role" scope="session"/>

                                        <button type="submit" class="btn btn-primary">Add User</button>
                                        
                                    </form>

                                </div>
                            </div><!--end col-->

                            <div class="col-lg-4 mt-4">
                                <div class="card rounded border-0 shadow">
                                    <div class="p-4 border-bottom">
                                        <h5 class="mb-0">Danh Sách Người Dùng</h5>
                                    </div>

                                    <ul class="list-unstyled mb-0 p-4" data-simplebar style="height: 664px;">
                                        <c:forEach var="account" items="${sessionScope.accountListAdmin}">
                                            <li class="d-md-flex align-items-center text-center text-md-start">
                                                <img src="img/${account.avatar}" class="avatar avatar-medium rounded-md shadow" alt="avatar">

                                                <div class="ms-md-3 mt-4 mt-sm-0">
                                                    <a href="#" class="text-dark h6">${account.firstName} ${account.lastName}</a>
                                                    <p class="text-muted my-1">
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
                                                    </p>
                                                    <p class="text-muted mb-0">
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
                                                    </p>
                                                </div>
                                            </li>
                                        </c:forEach>


                                        <li class="mt-4">
                                            <a href="userlist" class="btn btn-primary">Tất Cả Người Dùng</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div><!--end row-->

                    </div>
                </div><!--end container-->

                <!-- Footer Start -->
                <footer class="bg-white shadow py-3">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="text-sm-start text-center">
                                    <p class="mb-0 text-muted"><script>document.write(new Date().getFullYear())</script>  Design with  <i class="mdi mdi-heart text-danger"></i> by <a href="../../../index.html" target="_blank" class="text-reset">hieu</a>.</p>
                                </div>
                            </div><!--end col-->
                        </div><!--end row-->
                    </div><!--end container-->
                </footer><!--end footer-->
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

        <!-- View Appintment Start -->
        <div class="modal fade" id="viewappointment" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header border-bottom p-3">
                        <h5 class="modal-title" id="exampleModalLabel">Appointment Detail</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body p-3 pt-4">
                        <div class="d-flex align-items-center">
                            <img src="assets1/images/client/01.jpg" class="avatar avatar-small rounded-pill" alt="">
                            <h5 class="mb-0 ms-3">Howard Tanner</h5>
                        </div>
                        <ul class="list-unstyled mb-0 d-md-flex justify-content-between mt-4">
                            <li>
                                <ul class="list-unstyled mb-0">
                                    <li class="d-flex">
                                        <h6>Age:</h6>
                                        <p class="text-muted ms-2">25 year old</p>
                                    </li>

                                    <li class="d-flex">
                                        <h6>Gender:</h6>
                                        <p class="text-muted ms-2">Male</p>
                                    </li>

                                    <li class="d-flex">
                                        <h6 class="mb-0">Department:</h6>
                                        <p class="text-muted ms-2 mb-0">Cardiology</p>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <ul class="list-unstyled mb-0">
                                    <li class="d-flex">
                                        <h6>Date:</h6>
                                        <p class="text-muted ms-2">20th Dec 2020</p>
                                    </li>

                                    <li class="d-flex">
                                        <h6>Time:</h6>
                                        <p class="text-muted ms-2">11:00 AM</p>
                                    </li>

                                    <li class="d-flex">
                                        <h6 class="mb-0">Doctor:</h6>
                                        <p class="text-muted ms-2 mb-0">Dr. Calvin Carlo</p>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- View Appintment End -->

        <!-- Accept Appointment Start -->
        <div class="modal fade" id="acceptappointment" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body py-5">
                        <div class="text-center">
                            <div class="icon d-flex align-items-center justify-content-center bg-soft-success rounded-circle mx-auto" style="height: 95px; width:95px;">
                                <i class="uil uil-check-circle h1 mb-0"></i>
                            </div>
                            <div class="mt-4">
                                <h4>Accept Appointment</h4>
                                <p class="para-desc mx-auto text-muted mb-0">Great doctor if you need your family member to get immediate assistance, emergency treatment.</p>
                                <div class="mt-4">
                                    <a href="#" class="btn btn-soft-success">Accept</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Accept Appointment End -->

        <!-- Cancel Appointment Start -->
        <div class="modal fade" id="cancelappointment" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body py-5">
                        <div class="text-center">
                            <div class="icon d-flex align-items-center justify-content-center bg-soft-danger rounded-circle mx-auto" style="height: 95px; width:95px;">
                                <i class="uil uil-times-circle h1 mb-0"></i>
                            </div>
                            <div class="mt-4">
                                <h4>Cancel Appointment</h4>
                                <p class="para-desc mx-auto text-muted mb-0">Great doctor if you need your family member to get immediate assistance, emergency treatment.</p>
                                <div class="mt-4">
                                    <a href="#" class="btn btn-soft-danger">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cancel Appointment End -->
        <!-- Modal end -->

        <!-- javascript -->
        <script src="assets1/js/jquery.min.js"></script>
        <script src="assets1/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="assets1/js/simplebar.min.js"></script>
        <!-- Select2 -->
        <script src="assets1/js/select2.min.js"></script>
        <script src="assets1/js/select2.init.js"></script>
        <!-- Icons -->
        <script src="assets1/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assets1/js/app.js"></script>

    </body>

</html>
