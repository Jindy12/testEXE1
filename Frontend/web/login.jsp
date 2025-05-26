<%-- 
    Document   : login
    Created on : Sep 22, 2024, 12:44:06 PM
    Author     : Sonvu
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
                height: 480px;
                padding: 30px;
                margin-top: 130px;
                margin-bottom: 100px;
            }

            .login-header{
                text-align: center;
                margin: 20px 0 50px 0;
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
                    <header>Đăng nhập</header>

                </div>

                <div class="login-google">
                    <section class="gg">
                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email profile openid&redirect_uri=http://localhost:9999/Iter1_Test/login&response_type=code&client_id=425567804160-tpdr9so617et1ijjcp3oqe7d35tl6n07.apps.googleusercontent.com&approval_prompt=force"> 
                            Đăng nhập bằng tài khoản Google
                        </a>


                    </section>
                </div>
                <form action="byaccount" method="post">
                    <p style="color: red;">${mess}</p>
                    <div class="input-box">
                        <p>Tên đăng nhập</p>
                        <input type="text" value="${userName}" name="username" class="input-field" placeholder="Tên đăng nhập" autocomplete="off" required>

                    </div>
                    <div class="input-box">
                        <p>Mật khẩu</p>
                        <input type="password" value="${passWord}" name="password" class="input-field" placeholder="Mật khẩu" autocomplete="off" required>
                    </div>
                    <div class="input-submit">
                        <button class="submit-btn" id="submit"></button>
                        <label for="submit">Đăng nhập</label>
                    </div>
                    <div class="forgot">
                        <section>
                            <input name="remember" type="checkbox" checked="checked"/>
                            <label for="check">Nhớ mật khẩu</label>
                        </section>
                        <section>
                            <a href="forgotPassword.jsp">Bạn quên mật khẩu ?</a>
                        </section>
                    </div>

                    <div class="sign-up-link">
                        <p>Bạn chưa có tài khoản ?<a href="register">    Tạo tài khoản</a></p>
                    </div>

                </form>

            </div>

        </div>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
