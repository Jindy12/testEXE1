<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Form</title>      
        <style>
            .star-rating {
                display: flex;
                flex-direction: row-reverse;
                justify-content: flex-start;
            }

            .star-rating input {
                display: none;
            }

            .star-rating label {
                font-size: 2em;
                color: #ccc;
                cursor: pointer;
                transition: color 0.2s ease-in-out;
            }

            .star-rating input:checked ~ label {
                color: #ffc700;
            }

            .star-rating label:hover,
            .star-rating label:hover ~ label {
                color: #ffc700;
            }
        </style>
        <script>
            function previewImage(event) {
                const file = event.target.files[0];
                const reader = new FileReader();

                reader.onload = function () {
                    const output = document.getElementById('imagePreview');
                    output.src = reader.result;
                    output.style.display = 'block'; // Hiển thị ảnh
                };

                if (file) {
                    reader.readAsDataURL(file);
                }
            }
        </script>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
        <body>
            <section class="container-fluid" style="width: 80%">
                <div class="" style="display: flex; justify-content: center;">
                    <form action="customerfeedback" method="post" style="width: 60%; text-align: left; margin: 30px 0px;" class="form-control" enctype="multipart/form-data">
                        <h4 style="margin: 20px 0px;">Đánh giá sản phẩm</h4>

                        <div class="mb-3" style="display: flex; justify-content: space-between;">
                            <div style="flex: 1; margin-right: 10px;">
                                <label class="form-label">Họ và tên</label>
                                <input type="text" class="form-control" value="${acc.firstName} ${acc.lastName}" disabled>
                        </div>
                        <div style="flex: 1; margin-left: 10px;">
                            <label class="form-label">Giới tính</label>
                            <input type="text" class="form-control" value="${acc.gender == 0 ? 'Nam' : acc.gender == 1 ? 'Nữ' : 'Khác'}" disabled>
                        </div>
                    </div>

                    <div class="mb-3" style="display: flex; justify-content: space-between;">
                        <div style="flex: 1; margin-right: 10px;">
                            <label class="form-label">Email</label>
                            <input type="text" class="form-control" value="${acc.email}" disabled>
                        </div>
                        <div style="flex: 1; margin-left: 10px;">
                            <label class="form-label">Số điện thoại</label>
                            <input type="text" class="form-control" value="${acc.mobile}" disabled>
                        </div>
                    </div>
                    <div class="mb-3" style="border: 1px solid #ccc; padding: 10px; margin-bottom: 15px;">
                        <h5>Phản hồi từ khách hàng</h5>
                        <div class="mb-3">
                            <label class="form-label">Nội dung phản hồi</label>
                            <textarea class="form-control"  name="feedbackInfor" rows="2" required></textarea>
                        </div>

                        <div class="mb-3" style="display: flex; align-items: center;">
                            <label class="form-label" style="margin-right: 10px;">Đánh giá</label>
                            <div class="star-rating">
                                <input type="radio" id="star1" name="feedbackRate" value="5" required/>
                                <label for="star1" class="fa fa-star"></label>

                                <input type="radio" id="star2" name="feedbackRate" value="4" required/>
                                <label for="star2" class="fa fa-star"></label>

                                <input type="radio" id="star3" name="feedbackRate" value="3" required/>
                                <label for="star3" class="fa fa-star"></label>

                                <input type="radio" id="star4" name="feedbackRate" value="2" required/>
                                <label for="star4" class="fa fa-star"></label>

                                <input type="radio" id="star5" name="feedbackRate" value="1" required/>
                                <label for="star5" class="fa fa-star"></label>
                            </div>
                        </div>
                        <input type="hidden" name="productId" value="${pro.productId}">
                        <input type="hidden" name="userId" value="${acc.userId}">
                        <input type="hidden" name="orderDetailId" value="${orderDetailId}">
                        <div class="mb-3" style="display: flex; align-items: center;">
                            <label>Hình ảnh phản hồi:</label>
                            <input name="feedbackImg" type="file" class="form-control" accept="image/*" onchange="previewImage(event)">
                        </div>
                        <img id="imagePreview" src="" alt="Image Preview" style="display: none; width: 100%; margin-top: 10px; border: 1px solid #ccc; border-radius: 4px;">
                    </div>
                    <div class="mb-3">
                        <button type="submit" class="btn btn-primary" name="submit" value="submit">Gửi</button>
                    </div>
                </form>
            </div>
        </section>
    </body>
    <jsp:include page="footerDemo.jsp"></jsp:include>
</html>
