<%-- 
    Document   : newPassword
    Created on : Sep 26, 2024, 12:24:40 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <!-- For logo png -->
        <link rel="shortcut icon" type="image/icon" href="img/logo3.png"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            
            .placeicon {
                font-family: fontawesome;
            }

            /* Form alignment and styling */
            .reset-container {
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh; /* Full viewport height */
                background-color: #f8f9fa;
            }

            .reset {
                padding: 30px;
                background-color: white;
                box-shadow: 0 10px 40px 0px rgba(38, 40, 64, .2);
                border-radius: 3px;
                width: 100%;
                max-width: 500px; /* Giới hạn chiều rộng tối đa của form */
            }

            .form-group {
                margin: 20px 0;
            }

            .resetBtn {
                text-align: center;
            }

            h1 {
                text-align: center;
            }

            .text-danger {
                color: red;
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
        <jsp:include page="header.jsp"></jsp:include>

        <!-- Reset Password Form Container -->
        <div class="container-fluid reset-container">
            <div class="reset">
                <!-- Main Heading -->
                <h1><strong>Đổi Mật Khẩu</strong></h1>
                <c:if test="${not empty errorMessage}">
                    <div style="color:red;">${errorMessage}</div>
                </c:if>
                <!-- Form -->
                <form class="form-horizontal" action="newPassword" method="POST">
                    <!-- New Password Input -->
                    <div class="form-group form-group-full">
                        <label for="password">Mật Khẩu*</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <!-- Confirm Password Input -->
                    <div class="form-group form-group-full">
                        <label for="confPassword">Nhập Lại Mật Khẩu*</label>
                        <input type="password" id="confPassword" name="confPassword" required>
                    </div>
                    <!-- Submit Button -->
                    <div class="form-group resetBtn">
                        <input type="submit" value="Đặt Lại" class="btn btn-info btn-block">
                    </div>
                </form>

                <!-- Divider -->
                <hr>

                <!-- Alternative Option -->
                <div class="text-center">
                    <h5>
                        Không Có Tài Khoản? <a href="register" class="text-danger">Đăng Ký Ngay!</a>
                    </h5>
                </div>
            </div>
        </div>

        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
