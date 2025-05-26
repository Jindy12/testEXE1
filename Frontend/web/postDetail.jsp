<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${blog.blogTitle}</title>
        <style>
            body {
                font-family: 'Helvetica Neue', Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
                color: #333;
            }

            .container1 {
                display: flex;
                margin: 50px auto;
                max-width: 1600px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
                overflow: hidden;
            }

            .blog-content {
                width: 65%;
                padding: 40px;
                background-color: #fff;
                box-shadow: 5px 0 15px rgba(0, 0, 0, 0.05);
            }

            .blog-title {
                font-size: 2.5em;
                margin-bottom: 20px;
                color: #333;
                text-align: center;
                border-bottom: 2px solid #00aaff;
                padding-bottom: 10px;
            }

            .blog-meta {
                font-size: 1em;
                color: #888;
                text-align: center;
                margin-bottom: 40px;
            }

            .blog-image-container {
                text-align: center;
                margin-bottom: 40px;
            }

            .blog-image {
                max-width: 100%;
                border-radius: 8px;
                box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            }

            .textImage {
                display: block;
                margin-top: 10px;
                font-size: 0.85em;
                color: #666;
                text-align: center;
            }

            .blog-section {
                margin-bottom: 30px;
            }

            .blog-section h5 {
                font-size: 1.5em;
                margin-bottom: 10px;
                color: #444;
            }

            .blog-section p {
                line-height: 1.7;
                color: #666;
            }

            .blog-conclusion {
                margin-top: 30px;
                padding: 20px;
                background-color: #f9f9f9;
                border-left: 5px solid #00aaff;
                font-style: italic;
            }

            /* Comment Section Styles */
            .comment-section {
                margin-top: 50px;
                padding: 20px;
                background-color: #f9f9f9;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .comment-item {
                padding: 15px;
                border-bottom: 1px solid #ddd;
                margin-bottom: 15px;
            }

            .comment-info {
                font-size: 0.8em;
                color: #888;
                margin-bottom: 5px;
            }

            .rating-stars {
                color: #ffcc00; /* Gold color for stars */
            }

            .comment-sort-form {
                margin-bottom: 20px;
            }

            /* Sidebar Styles */
            .sidebar {
                width: 35%;
                padding: 40px;
                background-color: #fafafa;
                box-shadow: -5px 0 15px rgba(0, 0, 0, 0.1);
                border-radius: 10px; /* Thêm bo tròn cho sidebar */
                margin-right: 20px; /* Khoảng cách bên phải */
            }

            .categories {
                background-color: #f4f4f4;
                padding: 20px;
                border-radius: 10px;
            }

            .categories h3 {
                font-size: 1.6em; /* Tăng kích thước chữ */
                margin-bottom: 20px;
                color: #333;
                text-align: center; /* Căn giữa tiêu đề */
            }

            .latest-post-item {
                display: flex;
                margin-bottom: 15px; /* Giảm khoảng cách giữa các mục */
                border-bottom: 1px solid #ddd;
                padding-bottom: 15px;
                padding-top: 15px; /* Thêm khoảng cách trên cùng */
            }

            .latest-post-image {
                max-width: 120px;
                height: auto;
                margin-right: 15px; /* Giảm khoảng cách bên phải hình ảnh */
                border-radius: 8px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Thêm đổ bóng cho hình ảnh */
            }

            .latest-post-info {
                flex: 1; /* Đảm bảo thông tin chiếm hết không gian còn lại */
            }

            .latest-post-info h4 {
                font-size: 1.2em; /* Tăng kích thước chữ tiêu đề */
                margin-bottom: 5px; /* Giảm khoảng cách dưới tiêu đề */
                color: #333;
                transition: color 0.3s;
            }

            .latest-post-info h4 a {
                color: inherit; /* Sử dụng màu sắc của h4 */
                text-decoration: none; /* Xóa gạch chân */
            }

            .latest-post-info h4 a:hover {
                color: #00aaff; /* Đổi màu khi hover */
            }

            .post-date {
                color: #666; /* Màu sắc cho ngày đăng */
                font-size: 0.9em; /* Giảm kích thước chữ cho ngày */
            }

            .footer {
                background-color: #333;
                color: #fff;
                padding: 40px 0;
                text-align: center;
                margin-top: 50px;
            }

            .footer-contact a {
                color: #fff;
                text-decoration: none;
                font-size: 16px;
                transition: color 0.3s;
            }

            .footer-contact a:hover {
                color: #00aaff;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

            <!-- Main Content Section -->
            <div class="container1">
                <!-- Blog Content -->
                <div class="blog-content">
                    <button onclick="window.history.back()" class="btn btn-primary" style="margin-bottom: 10px;">
                        <span>X</span>
                    </button>
                    <h1 class="blog-title">${blog.blogTitle}</h1>
                <div class="blog-meta"><b>Tác giả: </b>${author} | <b>Ngày: </b>${blog.blogTime} | <b>Thể loại: </b>${topic}</div>

                <div class="blog-image-container">
                    <img src="img/${blog.images[0].imageUrl}" class="blog-image" alt="Blog Image">
                    <strong class="textImage">${blog.images[0].imageText}</strong>
                </div>

                <div class="blog-section">
                    <h5>${blog.bodyMain1}</h5>
                    <p>${blog.bodySp1}</p>
                </div>

                <div class="blog-image-container">
                    <img src="img/${blog.images[1].imageUrl}" class="blog-image" alt="Blog Image">
                    <strong class="textImage">${blog.images[1].imageText}</strong>
                </div>

                <div class="blog-section">
                    <h5>${blog.bodyMain2}</h5>
                    <p>${blog.bodySp2}</p>
                </div>

                <div class="blog-image-container">
                    <img src="img/${blog.images[2].imageUrl}" class="blog-image" alt="Blog Image">
                    <strong class="textImage">${blog.images[2].imageText}</strong>
                </div>

                <div class="blog-section">
                    <h5>${blog.bodyMain3}</h5>
                    <p>${blog.bodySp3}</p>
                </div>

                <div class="blog-conclusion">
                    <h5>${blog.endBlog}</h5>
                </div>
            </div>
                <!-- Sidebar -->
                <div class="sidebar">
                    <div class="categories">
                        <h3>Bài Viết Mới Nhất</h3>
                        <c:forEach items="${requestScope.top5}" var="top5">
                            <div class="latest-post-item">
                                <img src="img/${top5.images[0].imageUrl}" alt="Blog Image" class="latest-post-image">
                                <div class="latest-post-info">
                                    <h4><a href="blogdetail?blogId=${top5.blogId}" class="text-decoration-none">${top5.blogTitle}</a></h4>
                                    <p class="post-date">Ngày: ${top5.blogTime}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
