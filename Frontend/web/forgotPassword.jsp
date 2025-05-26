<%-- 
    Document   : forgotPassword
    Created on : Sep 25, 2024, 11:39:26 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- For logo png -->
        <link rel="shortcut icon" type="image/icon" href="img/logo3.png"/>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

        <link
            href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css'
            rel='stylesheet'>
        <style>
             .full-height {
        height: 100vh; /* Chiều cao bằng 100% chiều cao của viewport */
        
    }
        </style>
    </head>
    <body oncontextmenu='return false' class='snippet-body'>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="container  mb-2 mt-5 full-height">
            <div class="row justify-content-center">
                <div class="col-lg-8 col-md-10">
                    <div class="forgot">
                        <h2>Bạn Quên Mật Khẩu?</h2>
                        <p>Đổi Mật Khẩu theo 3 bước sau.</p>
                        <ol class="list-unstyled">
                            <li><span class="text-primary text-medium">1. </span>Nhập địa chỉ email bạn dùng để đăng ký.</li>
                            <li><span class="text-primary text-medium">2. </span>hệ hống của tôi sẽ gửi OTP đến bạn.</li>
                            <li><span class="text-primary text-medium">3. </span>Nhập OTP vào trang tiếp theo.</li>
                        </ol>
                    </div>
                    
                    <c:if test="${not empty errorMessage}">
                    <div style="color:red;">${errorMessage}</div>
                </c:if>
                    <c:if test="${not empty message}">
                    <div class="success">${message}</div>
                </c:if>
                    <form class="card mt-4" action="forgotPassword" method="POST">
                        <div class="card-body">
                            <div class="form-group">
                                <label for="email-for-pass">Nhập địa chỉ email của bạn</label> <input
                                    class="form-control" type="text" name="email" id="email-for-pass" required=""><small
                                    class="form-text text-muted">Nhập địa chỉ email bạn dùng để đăng ký. Chúng tôi sẽ gửi OTP đến bạn qua địa chỉ này.</small>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-success" type="submit">Đặt Mật Khẩu Mới</button>
                            <button class="btn btn-danger" type="submit">Trở về Đăng Nhập</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
<jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
