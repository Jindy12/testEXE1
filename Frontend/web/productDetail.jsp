<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.text.DecimalFormat" %>
<!DOCTYPE html>
<fmt:setLocale value="en_US"/>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Product Detail Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
        <style>
            .container{
                background-color: white;
                padding: 30px;
                margin-bottom: 50px;
                border-radius: 3px; /* Border radius set to 3px */
                box-shadow: 0 10px 40px 0px rgba(38, 40, 64, .2);
                position: relative;
            }
            .icon-hover:hover {
                border-color: #3b71ca !important;
                background-color: white !important;
                color: #3b71ca !important;
            }
            .icon-hover:hover i {
                color: #3b71ca !important;
            }
            .product-img {
                max-width: 100%;
                height: auto;
            }
            h4 {
                font-size: 3.5rem; /* Kích thước chữ cho tiêu đề */
            }
            .mb-3 p {
                font-size: 1.75rem; /* Kích thước chữ cho mô tả sản phẩm */
            }
            .h5 {
                font-size: 2.5rem; /* Kích thước chữ cho giá sản phẩm */
            }
            .col-6{
                font-size: 1.25rem;
            }
            #colorSelect {
                border: 1px solid #007bff;
                border-radius: 0.25rem;
                padding: 0.375rem 0.75rem;
                font-size: 1rem;
            }
        </style>
        <style>
            .message-popup {
                position: fixed;
                top: 20px;
                right: 20px;
                background-color: #4CAF50;
                color: white;
                padding: 15px;
                border-radius: 5px;
                z-index: 1000;
                display: none;
                animation: fadeIn 0.5s, fadeOut 0.5s 2.5s;
            }

            @keyframes fadeIn {
                from {
                    opacity: 0;
                }
                to {
                    opacity: 1;
                }
            }

            @keyframes fadeOut {
                from {
                    opacity: 1;
                }
                to {
                    opacity: 0;
                }
            }
        </style>
        <script>
            document.addEventListener('DOMContentLoaded', function () {
                // Kiểm tra nếu có thông báo
                var message = "${mesOfCart}";
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
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container py-4">
                <button onclick="window.history.back()" class="btn btn-primary" style="margin-bottom: 10px;">
                    <span>X</span>
                </button>

                <div class="row">
                    <aside class="col-lg-7">
                        <div class="mb-3">
                        <c:forEach items="${requestScope.pro.images}" var="photo" varStatus="status">
                            <c:if test="${status.first}">
                                <img id="mainImage" src="${photo.imageUrl}" alt="Product Image" class="product-img rounded" style="width: 900px; height: 400px; object-fit: cover;">
                            </c:if>
                        </c:forEach>
                    </div>
                    <div class="d-flex justify-content-center mb-3">
                        <%-- Thumbnails for images --%>
                        <c:forEach items="${requestScope.pro.images}" var="photo">
                            <a class="mx-1" href="javascript:void(0);" onclick="changeMainImage('${photo.imageUrl}')" data-fslightbox="mygallery">
                                <img src="${photo.imageUrl}" class="rounded-2" width="80" height="60" alt="Thumbnail">
                            </a>
                        </c:forEach>
                    </div>
                    <div id="message" class="message-popup" style="display: none;">
                        ${mesOfCart}
                    </div>
                </aside>

                <script>
                    function changeMainImage(imageUrl) {
                        document.getElementById("mainImage").src = imageUrl;
                    }
                </script>

                <main class="col-lg-5">
                    <h4 class="text-dark">${pro.name}</h4>
                    <div class="d-flex align-items-center my-3">
                        <div class="text-warning mb-1" style="font-size: 1.5rem;">
                            <c:choose>
                                <c:when test="${requestScope.rateCar == 0}">
                                    <!-- Nếu rateCar bằng 0, hiển thị 5 sao rỗng -->
                                    <c:forEach var="i" begin="1" end="5">
                                        <i class="fa fa-star"></i>
                                    </c:forEach>
                                </c:when>
                                <c:otherwise>
                                    <!-- Nếu rateCar không phải 0, hiển thị sao theo đánh giá -->
                                    <c:forEach var="i" begin="1" end="5">
                                        <c:choose>
                                            <c:when test="${i <= requestScope.rateCar}">
                                                <i class="fa fa-star"></i>
                                            </c:when>
                                            <c:when test="${i == (requestScope.rateCar + 1) && requestScope.rateCar % 1 != 0}">
                                                <i class="fas fa-star-half-alt"></i>
                                            </c:when>
                                            <c:otherwise>
                                                <i class="far fa-star"></i>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </div> &nbsp;&nbsp;&nbsp;
                        <!--                        <span class="text-muted mx-2"><i class="fas fa-shopping-basket"></i> 154 orders</span>
                                                <span class="text-success">In stock</span>-->
                    </div>
                    <div class="mb-3">
                        <span class="h5">
                            <fmt:formatNumber value="${pro.price}" type="number" pattern="#,##0.0"/> USD
                        </span> 
                        <span class="text-muted"></span>
                    </div>

                    <p style="font-size: 1.5rem;">${pro.description}</p>
                    <div class="row">
                        <div class="col-6"><strong>Hãng:</strong> ${brand}</div>
                        <div class="col-6"><strong>Kiểu dáng:</strong> ${style}</div>
                        <div class="col-6"><strong>Số ghế:</strong> ${pro.seatNumber}</div>
                        <div class="col-6"><strong>Phân khúc:</strong> ${segment}</div>
                        <div class="col-6"><strong>Nguyên liệu:</strong> ${pro.fuel}</div>
                        <div class="col-6"><strong>Nhà phân phối:</strong> ${supply}</div>
                    </div>
                    <hr>
                    <div class="mb-4">
                        <label class="mb-2 h6">Màu sắc</label>
                        <select class="form-control w-auto" name="color" id="colorSelect" onchange="updateColorValue()">
                            <option value="0">Chọn màu sắc</option>
                            <c:forEach items="${color}" var="color">
                                <option value="${color.colorId}">${color.colorName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <script>
                        function updateColorValue() {
                            // Lấy giá trị của select
                            var colorSelect = document.getElementById('colorSelect');
                            var selectedColor = colorSelect.options[colorSelect.selectedIndex].value;

                            // Cập nhật giá trị vào input ẩn
                            document.getElementById('colorInput').value = selectedColor;
                        }
                        function validateForm() {
                            // Lấy giá trị của input màu sắc
                            var colorValue = document.getElementById('colorInput').value;

                            // Kiểm tra xem người dùng đã chọn màu chưa
                            if (!colorValue) {
                                alert("Vui lòng chọn màu sắc trước khi thêm vào giỏ hàng.");
                                return false; // Ngăn không cho gửi form
                            }
                            return true; // Cho phép gửi form nếu đã chọn màu
                        }
                    </script>
                    <div class="mb-4">
                        <label class="mb-2 h6">Số lượng</label>
                        <div class="input-group mb-3">
                            <button class="btn btn-outline-secondary" type="button" onclick="decreaseQuantity('quantity1')">
                                <i class="fas fa-minus"></i>
                            </button>
                            <input type="text" class="form-control text-center" id="quantity1" value="1" aria-label="Số lượng" style="max-width: 60px;" readonly />
                            <button class="btn btn-outline-secondary" type="button" onclick="increaseQuantity('quantity1')">
                                <i class="fas fa-plus"></i>
                            </button>
                        </div>
                        <span class="text-muted" id="stock-info">${pro.stock} sản phẩm có sẵn</span>
                    </div>

                    <script>
                        function increaseQuantity(quantityId) {
                            var quantityInput = document.getElementById(quantityId);
                            var quantity = parseInt(quantityInput.value);
                            var availableQuantity = parseInt("${pro.stock}");
                            if (quantity < availableQuantity) {
                                quantityInput.value = quantity + 1;
                            }
                            updateQuantityFields(quantityInput.value);
                        }

                        function decreaseQuantity(quantityId) {
                            var quantityInput = document.getElementById(quantityId);
                            var quantity = parseInt(quantityInput.value);
                            if (quantity > 1) {
                                quantityInput.value = quantity - 1;
                            }
                            updateQuantityFields(quantityInput.value);
                        }

                        function updateQuantityFields(quantity) {
                            document.getElementById('quantityFieldPayment').value = quantity;
                            document.getElementById('quantityFieldCart').value = quantity;
                        }
                    </script>
                    <div class="d-flex align-items-center">
                        <c:choose>
                            <c:when test="${sessionScope.account != null}">
                                <form action="addtocart" method="get" onsubmit="return validateForm()">
                                    <input type="hidden" name="productId" value="${pro.productId}">
                                    <input type="hidden" name="color" id="colorInput" value="">
                                    <input type="hidden" name="quantity" id="quantityFieldCart" value="1">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fas fa-shopping-basket"></i> Add to cart
                                    </button>
                                </form>

                            </c:when>
                            <c:otherwise>
                                <p>Bạn cần <a href="login.jsp">đăng nhập</a> để mua sản phẩm.</p>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </main>
            </div>
            <!--            <div id="notification" class="notification">
                            Sản phẩm đã được thêm vào giỏ hàng !
                            <div class="timeline" id="timeline"></div>
                        </div>-->
            <section class="bg-light border-top py-4 mt-5">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="h5">Đánh giá sản phẩm</div>
                        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ${rate == 0 ? 'active' : ''}" id="pills-home-tab" data-bs-toggle="pill" href="#" role="tab"
                                   onclick="window.location.href = 'productdetail?productId=${pro.productId}&rate=0';">Tất cả</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ${rate == 5 ? 'active' : ''}" id="pills-5star-tab" data-bs-toggle="pill" href="#" role="tab"
                                   onclick="window.location.href = 'productdetail?productId=${pro.productId}&rate=5';">5 sao</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ${rate == 4 ? 'active' : ''}" id="pills-4star-tab" data-bs-toggle="pill" href="#" role="tab"
                                   onclick="window.location.href = 'productdetail?productId=${pro.productId}&rate=4';">4 sao</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ${rate == 3 ? 'active' : ''}" id="pills-3star-tab" data-bs-toggle="pill" href="#" role="tab"
                                   onclick="window.location.href = 'productdetail?productId=${pro.productId}&rate=3';">3 sao</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ${rate == 2 ? 'active' : ''}" id="pills-2star-tab" data-bs-toggle="pill" href="#" role="tab"
                                   onclick="window.location.href = 'productdetail?productId=${pro.productId}&rate=2';">2 sao</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link ${rate == 1 ? 'active' : ''}" id="pills-1star-tab" data-bs-toggle="pill" href="#" role="tab"
                                   onclick="window.location.href = 'productdetail?productId=${pro.productId}&rate=1';">1 sao</a>
                            </li>
                        </ul>

                        <div class="tab-content" id="pills-tabContent">
                            <div class="tab-pane fade show active" id="pills-home" role="tabpanel">
                                <c:forEach items="${feedback}" var="all">
                                    <c:set var="userDisplayed" value="false" />
                                    <div class="review p-3 mb-3" style="background-color: #f8f9fa; border-radius: 8px; border: 1px solid #dee2e6;">
                                        <div class="review-header d-flex align-items-center">
                                            <c:forEach items="${acc}" var="acc"> 
                                                <c:if test="${acc.userId == all.userId && !userDisplayed}">
                                                    <div class="user-info mt-3 d-flex align-items-center">
                                                        <img style="width: 50px; height: 50px; border-radius: 50%; object-fit: cover; margin-right: 15px;" 
                                                             src="img/${acc.avatar}" 
                                                             alt="Avatar" class="avatar">
                                                        <div>
                                                            <!-- Tên người dùng sẽ nằm trên dãy sao -->
                                                            <h6 class="mb-1 font-weight-bold">${acc.firstName} ${acc.lastName}</h6>
                                                            <div class="text-warning">
                                                                <c:forEach var="i" begin="1" end="${all.feedbackRate}">
                                                                    <i class="fa fa-star"></i>
                                                                </c:forEach>
                                                            </div>
                                                            <!-- Thời gian hiển thị dưới dãy sao -->
                                                            <h6 class="mb-1 font-weight-bold">${all.feedbackTime}</h6>
                                                        </div>
                                                    </div>
                                                    <c:set var="userDisplayed" value="true" />
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                        <div class="review-body mt-3">
                                            <p>${all.feedbackInfo}</p>
                                            <img src="img/${all.feedbackImg}" alt="" style="width: auto; height: 220px; object-fit: cover"/>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="border rounded-2 p-3">
                            <h5>Các xe cùng tầm giá</h5>
                            <c:forEach items="${pro2}" var="pro2">
                                <div class="d-flex mb-3">
                                    <img src="${pro2.images[0].imageUrl}" class="img-thumbnail me-3" style="width: 50%; height: 130px; object-fit: cover;" alt="Product Image"/>
                                    <div>
                                        <a href="productdetail?productId=${pro2.productId}" class="nav-link">${pro2.name}</a>
                                        <strong class="text-dark">
                                            <fmt:formatNumber value="${pro2.price}" type="number" pattern="#,##0.0"/> USD
                                        </strong>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="clearfix">
                    <div class="hint-text text-muted">Showing <b>${page}</b> out of <b>${num}</b> pages feedback</div>
                    <ul class="pagination justify-content-center">
                        <!-- Điều hướng về trang trước -->
                        <c:if test="${page > 1}">
                            <li class="page-item">
                                <a class="page-link" href="productdetail?productId=${pro.productId}&page=${page - 1}&rate=${rate}">
                                    <i class="fa fa-angle-double-left"></i>
                                </a>
                            </li>
                        </c:if>

                        <!-- Vòng lặp phân trang -->
                        <c:forEach begin="${(page - 1) <= 1 ? 1 : (page - 1)}" end="${page + 1 > num ? num : page + 1}" var="i">
                            <c:choose>
                                <c:when test="${i == page}">
                                    <!-- Trang hiện tại -->
                                    <li class="page-item active">
                                        <a class="page-link">${i}</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <!-- Các trang khác -->
                                    <li class="page-item">
                                        <a href="productdetail?productId=${pro.productId}&page=${i}&rate=${rate}" class="page-link">${i}</a>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>

                        <!-- Điều hướng về trang sau -->
                        <c:if test="${page < num}">
                            <li class="page-item">
                                <a class="page-link" href="productdetail?productId=${pro.productId}&page=${page + 1}&rate=${rate}">
                                    <i class="fa fa-angle-double-right"></i>
                                </a>
                            </li>
                        </c:if>
                    </ul>
                </div>
            </section>
        </div>
        <jsp:include page="footerDemo.jsp"></jsp:include>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
