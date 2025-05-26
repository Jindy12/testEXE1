<%-- 
    Document   : footer
    Created on : Sep 17, 2024, 6:16:39 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
        <style>
/*            .body {
position: sticky;
bottom:0;
            }*/
            .footInfo,
            .footInfoH{
                color: white;
                font-size: 16px;
                    list-style-type: none;
                    text-decoration:none;
                    padding-left: 10px;
                    padding-right: 10px;
                    padding-top: 15px;
            }
            .footH2{
                text-transform: uppercase;
                color: white;
                height: 80px;
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
                
            }
        </style>
    </head>
    <body>


        <!--contact start-->
        <div class="footer" style="background-color: black; color: #fff; padding: 20px; text-align: center">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-footer-widget">
                        <div class="footer-logo">
                            <a href="index.html" target="_blank" style="color: black"> <img class="headerLogo" src="img/logoWnoBG.png" alt="" style="height: 80px;"></a>
                        </div>
                        <p class="footInfo" style="color: white; font-size: 16px">
                            Công ty chúng tôi chuyên phân phối các hãng xe của Đức.
                        </p>
                        <div class="footer-contact">
                            <ul>
                                <a href="mailto:carpipi@gmail.com" style="text-decoration: none; color: white; font-size: 16px">
                                    <i class="fa fa-envelope"></i>
                                    carpipi@gmail.com
                                </a>
                            </ul>
                            <ul style="color: white; font-size: 16px">
                                <i class="fa fa-phone"></i>
                                0987654321
                            </ul>

                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-sm-6">
                    <div class="single-footer-widget" style="color: white; font-size: 16px">
                        <h2 class="footH2" style=" font-size: 20px; height: 80px">Về Carpipi</h2>
                        <ul class="footInfoH">
                            <li><a class="footInfo" href="carpipiInfo.jsp">Về chúng tôi</a></li>
                            <li><a class="footInfo" href="carpipiInfo.jsp">Sự nghiệp</a></li>
                            <li><a class="footInfo" href="carpipiInfo.jsp">Điều khoản dịch vụ</a></li>
                            <li><a class="footInfo" href="carpipiInfo.jsp">Chính sách bảo mật </a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4 col-xs-12">
                    <div class="single-footer-widget">
                        <h2 class="footH2" style="font-size: 22px; margin-bottom: 20px;">Thương Hiệu Hàng Đầu</h2>
                        <div class="row">
                            <div class="col-md-6 col-xs-6" style="padding-right: 5px;">
                                <ul class="footInfoH" style="padding: 0; list-style: none;">
                                    <li><a class="footInfo" href="#" style="color: white; transition: color 0.3s;">BMW</a></li>
                                    <li><a class="footInfo" href="#" style="color: white; transition: color 0.3s;">Audi</a></li>
                                    <li><a class="footInfo" href="#" style="color: white; transition: color 0.3s;">Mercedes</a></li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-xs-6" style="padding-left: 5px;"> <!-- Giảm khoảng cách bên trái -->
                                <ul class="footInfoH" style="padding: 0; list-style: none;">
                                    <li><a class="footInfo" href="#" style="color: white; transition: color 0.3s;">Volkswagen</a></li>
                                    <li><a class="footInfo" href="#" style="color: white; transition: color 0.3s;">Porsche</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
