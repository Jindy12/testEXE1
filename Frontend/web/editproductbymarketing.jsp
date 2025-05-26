<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Chi tiết sản phẩm</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <jsp:include page="header.jsp"/>
        <style>
            /* CSS tùy chỉnh để làm đẹp form */
            .form-group label {
                font-weight: bold;
                color: #333;
            }

            .form-row .form-group {
                padding-right: 15px;
            }

            .form-control {
                border-radius: 0.5rem;
                box-shadow: none;
            }

            .btn-info {
                background-color: #4CAF50;
                border: none;
                border-radius: 0.5rem;
            }

            .modal-footer a {
                margin-right: 20px;
                color: #4CAF50;
                font-weight: bold;
            }

            .modal-footer .btn-info {
                padding: 10px 20px;
                font-size: 16px;
            }

            /* Hình ảnh */
            .image {
                width: 120px;
                height: auto;
                border: 2px solid #ddd;
                border-radius: 10px;
                display: block;
                margin-bottom: 10px;
            }

            /* Mô tả sản phẩm */
            textarea {
                width: 100%;
                border-radius: 0.5rem;
                padding: 10px;
                font-size: 14px;
                background-color: #f9f9f9;
            }

            .form-container {
                padding: 30px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin-top: 20px;
            }

            .form-container h2 {
                margin-bottom: 20px;
                color: #4CAF50;
            }

            .form-row .form-group {
                margin-bottom: 15px;
            }

            /* Điều chỉnh tiêu đề hình ảnh */
            h3 {
                margin-top: 30px;
                margin-bottom: 15px;
                font-weight: bold;
                color: #4CAF50;
            }

            /* Custom mô tả trên một dòng riêng */
            .description-container {
                margin-bottom: 20px;
            }

            .description-container label {
                display: block;
                font-size: 16px;
                color: #4CAF50;
            }

            /*            .image-container {
                            margin-bottom: 20px;
                        }*/
            .image-container {
                display: flex;
                flex-wrap: wrap; /* Cho phép các mục chuyển xuống dòng nếu cần */
                gap: 15px; /* Khoảng cách giữa các ảnh */
            }

            .image {
                width: 400px; /* Đảm bảo ảnh chiếm toàn bộ chiều rộng của container */
                height: 226px;
            }

        </style>
    </head>
    <body>
        <div class="container">
            <div class="form-container">
                <h2>Chi tiết sản phẩm</h2>
                <form action="editproductbymarketing" method="post">
        <!--            <input type="hidden" name="id" value="${car.productId}">-->
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Tên xe</label>
                            <input type="text" name="name" class="form-control" value="${car.name}" required>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Số chỗ ngồi</label>
                            <input type="number" name="seatNumber" class="form-control" value="${car.seatNumber}" required min="1">
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Giá</label>
                            <input type="text" name="price" class="form-control" value="<fmt:formatNumber value='${car.price}' type='number' groupingUsed='false'/>" required>
<!--                            <input type="text" name="price" class="form-control" value="<fmt:formatNumber value='${car.price}' type='number' groupingUsed='true'/>" required>-->

                        </div> 
                        <div class="form-group col-md-6">
                            <label>Nhiên liệu</label>
                            <input type="text" name="fuel" class="form-control" value="${car.fuel}" required>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Số lượng</label>
                            <input type="number" name="stock" class="form-control" value="${car.stock}" required min="1">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Trạng thái</label>
                            <select name="status" class="form-control">
                                <option value="active" ${car.status == 1 ? 'selected' : ''}>Hiển thị</option>
                                <option value="inactive" ${car.status == 0 ? 'selected' : ''}>Ẩn</option>
                            </select>
                        </div>

                    </div>



                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Thương hiệu</label>
                            <select name="brandId" class="form-control" required>
                                <c:forEach items="${brandList}" var="brand">
                                    <option value="${brand.brandId}" <c:if test="${brand.brandId == car.brandId}">selected</c:if>>${brand.brandName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Nhà cung cấp</label>
                            <select name="supply" class="form-control" required>
                                <c:forEach items="${supplyList}" var="supply">
                                    <option value="${supply.supplyId}" <c:if test="${supply.supplyId == car.supplyId}">selected</c:if>>${supply.supplyName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label>Phân khúc</label>
                            <select name="segmentId" class="form-control" required>
                                <c:forEach items="${segmentList}" var="segment">
                                    <option value="${segment.segmentId}" <c:if test="${segment.segmentId == car.segmentId}">selected</c:if>>${segment.segmentName}</option>
                                </c:forEach>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label>Kiểu dáng</label>
                            <select name="styleId" class="form-control" required>
                                <c:forEach items="${styleList}" var="style">
                                    <option value="${style.styleId}" <c:if test="${style.styleId == car.styleId}">selected</c:if>>${style.styleName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <!-- Mô tả sản phẩm (Trước phần hình ảnh) -->
                    <div class="description-container">
                        <label>Mô tả</label>
                        <textarea name="des" rows="4" class="form-control" required>${car.description}</textarea>
                    </div>

                    <h3>Thêm ảnh sản phẩm mới</h3>
                    <div class="form-group">
                        <label>Nhập đường dẫn ảnh mới</label>
                        <input type="text" name="newImageUrl" class="form-control" placeholder="Nhập URL ảnh mới">
                    </div><!--
                                        <h3>Hình ảnh sản phẩm</h3>
                                        <div class="image-container">
                    <c:forEach items="${imageList}" var="image">
                        <div class="image-item mb-3">
                            <img class="image" src="${image.imageUrl}" alt="Image">
                            <input type="text" name="imageUrls" value="${image.imageUrl}" class="form-control">
                        </div>
                    </c:forEach>
                </div>-->

                    




                    <div class="modal-footer">
                        <a href="proformarketing" class="btn btn-secondary">Hủy</a>
                        <input type="submit" class="btn btn-info" value="Lưu">
                    </div>
                </form>
                <h3>Hình ảnh sản phẩm</h3>
                    <div class="image-container">
                        <c:forEach items="${imageList}" var="image">
                            <div class="image-item mb-3">
                                <img class="image" src="${image.imageUrl}" alt="Image" style="width: 400px; height: 226px;">  Kích thước hình ảnh 
                                <div class="button-group mt-2">
                                    <form action="image" method="post" style="display: inline;">
                                        <input type="hidden" name="action" value="delete">
                                        <input type="hidden" name="imageId" value="${image.imageId}">
                                        <input type="submit" class="btn btn-danger btn-sm" value="Xóa">
                                    </form>
                                    <form action="image" method="post" style="display: inline;">
                                        <input type="hidden" name="action" value="update">
                                        <input type="hidden" name="imageId" value="${image.imageId}">
                                        <input type="text" name="newImageUrl" class="form-control form-control-sm" placeholder="Nhập URL mới" required style="width: 200px; display: inline-block;">
                                        <input type="submit" class="btn btn-primary btn-sm" value="Cập nhật">
                                    </form>
                                </div>
                            </div>
                        </c:forEach>
                    </div>    
            </div>
        </div>
        <jsp:include page="footerDemo.jsp"/>
    </body>
</html>