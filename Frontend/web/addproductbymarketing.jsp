
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <title>Marketing</title>

        <style>
            .modal-dialog {
                display: flex;
                flex-direction: column;
                justify-content: center; /* Căn dọc */
                height: 100vh; /* Đặt chiều cao của khung là 100% chiều cao màn hình */
            }

            .modal-content {
                margin: auto;
                width: 100%;
                max-width: 600px; /* Giới hạn chiều rộng của modal */
            }

            .form-group-image image{
                display: flex;
                align-content: center;
                justify-content: space-between;
            }

            .form-group{
                margin-bottom: 3px;
            }

            .image {
                display: flex;
                flex-wrap: wrap; /* Cho phép các phần tử xuống dòng khi hết chỗ */
                list-style-type: none; /* Loại bỏ dấu chấm đầu dòng của danh sách */
                padding: 0;
                margin: 0;
            }

            .image li {
                flex: 1 0 30%; /* Chia mỗi phần tử chiếm 30% chiều rộng, đảm bảo 3 phần tử trong mỗi hàng */
                margin: 5px; /* Thêm khoảng cách giữa các phần tử */
                text-align: center;
            }


            .form-select{
                display: flex;
                align-content: center;
                justify-content: space-evenly;

            }


        </style>
    </head>
    <body>
        <div class="modal-content">

            <form action="addbymarketing" method="post">
                <div class="modal-header">						
                    <h4 class="modal-title">Thêm sản phẩm </h4>
                    <p style="color: red;"></p>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">	
                    <div class="form-group-image">

                        <input type="hidden" class="form-control" required>

                    </div>
                    <div class="form-group">
                        <label>Tên xe</label>
                        <input type="text" placeholder="Tên xe" name="name" class="form-control" required>

                    </div>


                    <div class="form-select">
                        <div class="form-group">
                            <label>Thương hiệu</label>
                            <select name="brand">
                                <c:forEach items="${requestScope.brandList}" var="brandList">
                                    <option value="${brandList.brandId}">${brandList.brandName}</option>

                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Kiểu dáng</label>
                            <select name="style">
                                <c:forEach items="${requestScope.styleList}" var="style">
                                    <option value="${style.styleId}">${style.styleName}</option>
                                </c:forEach>
                            </select>
                        </div>

                    </div>
                    <div class="form-select">
                        <div class="form-group">
                            <label>Phân khúc</label>
                            <select name="segment">
                                <c:forEach items="${requestScope.segmentList}" var="segmentList">
                                    <option value="${segmentList.segmentId}">${segmentList.segmentName}</option>
                                </c:forEach>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Nhà cung cấp</label>
                            <select name="supply">
                                <c:forEach items="${requestScope.supplyList}" var="supply">
                                    <option value="${supply.supplyId}">${supply.supplyName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Số chỗ ngồi</label>
                        <input type="text" name="seatNumber" placeholder="Số chỗ" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label>Giá</label>
                        <input type="text" name="price" placeholder="Giá" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label>Nhiên liệu</label>
                        <input type="text" name="fuel" placeholder="Nhiên liệu" class="form-control" required>
                    </div>


                    <div class="form-group">
                        <label>Số lượng</label>
                        <input type="text" name="stock" placeholder="Số lượng" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Mô tả</label>
                        <textarea name="des" rows="4" class="form-control" placeholder="Nhập mô tả" required></textarea>

                    </div>
                </div>
                <div class="modal-footer">
                    <!-- Thêm sự kiện onclick vào link để hiển thị hộp thoại xác nhận -->
                    <a href="javascript:void(0);" onclick="confirmCancel()">Cancel</a>
                    <input type="submit" class="btn btn-info" value="Save">
                </div>
            </form>
        </div>

        <!-- Modal để hiển thị hình ảnh phóng to -->
        <div class="modal fade" id="imageModal" tabindex="-1" role="dialog" aria-labelledby="imageModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="imageModalLabel">Image Preview</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">
                        <img id="modalImage" src="" alt="Image" style="width: 100%; height: auto;">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <script>
            document.querySelector("form").addEventListener("submit", function (event) {
                // Lấy các giá trị từ form và loại bỏ khoảng trắng
                var name = document.querySelector("input[name='name']").value.trim();
                var price = document.querySelector("input[name='price']").value.replace(/\s+/g, '');
                var seatNumber = document.querySelector("input[name='seatNumber']").value.replace(/\s+/g, '');
                var stock = document.querySelector("input[name='stock']").value.replace(/\s+/g, '');
                var imageUrl = document.querySelector("input[name='imageUrl']").value.trim();
                var des = document.querySelector("textarea[name='des']").value.trim();

                // Biến để kiểm tra xem có lỗi hay không
                var hasError = false;
                var errorMessage = "";

                // Kiểm tra tên xe
                if (name === "") {
                    errorMessage += "Tên xe không được để trống hoặc chỉ chứa khoảng trắng.\n";
                    hasError = true;
                }

                // Kiểm tra giá (phải là số và lớn hơn 0)
                if (isNaN(price) || price <= 0) {
                    errorMessage += "Giá phải là số hợp lệ và lớn hơn 0.\n";
                    hasError = true;
                }

                // Kiểm tra số chỗ ngồi (phải là số và lớn hơn 0)
                if (isNaN(seatNumber) || seatNumber <= 0) {
                    errorMessage += "Số chỗ ngồi phải là số hợp lệ và lớn hơn 0.\n";
                    hasError = true;
                }

                // Kiểm tra số lượng (phải là số và lớn hơn 0)
                if (isNaN(stock) || stock <= 0) {
                    errorMessage += "Số lượng phải là số hợp lệ và lớn hơn 0.\n";
                    hasError = true;
                }

                // Kiểm tra URL ảnh (phải bắt đầu bằng https)
                if (imageUrl !== "" && !imageUrl.startsWith("https://")) {
                    errorMessage += "URL ảnh phải bắt đầu bằng 'https://'.\n";
                    hasError = true;
                }

                // Kiểm tra mô tả (không được để trống hoặc chỉ chứa khoảng trắng)
                if (des === "") {
                    errorMessage += "Mô tả không được để trống hoặc chỉ chứa khoảng trắng.\n";
                    hasError = true;
                }

                // Nếu có lỗi, hiện thông báo và không gửi form
                if (hasError) {
                    alert(errorMessage);
                    event.preventDefault();  // Ngăn form gửi đi
                }
            });

            function confirmCancel() {
                // Hiển thị hộp thoại xác nhận
                var result = confirm("Bạn có chắc chắn muốn hủy thêm sản phẩm không?");
                if (result) {
                    // Nếu người dùng nhấn "OK", chuyển hướng đến trang proformarketing
                    window.location.href = "proformarketing";
                }
                // Nếu người dùng nhấn "Cancel", không làm gì cả
            }

        </script>

    </body>
</html>
