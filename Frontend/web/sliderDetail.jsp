<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <title>Slider Detail</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css" />
        <style>
            body {
                background-color: #f8f9fa;
            }
            .container {
                box-shadow: 0 10px 40px rgba(38, 40, 64, .2);
                background-color: white;
                border-radius: 10px;
                overflow: hidden;
                padding: 20px;
            }
            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8;
            }
            .form-control {
                margin-bottom: 10px;
            }
            .profile-button {
                background: #0480be;
                border: none;
            }
            .profile-button:hover {
                background: #5e35b1;
            }
            .profile-button:focus,
            .profile-button:active {
                background: #5e35b1;
                box-shadow: none;
            }
            .labels {
                font-size: 14px;
                font-weight: bold;
                color: #0480be;
            }
            .avatar {
                border: 4px solid #0480be;
                transition: transform 0.3s;
            }
            .avatar:hover {
                transform: scale(1.05);
            }
            .header-title {
                font-size: 2rem;
                color: #0480be;
                font-weight: bold;
            }
            .error-message {
                color: red;
                font-weight: bold;
            }
            .success-message {
                color: green;
                font-weight: bold;
            }
            /* Align buttons horizontally */
            .button-group {
                display: flex;
                gap: 10px;
                justify-content: center;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
            <form action="sliderdetail" method="post" enctype="multipart/form-data">
                <div class="container rounded mt-5 mb-5 p-4">
                    <c:if test="${not empty errorMessage}">
                    <div class="error-message">${errorMessage}</div>
                </c:if>
                <c:if test="${not empty successMessage}">
                    <div class="success-message">${successMessage}</div>
                </c:if>
                <div class="row">
                    <!-- Avatar and User Info -->
                    <div class="col-md-6 border-right">
                        <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                            <img class="avatar mt-5" width="100%" src="${slider.imageUrl}">
                        </div>
                    </div>

                    <!-- Profile Form -->
                    <div class="col-md-6 border-right">
                        <div class="p-3 py-5">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <h4 class="header-title">Slider Detail</h4>
                            </div>
                            <div class="row mt-3">
                                <div class="col-md-6">
                                    <label class="labels">Tiêu đề</label>
                                    <input name="title" type="text" class="form-control" value="${slider.title}" required>
                                </div>
                                <input type="hidden" name="id" value="${slider.sliderId}">
                                <div class="col-md-6">
                                    <label class="labels">Backlink</label>
                                    <input name="backlink" type="text" class="form-control" value="${slider.backlink}" required>
                                </div>
                                <div class="col-md-6">
                                    <label class="labels">Trạng Thái</label>
                                    <select name="status" class="form-control" required>
                                        <option value="1" ${slider.status == 1 ? 'selected' : ''}>Kích Hoạt</option>
                                        <option value="0" ${slider.status == 0 ? 'selected' : ''}>Ngừng Kích Hoạt</option>
                                    </select>
                                </div>
                                <div class="col-md-6">
                                    <label class="labels">ID sản phẩm</label>
                                    <input name="proId" type="text" class="form-control" value="${slider.productId}" required>
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Mô tả</label>
                                    <input name="description" type="text" class="form-control" value="${slider.description}" required>
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Thay đổi ảnh slider</label>
                                    <input name="image" type="file" class="form-control" accept="image/*">
                                </div>
                            </div>
                            <!-- Button Group -->
                            <div class="button-group mt-5 text-center">
                                <button class="btn btn-primary profile-button" type="submit">Lưu Thông Tin</button>
                                <a href="SliderList" class="btn btn-primary profile-button">Slider List</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <jsp:include page="footerDemo.jsp"></jsp:include>
    </body>
</html>
