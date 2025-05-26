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
                background: #0480be;
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
                color: #0480be;
            }
            .avatar {
                border-radius: 50%;
                border: 4px solid #0480be;
                transition: transform 0.3s;
            }
            .avatar:hover {
                transform: scale(1.05);
            }
            .header-title {
                font-size: 2rem;
                color: #0480be;
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
            
            <form action="userprofileadmin" method="post" enctype="multipart/form-data">
                 <input type="hidden" name="userId" value="${param.userId == null ? userUpdate.userId : param.userId}">
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
                            <img class="avatar mt-5" width="200px" height="200px" src="img/${userUpdate.avatar}">
                            <h3 class="font-weight-bold mt-3">${userUpdate.firstName} ${userUpdate.lastName}</h3>
                            <span class="text-black-50">${userUpdate.email}</span>
                        </div>
                    </div>

                    <!-- Profile Form -->
                    <div class="col-md-8 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <h4 class="header-title">Thông tin người dùng</h4>
                            </div>
                            
                            
                             
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <label for="firstName" class="labels">Họ</label>
                                    <input name="firstName" type="text" class="form-control" id="firstName" value="${param.firstName == null ? userUpdate.firstName : param.firstName}" readonly="">
                                </div>
                                <div class="col-md-6">
                                    <label for="lastName"  class="labels">Tên</label>
                                    <input name="lastName" type="text" class="form-control" id="lastName" value="${param.lastName == null ? userUpdate.lastName : param.lastName}" readonly="">
                                </div>
                                <div class="col-md-6">
                                    <c:if test="${param.gender != null}">
                                        <label for="genderSelect" class="labels">Giới tính</label>
                                        <select name="gender" class="form-select" id="genderSelect" disabled>
                                            <option value="0" ${param.gender == 0 ? "selected" : ""}> Nam </option>
                                            <option value="1" ${param.gender == 1 ? "selected" : ""}>Nữ</option>
                                            <option value="2" ${param.gender == 2 ? "selected" : ""}>Khác</option>
                                        </select>
                                    </c:if>
                                    <c:if test="${param.gender == null}">
                                        <label for="genderSelect" class="labels">Giới tính</label>
                                        <select name="gender" class="form-select" id="genderSelect" disabled>
                                            <option value="0" ${userUpdate.gender == 0 ? "selected" : ""}> Nam </option>
                                            <option value="1" ${userUpdate.gender == 1 ? "selected" : ""}>Nữ</option>
                                            <option value="2" ${userUpdate.gender == 2 ? "selected" : ""}>Khác</option>
                                        </select>
                                    </c:if>  
                                </div>
                                <div class="col-md-6">
                                    <label class="labels">Số điện thoại</label>
                                    <input name="mobile" type="text" class="form-control" id="mobile" value="${param.mobile == null ? userUpdate.mobile : param.mobile}" readonly="">
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Địa chỉ</label>
                                    <input name="address" type="text" class="form-control" id="address" value="${param.address == null ? userUpdate.address : param.address}" readonly="" >
                                </div>
                                <!-- Role (Read-Only) -->
                                <div class="col-md-12">
                                    
                                    <c:if test="${param.role != null}">
                                        <label for="roleSelect" class="labels">Role</label>
                                        <select class="form-select" id="roleSelect" name="role" readonly="">
                                            <option value="1" ${param.role == 1 ? "selected" : ""}>Admin</option>
                                            <option value="2" ${param.role == 2 ? "selected" : ""}>Makerting</option>
                                            <option value="3" ${param.role == 3 ? "selected" : ""}>Sale</option>
                                            <option value="4" ${param.role == 4 ? "selected" : ""}>Customer</option>
                                            <option value="5" ${param.role == 5 ? "selected" : ""}>Shipper</option>
                                        </select>
                                    </c:if>
                                    <c:if test="${param.role == null}">
                                        <label for="roleSelect" class="labels" >Vai trò</label>
                                        <select class="form-select" id="roleSelect" name="role" disabled>
                                           <option value="1" ${userUpdate.roleId == 1 ? "selected" : ""}>Admin</option>
                                            <option value="2" ${userUpdate.roleId == 2 ? "selected" : ""}>Makerting</option>
                                            <option value="3" ${userUpdate.roleId == 3 ? "selected" : ""}>Sale</option>
                                            <option value="4" ${userUpdate.roleId == 4 ? "selected" : ""}>Customer</option>
                                            <option value="5" ${userUpdate.roleId == 5 ? "selected" : ""}>Shipper</option>
                                        </select>
                                    </c:if>
                                </div>
                                
                                <div class="col-md-12">
                                    <label for="email" class="labels">Email</label>
                                    <input name="email" type="text" class="form-control" id="email" value="${param.email == null ? userUpdate.email : param.email}" readonly="" >
                                </div>
                                
                            </div>
                            <!-- Save Button -->
                            <span class="mt-5 text-center">
<!--                                <button class="btn btn-primary profile-button" type="submit">Lưu Thông Tin</button>-->
                            </span>
                        </div>
                                <button class="btn btn-secondary profile-button" type="button" onclick="window.history.back();">Trở Về</button>
                    </div>
                </div>
            </div>
        </form>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
