<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- For logo png -->
        <link rel="shortcut icon" type="image/icon" href="img/logo3.png"/>
        <!--        <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100..900&display=swap" rel="stylesheet">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">-->
<jsp:include page="header.jsp"/>
        <style>
            .body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fb;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .register-container {
                background-color: white;
                padding: 30px;
                border-radius: 3px; /* Border radius set to 3px */
                box-shadow: 0 10px 40px 0px rgba(38, 40, 64, .2);
                width: 600px;
                position: relative;
            }
            .strong {
                text-align: center !important;
                font-size: 35px !important; /* Increased font size */
/*                margin-bottom: 20px !important;*/
                display: block; /* Chuyển thành block */
                position: relative !important;
                top: -20px !important; /* Positioned higher */
            }
            h1 {
                text-align: center;
            }
            .form-group {
                margin-bottom: 15px;
            }
            .form-group label {
                font-weight: bold;
                display: block;
                margin-bottom: 5px;
            }
            .form-group input, .form-group select {
                width: 100%;
                padding: 10px;
                border-radius: 1px;
                border: 1px #888f9d; /* Input border color */
                height: 60px;
                box-sizing: border-box;
                background-color: #f8f8f8; /* Background color of input fields */
                color: #888f9d; /* Text color inside inputs */
                font-size: 16px;
            }
            .form-group-half {
                width: 48%;
                display: inline-block;
            }
            .form-group-full {
                width: 100%;
            }
            .form-group input[type="submit"] {
                background-color: #007bff;
                color: white;
                cursor: pointer;
                border: none;
                height: 60px;
                width: 160px; /* Set button width to 160px */
                display: block; /* Display block to make it a block-level element */
                margin: 0 auto;
            }
            .form-group input[type="submit"]:hover {
                background-color: #0056b3;
            }
            .form-group-inline {
                display: flex;
                justify-content: space-between;
            }
        </style>
    </head>

    <body>
        
        <div class="body">
            <div class="register-container">
                <strong class="strong">Đăng Ký</strong>
                <c:if test="${not empty errorMessage}">
                    <div style="color:red;">${errorMessage}</div>
                </c:if>
                    <c:if test="${not empty message}">
                    <div class="success">${message}</div>
                </c:if>
                <form action="register" method="POST">
                    <div class="form-group form-group-full">
                        <label for="email">Email*</label>
                        <input type="email" id="email" name="email" value="${not empty param.email ? param.email : ''}" required>
                    </div>
                    <div class="form-group form-group-inline">
                        <div class="form-group-half">
                            <label for="lastName">Họ và Tên Đệm</label>
                            <input type="text" id="lastName" name="lastName" value="${not empty param.lastName ? param.lastName : ''}">
                        </div>
                        <div class="form-group-half">
                            <label for="firstName">Tên</label>
                            <input type="text" id="firstName" name="firstName" value="${not empty param.firstName ? param.firstName : ''}">
                        </div>
                    </div>
                    <div class="form-group form-group-inline">

                        <div class="form-group-half">
                            <label for="gender">Giới Tính*</label>
                            <select id="gender" name="gender" required> 
                                <option value="0" ${not empty param.gender && param.gender == '0' ? 'selected' : ''}>Nam</option>
                                <option value="1" ${not empty param.gender && param.gender == '1' ? 'selected' : ''}>Nữ</option>
                                <option value="2" ${not empty param.gender && param.gender == '2' ? 'selected' : ''}>Khác</option>
                            </select>
                        </div>

                        <div class="form-group-half">
                            <label for="mobile">Số Điện Thoại*</label>
                            <input type="text" id="mobile" name="mobile" value="${not empty param.mobile ? param.mobile : ''}" required>
                        </div>
                    </div>
                    <div class="form-group form-group-full">
                        <label for="address">Địa Chỉ</label>
                        <input type="text" id="address" name="address" value="${not empty param.address ? param.address : ''}">
                    </div>
                    <div class="form-group form-group-full">
                        <label for="username">Tên Đăng Nhập*</label>
                        <input type="text" id="userName" name="userName"value="${not empty param.userName ? param.userName : ''}" required>
                    </div>
                    <div class="form-group form-group-full">
                        <label for="password">Mật Khẩu*</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <div class="form-group form-group-full">
                        <input type="submit" value="Đăng Ký">
                    </div>
                </form>
            </div>
        </div>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>

