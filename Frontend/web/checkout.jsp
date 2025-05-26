<%-- 
    Document   : checkout
    Created on : Oct 28, 2024, 3:35:05 PM
    Author     : hiule
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>Carpipi</title>

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet">

        <style type="text/css">
            body{
                margin-top:20px;
                background-color: #f1f3f7;
            }

            .card {
                margin-bottom: 24px;
                -webkit-box-shadow: 0 2px 3px #e4e8f0;
                box-shadow: 0 2px 3px #e4e8f0;
            }
            .card {
                position: relative;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -ms-flex-direction: column;
                flex-direction: column;
                min-width: 0;
                word-wrap: break-word;
                background-color: #fff;
                background-clip: border-box;
                border: 1px solid #eff0f2;
                border-radius: 1rem;
            }
            .activity-checkout {
                list-style: none
            }

            .activity-checkout .checkout-icon {
                position: absolute;
                top: -4px;
                left: -24px
            }

            .activity-checkout .checkout-item {
                position: relative;
                padding-bottom: 24px;
                padding-left: 35px;
                border-left: 2px solid #f5f6f8
            }

            .activity-checkout .checkout-item:first-child {
                border-color: #3b76e1
            }

            .activity-checkout .checkout-item:first-child:after {
                background-color: #3b76e1
            }

            .activity-checkout .checkout-item:last-child {
                border-color: transparent
            }

            .activity-checkout .checkout-item.crypto-activity {
                margin-left: 50px
            }

            .activity-checkout .checkout-item .crypto-date {
                position: absolute;
                top: 3px;
                left: -65px
            }



            .avatar-xs {
                height: 1rem;
                width: 1rem
            }

            .avatar-sm {
                height: 2rem;
                width: 2rem
            }

            .avatar {
                height: 3rem;
                width: 3rem
            }

            .avatar-md {
                height: 4rem;
                width: 4rem
            }

            .avatar-lg {
                height: 5rem;
                width: 5rem
            }

            .avatar-xl {
                height: 6rem;
                width: 6rem
            }

            .avatar-title {
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                background-color: #3b76e1;
                color: #fff;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                font-weight: 500;
                height: 100%;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: center;
                width: 100%
            }

            .avatar-group {
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
                padding-left: 8px
            }

            .avatar-group .avatar-group-item {
                margin-left: -8px;
                border: 2px solid #fff;
                border-radius: 50%;
                -webkit-transition: all .2s;
                transition: all .2s
            }

            .avatar-group .avatar-group-item:hover {
                position: relative;
                -webkit-transform: translateY(-2px);
                transform: translateY(-2px)
            }

            .card-radio {
                background-color: #fff;
                border: 2px solid #eff0f2;
                border-radius: .75rem;
                padding: .5rem;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                display: block
            }

            .card-radio:hover {
                cursor: pointer
            }

            .card-radio-label {
                display: block
            }

            .edit-btn {
                width: 35px;
                height: 35px;
                line-height: 40px;
                text-align: center;
                position: absolute;
                right: 25px;
                margin-top: -50px
            }

            .card-radio-input {
                display: none
            }

            .card-radio-input:checked+.card-radio {
                border-color: #3b76e1!important
            }


            .font-size-16 {
                font-size: 16px!important;
            }
            .text-truncate {
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }

            a {
                text-decoration: none!important;
            }


            .form-control {
                display: block;
                width: 100%;
                padding: 0.47rem 0.75rem;
                font-size: .875rem;
                font-weight: 400;
                line-height: 1.5;
                color: #545965;
                background-color: #fff;
                background-clip: padding-box;
                border: 1px solid #e2e5e8;
                -webkit-appearance: none;
                -moz-appearance: none;
                appearance: none;
                border-radius: 0.75rem;
                -webkit-transition: border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
                transition: border-color .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
                transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out,-webkit-box-shadow .15s ease-in-out;
            }

            .edit-btn {
                width: 35px;
                height: 35px;
                line-height: 40px;
                text-align: center;
                position: absolute;
                right: 25px;
                margin-top: -50px;
            }

            .ribbon {
                position: absolute;
                right: -26px;
                top: 20px;
                -webkit-transform: rotate(45deg);
                transform: rotate(45deg);
                color: #fff;
                font-size: 13px;
                font-weight: 500;
                padding: 1px 22px;
                font-size: 13px;
                font-weight: 500
            }




        </style>
    </head>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Kiểm tra nếu có thông báo
            var message = "${messCheckOut}";
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
    <body>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/MaterialDesign-Webfont/5.3.45/css/materialdesignicons.css" integrity="sha256-NAxhqDvtY0l4xn+YVa6WjAcmd94NNfttjNsDmNatFVc=" crossorigin="anonymous" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
                                <a href="tax" class="ms-2" style="text-decoration: none; color: #3b5998; font-weight: bold;">Trở về thuế</a>
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
                            <h5 class="mb-0">Checkout</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item"><a href="carts">Giỏ Hàng</a></li>
                                    <li class="breadcrumb-item"><a href="tax">Thuế</a></li>

                                    <li class="breadcrumb-item active" aria-current="page">Checkout</a></li>
                                </ul>
                            </nav>
                        </div>

                        <div class="row">
                            <div class="col-md-5 col-lg-4 order-last mt-4 pt-2 pt-sm-0">
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

                            <div class="col-xl-8 mt-4">
                                <form action="checkout" method="post">

                                    <div class="card rounded shadow p-4 border-0">
                                        <div class="card-body">
                                            <ol class="activity-checkout mb-0 px-4 mt-3">
                                                <!-- Shipping Info -->
                                                <li class="checkout-item">
                                                    <div class="avatar checkout-icon p-1">
                                                        <div class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bxs-truck text-white font-size-20"></i>
                                                        </div>
                                                    </div>
                                                    <div class="feed-item-list">
                                                        <div>
                                                            <h5 class="font-size-16 mb-1">Shipping Info</h5>
                                                            <p class="text-muted text-truncate mb-4">Các thông tin địa chỉ</p>
                                                            <div class="mb-3">
                                                                <div class="edit-btn bg-light rounded">
                                                                    <a href="addAddressUser" >
                                                                        <i class="bx bx-plus font-size-16"></i>
                                                                    </a>
                                                                </div>
                                                                <div class="row">

                                                                    <c:forEach var="userAddress" items="${userAddress}" varStatus="status">
                                                                        <div class="col-lg-4 col-sm-6">
                                                                            <div data-bs-toggle="collapse">
                                                                                <label class="card-radio-label mb-0">
                                                                                    <input
                                                                                        type="radio"
                                                                                        name="address"
                                                                                        class="card-radio-input"
                                                                                        value="${userAddress.addressId}"
                                                                                        ${status.first ? 'checked' : ''}
                                                                                        required
                                                                                        >
                                                                                    <div class="card-radio text-truncate p-3">
                                                                                        <span class="fs-14 mb-4 d-block">Thông tin: ${userAddress.addressId}</span>
                                                                                        <span class="fs-14 mb-2 d-block">Tên: ${userAddress.name}</span>
                                                                                        <span class="text-muted fw-normal d-block">Email:${userAddress.email}</span>
                                                                                        <span class="text-muted fw-normal text-wrap mb-1 d-block">${userAddress.address}</span>
                                                                                        <span class="text-muted fw-normal d-block">SĐT:${userAddress.phone}</span>
                                                                                    </div>
                                                                                </label>
                                                                                <div class="edit-btn bg-light rounded">
                                                                                    <a href="editAddressUser?addressId=${userAddress.addressId}">
                                                                                        <i class="bx bx-pencil font-size-16"></i>
                                                                                    </a>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </c:forEach>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <!-- Payment Info -->
                                                <li class="checkout-item">
                                                    <div class="avatar checkout-icon p-1">
                                                        <div class="avatar-title rounded-circle bg-primary">
                                                            <i class="bx bxs-wallet-alt text-white font-size-20"></i>
                                                        </div>
                                                    </div>
                                                    <div class="feed-item-list">
                                                        <div>
                                                            <h5 class="font-size-16 mb-1">Payment Info</h5>
                                                            <p class="text-muted text-truncate mb-4">
                                                                Số Tiền: <fmt:formatNumber value="${sessionScope.totalFinal}" type="currency" minFractionDigits="" maxFractionDigits="2" />
                                                            </p>
                                                        </div>
                                                        <div>
                                                            <h5 class="font-size-14 mb-3">Payment method :</h5>
                                                            <div class="row">
                                                                <div class="col-lg-3 col-sm-6">
                                                                    <div data-bs-toggle="collapse">
                                                                        <label class="card-radio-label">
                                                                            <input type="radio" name="pay-method" id="pay-methodoption1" class="card-radio-input" value="online"checked="" >
                                                                            <span class="card-radio py-3 text-center text-truncate">
                                                                                <i class="bx bx-credit-card d-block h2 mb-3"></i>
                                                                                Thanh Toán Trực Tuyến
                                                                            </span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <div class="col-lg-3 col-sm-6">
                                                                    <div>
                                                                        <label class="card-radio-label">
                                                                            <input type="radio" name="pay-method" id="pay-methodoption2" class="card-radio-input" value="balance">
                                                                            <span class="card-radio py-3 text-center text-truncate">
                                                                                <i  class="bx bx-wallet d-block h2 mb-3"></i>
                                                                                Ví Carpipi
                                                                            </span>
                                                                        </label>
                                                                    </div>
                                                                    <c:if test="${not empty sessionScope.messCheckOut}">
                                                                        <div style="color: red;">
                                                                            ${sessionScope.messCheckOut}
                                                                        </div>
                                                                        <c:remove var="messCheckOut" scope="session" />
                                                                    </c:if>
                                                                </div>
                                                                <div class="col-lg-3 col-sm-6">
                                                                    <div>
                                                                        <label class="card-radio-label">
                                                                            <input type="radio" name="pay-method" id="pay-methodoption3" class="card-radio-input" value="cod" >
                                                                            <span class="card-radio py-3 text-center text-truncate">
                                                                                <i class="bx bx-money d-block h2 mb-3"></i>
                                                                                <span>COD</span>
                                                                            </span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ol>
                                        </div> <button class="w-100 btn btn-primary" type="submit">Continue to checkout</button>
                                    </div>   </form>                       
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
        <script src="https://esgoo.net/scripts/jquery.js"></script>
        <script>
                                        $(document).ready(function () {
                                            // Lấy tỉnh thành
                                            $.getJSON('https://esgoo.net/api-tinhthanh/1/0.htm', function (data_tinh) {
                                                if (data_tinh.error == 0) {
                                                    $.each(data_tinh.data, function (key_tinh, val_tinh) {
                                                        // Use the name as the value
                                                        $("#tinh").append('<option value="' + val_tinh.full_name + '" data-id="' + val_tinh.id + '">' + val_tinh.full_name + '</option>');
                                                    });

                                                    $("#tinh").change(function (e) {
                                                        var idtinh = $(this).find(':selected').data('id'); // Get the ID using the data attribute

                                                        // Lấy quận huyện
                                                        $.getJSON('https://esgoo.net/api-tinhthanh/2/' + idtinh + '.htm', function (data_quan) {
                                                            if (data_quan.error == 0) {
                                                                $("#quan").html('<option value="">Quận Huyện</option>');
                                                                $("#phuong").html('<option value="">Phường Xã</option>');
                                                                $.each(data_quan.data, function (key_quan, val_quan) {
                                                                    // Use the name as the value
                                                                    $("#quan").append('<option value="' + val_quan.full_name + '" data-id="' + val_quan.id + '">' + val_quan.full_name + '</option>');
                                                                });

                                                                // Lấy phường xã
                                                                $("#quan").change(function (e) {
                                                                    var idquan = $(this).find(':selected').data('id'); // Get the ID using the data attribute
                                                                    $.getJSON('https://esgoo.net/api-tinhthanh/3/' + idquan + '.htm', function (data_phuong) {
                                                                        if (data_phuong.error == 0) {
                                                                            $("#phuong").html('<option value="">Phường Xã</option>');
                                                                            $.each(data_phuong.data, function (key_phuong, val_phuong) {
                                                                                // Use the name as the value
                                                                                $("#phuong").append('<option value="' + val_phuong.full_name + '" data-id="' + val_phuong.id + '">' + val_phuong.full_name + '</option>');
                                                                            });
                                                                        }
                                                                    });
                                                                });
                                                            }
                                                        });
                                                    });
                                                }
                                            });
                                        });
        </script>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">

        </script>
    </body>

</html>