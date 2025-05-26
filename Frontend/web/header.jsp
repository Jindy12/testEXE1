<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- meta data -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<html>
    <head>
        <title>header</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- For logo png -->
        <link rel="shortcut icon" type="image/icon" href="img/logo3.png"/>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
        <style>
            .navHeader * {
                box-sizing: border-box;
            }
            .headerN {
                text-transform: uppercase;
                font-weight: 500;
                font-family: Arial, sans-serif;
                font-size: 16px;
                margin: 20px;
            }

            .headerLogo {
                margin-left: 50px;
            }

            .menu,
            .logo {
                text-align: center;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .navHeader {
                z-index: 5;
                position: sticky;
                top: 0;
                padding-left: 0;
                padding-right: 0;
                background-color: black;
                height: 78px;
                box-shadow: 5px 5px rgb(225, 227, 228);
                margin: 0px 0px 20px 0px;
            }

            .headerN a {
                color: white !important;  /* Đảm bảo màu mặc định là trắng */
                text-decoration: none !important;
            }

            .headerN a:hover {
                color: #4e4ffa !important;   /* Màu xanh khi di chuột */
            }

        </style>
    </head>
    <body>
        <div class="row navHeader container-fluid">
            <div class="col-3 logo">
                <a href="home" style="text-decoration:none; color: black"> 
                    <img class="headerLogo" src="img/logoWhite.png" alt="" style="height: 78px;">
                </a>
            </div>

            <div class="col-9 menu">
                <c:choose>
                    <c:when test="${sessionScope.account.roleId == 1}">
                        <span class="headerN"><a href="admindashboard">Admin</a></span>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.account.roleId == 2}">
                        <span class="headerN"><a href="marketingdashboard">Makerting</a></span>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.account.roleId == 3}">
                        <span class="headerN"><a href="sale">Sale</a></span>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${sessionScope.account.roleId == 5}">
                        <span class="headerN"><a href="shipper">Shipper</a></span>
                        </c:when>
                    </c:choose>

                <span class="headerN"><a href="productlist" style="text-decoration:none; color: white">Danh sách mẫu</a></span>

                <span class="headerN"><a href="BlogListServlet" style="text-decoration:none; color: white">Tin xe</a></span>
                <c:choose>
                    <c:when test="${sessionScope.account == null}">
                        <!-- Không có tài khoản, hiện menu Đăng Nhập -->
                    </c:when>
                    <c:otherwise>
                        <span class="headerN"><a style="text-decoration:none; color: white" href="userprofile">Welcome, ${sessionScope.account.lastName}!</a></span>
                    </c:otherwise>
                </c:choose>


                <c:set var="sizeCart" value="${sessionScope.sizeCart}"/>
                <span class="headerN">
                    <a href="carts" style="text-decoration:none; color: white; position: relative;">
                        <i class="fa fa-shopping-cart"></i>
                        <span style="margin-left: 5px;">Giỏ Hàng</span>
                        <c:if test="${sizeCart > 0}">
                            <span class="cart-amount">${sizeCart}</span>
                        </c:if>
                    </a>
                </span>
                
                <c:choose>
                    <c:when test="${sessionScope.account == null}">
                        <span class="headerN"><a style="text-decoration:none; color: white" href="login.jsp">Đăng Nhập</a></span>
                    </c:when>
                    <c:otherwise>
                        <span class="headerN"><a style="text-decoration:none; color: white" href="logout">Đăng Xuất</a></span>
                    </c:otherwise>
                </c:choose>
            </div>
        </div>

    </body>

</html>
