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

    </head>

    <style>
        .productCheckbox {
            transform: scale(1.2); /* Increase checkbox size */
            margin-top: 0.5rem; /* Adjust top margin for better alignment */
        }
        .qty-btn1 {
            width: 65px;
            padding-left: 0; /* Remove left padding for true centering */
            text-align: center; /* Centers the number within the input */
            pointer-events: auto;
            appearance: none; /* Hides default arrows in WebKit browsers */
            -moz-appearance: textfield; /* Hides default arrows in Firefox */
        }

        .qty-btn1::-webkit-inner-spin-button,
        .qty-btn1::-webkit-outer-spin-button {
            -webkit-appearance: none; /* Hides spin buttons in Chrome/Safari */
            margin: 0;

        }

    </style> <style>
        .hieu.doctris-theme.toggled {
            margin: 0 30px; /* Tạo khoảng trống 300px ở 2 bên */
        }
    </style>
    <script> $(document).ready(function () {
            $('.breadcrumb-item a').click(function () {
                $('.breadcrumb-item').removeClass('active'); // Xóa lớp active của tất cả
                $(this).parent().addClass('active'); // Thêm lớp active cho mục đang nhấp
            });
        });</script>
    <body>
        <div class="hieu doctris-theme toggled">

            <div class="col-md-12 cart"> 
                <main class="page-content bg-light">
                    <!-- Loader -->
                    <div class="top-header">
                        <div class="header-bar d-flex justify-content-between border-bottom">
                            <div class="d-flex align-items-center">




                                <div class="search-bar p-0 d-none d-lg-block ms-2">
                                    <div id="search" class="menu-search mb-0">
                                        <form method="get" id="searchform" class="searchform" action="searchCart">
                                            <div>
                                                <input type="text" class="form-control border rounded-pill" name="keyword" id="s" placeholder="Search Keywords..." value="${param.keyword}" >
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </div>
                                        </form>                             </div>
                                </div>
                                <a href="carts" class="btn btn-secondary ms-2">Reset Search</a> <!-- Reset button -->





                            </div>
                        </div>
                        <div class="container-fluid">
                            <div class="layout-specing">
                                <div class="d-md-flex justify-content-between">
                                    <h3 class=" text-center">ShopCart</h3>


                                </div>
                                <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                    <ul class="breadcrumb bg-transparent rounded mb-0 p-0">
                                        <li class="breadcrumb-item"><a href="home">Home</a></li>

                                        <li class="breadcrumb-item " aria-current="page">Cart</li>
                                        <li class="breadcrumb-item active" aria-current="page">Cart Contact</li>


                                    </ul>

                                </nav>
                              



                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-8">
                                            <div class="table-responsive bg-white shadow rounded">
                                                <table class="table table-center table-padding mb-0">
                                                    <thead>
                                                        <tr>

                                                            <th class="border-bottom text-center p-3" style="min-width: 300px;">Sản phẩm</th>
                                                            <th class="border-bottom text-center p-3" style="min-width: 160px;">Giá</th>
                                                            <th class="border-bottom text-center p-3" style="min-width: 190px;">Số Lượng</th>
                                                            <th class="border-bottom text-center p-3" style="min-width: 50px;">Tổng</th>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                        <c:if test="${ empty sessionScope.carts}"> 
                                                        <div class="alert alert-primary" role="alert"> Giỏ hàng trống</div>
                                                    </c:if>

                                                    <c:forEach items="${sessionScope.carts}" var="C">
                                                        <form action="update-quantity">
                                                            <tr>

                                                                <td>
                                                                    <div class="d-flex align-items-center">
                                                                        <img src="${C.product.images[0].imageUrl}" alt="${C.product.name}" class="img-fluid avatar avatar-small rounded shadow" style="height: 150px; width: auto;">
                                                                        <a href="product-detail?productId=${C.product.productId}" class="mb-0 ms-3">${C.product.name}</a>
                                                                    </div>
                                                                </td>
                                                                <td class="text-center p-3">
                                                                    <fmt:formatNumber value="${C.product.price}" type="number" minFractionDigits="0"/> đ
                                                                </td>
                                                                <td class="text-center shop-list p-3">
                                                                    <div class="qty-icons">

                                                                        <input type="number" name="quantity" value="${C.quantity}" min="0" step="1" title="Please enter a non-negative integer!" class="btn btn-icon btn-primary qty-btn1 quantity" onchange="this.form.submit()" required>

                                                                    </div>
                                                                </td>
                                                                <td class="text-end font-weight-bold p-3">
                                                                    <fmt:formatNumber value="${C.product.price * C.quantity}" type="number" minFractionDigits="0"/> đ
                                                                </td>

                                                            </tr>
                                                        </form>
                                                    </c:forEach>






                                                    </tbody>
                                                </table>
                                            </div>
                                        </div><!--end col-->
                                        <div class="col-4"> <h5 class="mb-0">
                                                    <a data-toggle="collapse" data-parent="#cart-steps-accordion"
                                                       href="#step2contentid" aria-expanded="true" aria-controls="step2contentid"
                                                       class="text-uppercase header"><span class="steps"></span>
                                                        <span class="label">Địa chỉ nhận hàng</span>
                                                        <i class="fa fa-chevron-right float-right"></i>
                                                    </a>
                                                </h5>
                                            <!-- Content for the 4-column section -->
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
                                </div><!--end row-->
                            </div>

                        </div>
                    </div><!--end container-->
                </main>
            </div>
            <!--                <div class="col-md-4 page-content bg-light">
                                <form action="checkout">                                        
                                    <div class="card">
                                        <div class="card-header" role="tab" id="step1header">
                                            <h5 class="mb-0">
                                                <a data-toggle="collapse" data-parent="#cart-steps-accordion"
                                                   href="#step2contentid" aria-expanded="true" aria-controls="step2contentid"
                                                   class="text-uppercase header"><span class="steps">1</span>
                                                    <span class="label">Địa chỉ nhận hàng</span>
                                                    <i class="fa fa-chevron-right float-right"></i>
                                                </a>
                                            </h5>
                                        </div>
                                        <div id="step1contentid" class="collapse in" role="tabpanel"
                                             aria-labelledby="step1header" class="stepscontent">
                                            <div class="card-body">
                                                <div class="form-label-group"><div id="fullnameMessage" style="width: 200%"></div>
                                                    <input type="text" id="fullname" class="form-control" value="${sessionScope.name!=null?sessionScope.name:sessionScope.account.user}"
                                                           placeholder="Nhập họ và tên" name="name" required autofocus oninput="validateFullName()">
                                                </div>
            
                                                <div class="form-label-group"><div id="phoneMessage" style="width: 200%"></div>
                                                    <input type="text" id="phoneNumber" class="form-control" value="${sessionScope.phone!=null?sessionScope.phone:sessionScope.account.phone}" 
                                                           placeholder="Nhập số điện thoại" name="phone" required oninput="validatePhoneNumber()">
                                                </div>
            
                                                <div class="form-label-group"><div id="emailMessage" style="width: 200%"></div>
                                                    <input type="email" id="email" class="form-control" value="${sessionScope.email!=null?sessionScope.email:sessionScope.account.email}" 
                                                           placeholder="Nhập địa chỉ email" name="email" required oninput="validateEmail()">
                                                </div>
            
                                                <div class="form-label-group"><div id="addressMessage" style="width: 200%"></div>
                                                    <input type="text" id="address" class="form-control" value="${sessionScope.address!=null?sessionScope.address:sessionScope.account.address}" 
                                                           placeholder="Nhập Địa chỉ giao hàng" name="address" required oninput="validateAddress()">
                                                </div>   
            
                                                <div class="form-label-group"><label>Chọn ngày muốn nhận hàng</label>
                                                    <input type="date" id="dateShip" id="address" class="form-control" value="${sessionScope.dateShip!=null?sessionScope.dateShip:''}" name="dateShip">
                                                </div>
            
                                                <div class="form-label-group"><label>Chọn khung giờ nhận hàng</label>
                                                    <input type="time" class="form-control" value="${sessionScope.timeShip!=null?sessionScope.timeShip:''}" name="timeShip">
                                                </div>  
            
                                                <div class="form-label-group">
                                                    <textarea type="text" id="inputNote" class="form-control"
                                                              placeholder="Nhập ghi chú (Nếu có)" name="note">${sessionScope.note!=null?sessionScope.note:''}</textarea>
                                                </div>
                                            </div>
                                        </div>
            
                                         bước 3: thanh toán đặt mua  
                                        <div class="card">
                                            <div class="card-header" role="tab" id="step2header">
                                                <h5 class="mb-0">
                                                    <a data-toggle="collapse" data-parent="#cart-steps-accordion"
                                                       href="#step3contentid" aria-expanded="true"
                                                       aria-controls="step3contentid" class="text-uppercase header"><span
                                                            class="steps">2</span>
                                                        <span class="label">Thanh toán đặt mua</span>
                                                        <i class="fa fa-chevron-right float-right"></i>
                                                    </a>
                                                </h5>
                                            </div>
                                            <div id="step3contentid" class="collapse in" role="tabpanel"
                                                 aria-labelledby="step3header" class="stepscontent">
                                                <div class="card-body" style="padding: 15px;">                                                 
                                                    <div class="pttt">
                                                        <h6 class="header text-uppercase">Chọn phương thức thanh toán</h6>
                                                        <div class="option option1">
                                                            <input type="radio" name="pttt" value="ttcod" checked>
                                                            <label>Thanh toán khi nhận hàng</label>
                                                        </div>
                                                        <div class="option option2">
                                                            <input type="radio" name="pttt" value="ttweb">
                                                            <label>Thanh toán bằng tiền tài khoản shop</label>
                                                        </div>
                                                        <div class="option option3">
                                                            <input type="radio" name="pttt" value="ttpay" id="atm">
                                                            <label style="margin-top: -25px;margin-left: 16px;" for="atm" class="chuyenkhoan">Thanh toán chuyển khoản qua Thẻ ATM/Internet Banking</label>
                                                            <p>- Thời gian chuyển khoản là trong tối đa 1 ngày từ khi có xác
                                                                nhận đặt mua.</p>
                                                            <p>- Nội dung chuyển khoản cần ghi: <a href="#">[Mã đơn hàng]</a> ;
                                                                hoặc <a href="#">[số điện thoại dùng đặt hàng]</a> </p>
                                                            <p>- Xem thông tin chuyển khoản của VNPay <a
                                                                    href="https://vnpay.vn/chuyen-tien-nhanh-chong-tien-loi-tren-vi-dien-tu-VNPAY-05f976gm2g7i">tại đây</a> </p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <button type="submit" class="btn btn-lg btn-block btn-checkout text-uppercase text-white"
                                                            style="background: #F5A623">Đặt mua</button>
                                                    <p class="text-center note-before-checkout">(Vui lòng kiểm tra lại đơn hàng
                                                        trước khi Đặt Mua)</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
            
                            </div>                     -->
        </div>

    </div>

    <!-- Offcanvas End -->

    <!-- javascript -->
    <script src="js/cart.js"></script>
    <script src="assets1/js/bootstrap.bundle.min.js"></script>
    <!-- simplebar -->
    <script src="assets1/js/simplebar.min.js"></script>
    <!-- Icons -->
    <script src="assets1/js/feather.min.js"></script>
    <!-- Main Js -->
    <script src="assets1/js/app.js"></script>

</body>

</html>