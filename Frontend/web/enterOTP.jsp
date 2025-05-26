<%-- 
    Document   : enterOTP
    Created on : Sep 25, 2024, 11:55:15 PM
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

        <style type="text/css">
            /* Toàn màn hình */
            .full-height {
                height: 100vh; /* Chiều cao bằng 100% chiều cao của viewport */
                display: flex;
                justify-content: center; /* Căn giữa theo chiều ngang */
                align-items: center; /* Căn giữa theo chiều dọc */
                background-color: #f8f9fb;
            }

            .otp-container {
                width: 100%;
                max-width: 400px; /* Giới hạn chiều rộng tối đa */
                padding: 30px;
                box-shadow: 0 10px 40px 0px rgba(38, 40, 64, .2);
                border-radius: 3px;
                background-color: white;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Đổ bóng */
                text-align: center;
            }

            .form-group{
                margin: 10px 0px;
            }

            .otp i {
                color: #007bff;
                margin-bottom: 20px;
            }

            .text-danger {
                color: red;
            }
        </style>
    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <div class="container-fluid full-height">
                <div class="otp-container">
                    <h3>
                        <i class="fa fa-lock fa-4x"></i>
                    </h3>
                    <h2 class="text-center">Nhập OTP</h2>
                    <c:if test="${not empty errorMessage}">
                    <div style="color:red;">${errorMessage}</div>
                </c:if>


                <form id="register-form" action="valiOtpServlet" role="form" autocomplete="off"
                      class="form" method="post">

                    <div class="form-group">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                            <input id="otp" name="otp" placeholder="Nhập OTP" class="form-control" type="text" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Xác nhận OTP" type="submit">
                    </div>

                    <input type="hidden" class="hide" name="token" id="token" value="">
                </form>
            </div>
        </div>

        <jsp:include page="footerDemo.jsp"></jsp:include>

    </body>
</html>
