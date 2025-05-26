<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>User Profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <style>
            body {
                background-color: #f8f9fa;
            }
            .container {
                box-shadow: 0 10px 40px rgba(38, 40, 64, .2);
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
            }
            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8;
            }
            .form-control {
                margin-bottom: 10px;
            }
            .profile-button {
                background: #6f42c1;
                border: none;
            }
            .profile-button:hover {
                background: #5e35b1;
            }
            .profile-button:focus,
            .profile-button:active {
                background: #5e35b1;
                box-shadow: none;
            }
            .back:hover {
                color: #5e35b1;
                cursor: pointer;
            }
            .labels {
                font-size: 14px;
                font-weight: bold;
                color: #495057;
            }
            .avatar {
                border-radius: 50%;
                border: 4px solid #6f42c1;
                transition: transform 0.3s;
            }
            .avatar:hover {
                transform: scale(1.05);
            }
            .header-title {
                font-size: 2rem;
                color: #6f42c1;
                font-weight: bold;
            }
            .error-message {
                color: red;
                font-weight: bold;
            }
            .success-message {
                color: green;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <form action="viewcustomer" method="post" enctype="multipart/form-data">
                <div class="container rounded mt-5 mb-5 p-4">
                <c:if test="${not empty errorMessage}">
                    <div class="error-message">${errorMessage}</div>
                </c:if>
                <c:if test="${not empty successMessage}">
                    <div class="success-message">${successMessage}</div>
                </c:if>
                <div class="row">
                    <!-- Avatar and User Info -->
                    <div class="col-md-4 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="avatar mt-5" width="200px" height="200px" src="img/${acc.avatar}">
                            <h3 class="font-weight-bold mt-3">${acc.firstName} ${acc.lastName}</h3>
                            <span class="text-black-50">${acc.email}</span>
                        </div>
                    </div>

                    <!-- Profile Form -->
                    <div class="col-md-8 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <h4 class="header-title">Thông tin cá nhân</h4>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <label class="labels">Họ</label>
                                    <input name="firstName" type="text" class="form-control" value="${acc.firstName}" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="labels">Tên</label>
                                    <input name="lastName" type="text" class="form-control" value="${acc.lastName}" required>
                                </div>
                                    <div class="col-md-6">
                                        <label class="labels">Giới tính</label>
                                        <select name="gender" class="form-control" required>
                                            <option value="0" <c:if test="${acc.gender == 0}">selected</c:if>>Nam</option>
                                            <option value="1" <c:if test="${acc.gender == 1}">selected</c:if>>Nữ</option>
                                            <option value="2" <c:if test="${acc.gender == 2}">selected</c:if>>Khác</option>
                                            </select>
                                        </div>
                                    <div class="col-md-6">
                                        <label class="labels">Số điện thoại</label>
                                        <input name="mobile" type="text" class="form-control" value="${acc.mobile}" required>
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Địa chỉ</label>
                                    <input name="address" type="text" class="form-control" value="${acc.address}" required>
                                </div>
                                <!-- Role (Read-Only) -->
                                <div class="col-md-6">
                                    <label class="labels">Vai trò</label>
                                    <input name="role" type="text" class="form-control" value="${role1}" readonly>
                                </div>
                                <!-- Status -->
                                <div class="col-md-6">
                                    <label class="labels">Trạng Thái</label>
                                    <select name="status" class="form-control" required>
                                        <option value="0" <c:if test="${acc.status == 0}">selected</c:if>>Không hoạt động</option>
                                        <option value="1" <c:if test="${acc.status == 1}">selected</c:if>>Hoạt động</option>
                                        <option value="2" <c:if test="${acc.status == 2}">selected</c:if>>Chờ xử lý</option>
                                        </select>
                                    </div>
                                    <!-- Email (Read-Only) -->
                                    <div class="col-md-12">
                                        <label class="labels">Email</label>
                                        <input name="email" type="text" class="form-control" value="${acc.email}" readonly>
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Thay đổi ảnh đại diện</label>
                                    <input name="avatar" type="file" class="form-control" accept="image/*">
                                    <small class="form-text text-muted mb-2">Chỉ cần chọn ảnh mới nếu bạn muốn thay đổi ảnh đại diện.</small>
                                </div>
                            </div>
                            <!-- Save Button -->
                            <span class="mt-5 text-center">
                                <!-- Nút Lưu Thông Tin -->
                                <button class="btn btn-primary profile-button" type="submit">Lưu Thông Tin</button>

                                <!-- Nút Hủy với thẻ <a> được định dạng như nút -->
                                <a href="customerlist" class="btn btn-secondary profile-button">Hủy</a>
                            </span>

                        </div>
                    </div>
                </div>
            </div>
        </form>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
