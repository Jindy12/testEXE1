<%-- 
    Document   : changePassWord
    Created on : Oct 26, 2024, 12:37:37 AM
    Author     : nguye
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- For logo png -->
        <link rel="shortcut icon" type="image/icon" href="img/logo3.png"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style_login.css">
        <title>Login</title>
        <style>
            *{

                box-sizing: border-box;
                font-family: 'Poppins',sans-serif;

            }

            .body{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                background: #e5e8ef;
            }

            .login-box{
                display: flex;
                justify-content: center;
                flex-direction: column;
                background: #f8f8f8;
                border-radius: 3px;
                width: 440px;
                height: 650px;
                padding: 30px;
                margin-top: 130px;
                margin-bottom: 100px;
            }

            .login-header{
                text-align: center;
                margin: 7px 0 7px 0;
            }

            .gg a{
                color:#fff;
                text-decoration: none;

                padding: 0 30px;
            }

            .login-header header{
                color: #333;
                font-size: 30px;
                font-weight: 600;
            }

            .login-google{
                display: flex;
                justify-content: center;
            }

            .gg{
                background: #333;
                width: 60%;
                height: 40px;
                text-align: center;
                border-radius: 20px;
                margin-bottom: 12px;
                transition: .3s;
            }

            .gg:hover {
                background: #000;

                transform: scale(1.05,1);

            }

            .input-box .input-field{
                width: 100%;
                height: 60px;
                font-size: 17px;
                padding: 0 25px;
                margin-bottom: 15px;
                border-radius: 3px;
                border: none;
                box-shadow: 0px 5px 10px 1px rgba(0,0,0,0.05);
                outline: none;
                transition: .3s;

            }

            ::placeholder{
                font-weight: 500;
                color: #222;
            }



            .input-field:focus{
                width: 105%;
            }

            .forgot{
                display: flex;
                justify-content: space-between;
                margin-bottom: 20px;

            }

            section{
                display: flex;
                align-items: center;
                font-size: 14px;
                color: #555;
            }

            #check{
                margin-right: 10px;
            }

            a{
                text-decoration: none;
            }

            a:hover{
                text-decoration: underline;
            }

            section a{
                color: #555;
            }

            .input-submit{
                display: flex; /* Thêm display: flex */
                justify-content: center; /* Căn giữa theo chiều ngang */
                align-items: center; /* Căn giữa theo chiều dọc */
                position: relative;
                margin-bottom: 8px;
            }

            .submit-btn{
                width: 50%;
                height: 50px;
                background: #222;
                border: none;
                border-radius: 3px;
                cursor: pointer;

                justify-content: center;
                transition: .3s;
            }

            .input-submit label{
                position: absolute;
                top: 45%;
                left: 50%;
                color: #fff;
                -webkit-transform: translate(-50%, -50%);
                -ms-transform: translate(-50%, -50%);
                transform: translate(-50%, -50%);
                cursor: pointer;

            }

            .submit-btn:hover{
                background: #000;
                transform: scale(1.05,1);
            }

            .sign-up-link{
                text-align: center;
                font-size: 15px;
                margin-top: 2px;
            }

            .sign-up-link a{
                color:#000;
                font-weight: 600;
            }
        </style>
    </head>
    <body>

        <jsp:include page="header.jsp"/>

        <div class="body">

            <div class="login-box">
                <c:if test="${not empty message}">
                    <div class="success">${message}</div>
                </c:if>
                <div class="login-header">
                    <header>Đổi Mật Khẩu</header>
                </div>
                <form action="changepassword" method="post">
                    <p style="color: red;">${mess}</p>
                    <div class="input-box">
                        <p>Tên đăng nhập</p>
                        <input type="text" value="${userName}" name="username" class="input-field" placeholder="Tên đăng nhập" autocomplete="off" required>
                    </div>
                    <div class="input-box">
                        <p>Nhập mật khẩu cũ</p>
                        <input type="password" name="currentPassword" class="input-field" placeholder="Mật khẩu hiện tại" autocomplete="off" required>
                    </div>
                    <div class="input-box">
                        <p>Nhập mật khẩu mới</p>
                        <input type="password" name="newPassword" class="input-field" placeholder="Mật khẩu mới" autocomplete="off" required>
                    </div>
                    <div class="input-box">
                        <p>Xác nhận mật khẩu mới</p>
                        <input type="password" name="confirmPassword" class="input-field" placeholder="Xác nhận mật khẩu mới" autocomplete="off" required>
                    </div>
                    <div class="input-submit">
                        <button type="submit" class="submit-btn">Đổi Mật Khẩu</button>
                    </div>
                </form>

            </div>

        </div>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
