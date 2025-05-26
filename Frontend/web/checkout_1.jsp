<%-- 
    Document   : checkout
    Created on : Oct 28, 2024, 3:35:05 PM
    Author     : hiule
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
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
                        <c:if test="${sessionScope.account == null||sessionScope.account.roleId == 1}">
                            <li><a href="admindashboard"><i class="uil uil-dashboard me-2 d-inline-block"></i>Dashboard</a></li>
                            </c:if>



                        <li class="sidebar-dropdown">
                            <a href="userprofile"><i class="uil uil-user me-2 d-inline-block"></i>Profile</a>

                        </li>
                        <li><a href="myorder"><i class="uil uil-cube me-2 d-inline-block"></i>Đơn Mua</a></li>





                        <li class="sidebar-dropdown">
                            <a href="javascript:void(0)"><i class="uil uil-shopping-cart me-2 d-inline-block"></i>Shopping Cart</a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li><a href="home">Home</a></li>
                                    <li><a href="carts">Giỏ Hàng</a></li>
                                    <li><a href="tax">Thuế</a></li>
                                    <li><a href="checkout.jsp">Checkout</a></li>
                                </ul>
                            </div>
                        </li>

                       



                    </ul>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->

            </nav>
            <!-- sidebar-wrapper  -->

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
                                <a href="carts" class="ms-2" style="text-decoration: none; color: #3b5998; font-weight: bold;">Trở về giỏ hàng</a>
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
                        <div class="d-md-flex justify-content-between">

                            <h5 class="mb-0">Giá Lăn Bánh</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item"><a href="carts">Giỏ Hàng</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Thuế</li>
                                    <li class="breadcrumb-item"><a href="checkout.jsp">Checkout</a></li>
                                </ul>
                            </nav>

                        </div>

                        <div class="row">
                            <div class="col-md-3 col-lg-2 order-last mt-4 pt-2 pt-sm-0">
                                <div class="card rounded shadow p-4 border-0">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <span class="h5 mb-0">Giỏ hàng</span>
                                        <span class="badge bg-primary rounded-pill">${sizeCart}</span>
                                    </div>
                                    <ul class="list-group mb-3 border">
                                        <c:forEach items="${sessionScope.cartsSelect}" var="C">
                                            <li class="d-flex justify-content-between lh-sm p-3 border-bottom">
                                                <div>

                                                    <small class="text-muted">${C.product.name}</small>
                                                </div>
                                                <span class="text-muted">${C.product.price * C.quantity}</span>
                                            </li>
                                        </c:forEach>
                                        <li class="d-flex justify-content-between p-3">
                                            <span>Total (USD)</span>
                                            <strong><fmt:formatNumber value="${sessionScope.totalFinal}" type="number" minFractionDigits="0"/> </strong>
                                        </li>
                                    </ul>


                                </div>
                            </div><!--end col-->

                            <div class="col-md-9 col-lg-10 mt-4">
                                <div class="card rounded shadow p-4 border-0">
                                    <h5 class="mb-3">Thông tin giá (bao gồm thuế)</h5>
                                    <div class="table-responsive bg-white shadow rounded">
                                        <table class="table table-center table-padding mb-0">
                                            <thead>
                                                <tr>

                                                    <th class="border-bottom text-center p-3" style="min-width: 250px;">Sản phẩm</th>
                                                    <th class="border-bottom text-center p-3" style="min-width: 50px;">Số Lượng</th>
                                                    <th class="border-bottom text-center p-3" style="min-width: 180px;">Giá</th>

                                                    <th class="border-bottom text-center p-3" style="min-width: 70px;">Thuế Nhập Khẩu(70%)</th>
                                                    <th class="border-bottom text-center p-3" style="min-width: 70px;">Thuế TTĐB(40%)</th>
                                                    <th class="border-bottom text-center p-3" style="min-width: 70px;">VAT(10%)</th>
                                                    <th class="border-bottom text-center p-3" style="min-width: 70px;">Tổng</th>

                                                </tr>
                                            </thead>

                                            <tbody>

                                                <c:forEach items="${sessionScope.cartsSelect}" var="C">
                                                    <tr>

                                                        <td>
                                                            <div class="d-flex align-items-center">
                                                                <img src="${C.product.images[0].imageUrl}" alt="${C.product.name}" class="img-fluid avatar avatar-small rounded shadow" style="height: 170px; width: 250px;">
                                                                <a href="productdetail?productId=${C.product.productId}" class="mb-0 ms-3">${C.product.name}</a>
                                                            </div>
                                                        </td>
                                                        <td class="text-center shop-list p-3">
                                                            <div class="qty-icons">
                                                                <input  type="number" name="quantity" value="${C.quantity}" min="0" step="1" title="Please enter a non-negative integer!" class="btn btn-icon btn-primary qty-btn1 quantity" >
                                                            </div>
                                                        <td class="text-center p-3">
                                                            <fmt:formatNumber value="${C.product.price}" type="number" minFractionDigits="0"/> $
                                                        </td>

                                                        <td class="text-center font-weight-bold p-3">
                                                            <fmt:formatNumber value="${(C.product.price * C.quantity)*0.7}" type="number" minFractionDigits="0"/> $
                                                        </td>
                                                        <td class="text-center font-weight-bold p-3">
                                                            <fmt:formatNumber value="${(C.product.price * C.quantity)*0.4}" type="number" minFractionDigits="0"/> $
                                                        </td>
                                                        <td class="text-center font-weight-bold p-3">
                                                            <fmt:formatNumber value="${(C.product.price * C.quantity)*0.1}" type="number" minFractionDigits="0"/> $
                                                        </td>
                                                        <td class="text-center font-weight-bold p-3">
                                                            <fmt:formatNumber value="${(C.product.price * C.quantity) * 2.2}" type="number" minFractionDigits="0"/> $
                                                        </td>
                                                    </tr>

                                                </c:forEach>






                                            </tbody>
                                        </table>
                                    </div>
                                </div>  
                                <div class="mt-4 pt-2 text-end">
                                    <a href="checkout" class="btn btn-primary" > Checkout</a>
                                </div>
                            </div><!--end col-->
                        </div><!--end row-->
                    </div>
                </div><!--end container-->

                <!-- Footer Start -->
                <footer class="bg-white shadow py-3">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col">
                                <div class="text-sm-start text-center">
                                    <p class="mb-0 text-muted"><script>document.write(new Date().getFullYear())</script> © Carpipi. Design with <i class="mdi mdi-heart text-danger"></i> by <a href="../../../index.html" target="_blank" class="text-reset">hieu</a>.</p>
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
