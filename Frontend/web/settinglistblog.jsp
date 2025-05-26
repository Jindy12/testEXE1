
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>marketing Dashboard</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Premium Bootstrap 4 Landing Page Template" />
        <meta name="keywords" content="Appointment, Booking, System, Dashboard, Health" />
        <meta name="author" content="Shreethemes" />
        <meta name="email" content="support@shreethemes.in" />
        <meta name="website" content="../../../index.html" />
        <meta name="Version" content="v1.2.0" />
        <!-- favicon -->
        <link rel="shortcut icon" href="img/logo3.png">
        <!-- Bootstrap -->
        <link href="assetsSlider/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- simplebar -->
        <link href="assetsSlider/css/simplebar.css" rel="stylesheet" type="text/css" />
        <!-- Icons -->
        <link href="assetsSlider/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assetsSlider/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- Css -->
        <link href="assetsSlider/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
        <%--<jsp:include page="header.jsp"/>--%>
        <%--<jsp:include page="footerDemo.jsp"/>--%>
    </head>
    <body>
        <!-- Loader -->
        <div id="preloader">
            <div id="status">
                <div class="spinner">
                    <div class="double-bounce1"></div>
                    <div class="double-bounce2"></div>
                </div>
            </div>
        </div>
        <!-- Loader -->
        <div class="page-wrapper doctris-theme toggled">
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content" data-simplebar style="height: calc(100% - 60px);">
                    <div class="sidebar-brand">
                        <a href="home">
                            <img src="img/logoBnoBG.png" height="120px" class="logo-light-mode" alt="">
                            <img src="img/logoBnoBG.png" height="120px" class="logo-dark-mode" alt="">
                        </a>
                    </div>
                    <ul class="sidebar-menu pt-3">
                        <c:choose>
                            <c:when test="${sessionScope.account.roleId == 1}">
                                <li><a href="admindashboard"><i class="uil uil-dashboard me-2 d-inline-block"></i>Dashboard</a></li>
                                <li><a href="settingsList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Setting List</a></li>
                                <li><a href="userlist"><i class="uil uil-dashboard me-2 d-inline-block"></i>User List</a></li>
                                <li><a href="customerlist"><i class="uil uil-user me-2 d-inline-block"></i>Customer List</a></li>
                                <li><a href="proformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Product List</a></li>
                                <li><a href="SliderList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Slider List</a></li>
                                <li class="sidebar-dropdown">
                                    <a href="javascript:void(0)">
                                        <i class="uil uil-flip-h me-2 d-inline-block"></i>Posts List</a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li><a href="postlist">Tất cả bài viết</a></li>
                                                <c:forEach items="${topic}" var="t">
                                                <li><a href="postlist?topic=${t.blogTopicId}">${t.toppicName}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="orderlistforsale"><i class="uil uil-dashboard me-2 d-inline-block" ></i>Order List</a></li>
                                <li><a href="feedbacklistformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Feedback List</a></li>
                            </c:when>
                            <c:when test="${sessionScope.account.roleId == 2}">
                                <li><a href="marketingdashboard"><i class="uil uil-dashboard me-2 d-inline-block"></i>Dashboard</a></li>
                                <li><a href="customerlist"><i class="uil uil-user me-2 d-inline-block"></i>Customer List</a></li>
                                <li><a href="proformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Product List</a></li>
                                <li><a href="SliderList"><i class="uil uil-dashboard me-2 d-inline-block"></i>Slider List</a></li>
                                <li class="sidebar-dropdown">
                                    <a href="javascript:void(0)">
                                        <i class="uil uil-flip-h me-2 d-inline-block"></i>Posts List</a>
                                    <div class="sidebar-submenu">
                                        <ul>
                                            <li><a href="postlist">Tất cả bài viết</a></li>
                                                <c:forEach items="${topic}" var="t">
                                                <li><a href="postlist?topic=${t.blogTopicId}">${t.toppicName}</a></li>
                                                </c:forEach>
                                        </ul>
                                    </div>
                                </li>
                                <li><a href="feedbacklistformarketing"><i class="uil uil-dashboard me-2 d-inline-block"></i>Feedback List</a></li>
                            </c:when>
                        </c:choose> 
                    </ul>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->
                <ul class="sidebar-footer list-unstyled mb-0">
                    <li class="list-inline-item mb-0 ms-1">
                        <a href="#" class="btn btn-icon btn-pills btn-soft-primary">
                            <i class="uil uil-comment icons"></i>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- sidebar-wrapper  -->
            <!-- sidebar-wrapper  -->
            <!-- Start Page Content -->
            <main class="page-content bg-light">
                <div class="top-header">
                    <div class="header-bar d-flex justify-content-between border-bottom">
                        <div class="d-flex align-items-center">
                            <a href="#" class="logo-icon">
                                <img src="assetsSlider/images/logo-icon.png" height="30" class="small" alt="">
                                <span class="big">
                                    <img src="assetsSlider/images/logo-dark.png" height="24" class="logo-light-mode" alt="">
                                    <img src="assetsSlider/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                                </span>
                            </a>
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>
                            <div class="search-bar p-0 d-none d-lg-block ms-2">
                                <div id="search" class="menu-search mb-0">
                                    <form action="${pageContext.request.contextPath}/settingsList" role="search" method="get" id="searchform" class="searchform">
                                        <div class="search-container">
                                            <!-- Filter by status -->
                                            <span>
                                                <label for="status">Trạng thái:</label>
                                            </span>
                                            <span>
                                                <select name="status" style="height:40px; border-radius: 10px; padding: 10px; border: 1px solid #ccc;">
                                                    <option value="">All</option>
                                                    <option value="1" ${param.status == '1' ? 'selected' : ''}>kích hoạt</option>
                                                    <option value="0" ${param.status == '0' ? 'selected' : ''}>Ngừng kích hoạt</option>
                                                </select>
                                            </span>
                                            <!-- Search input -->
                                            <span>
                                                <input type="text" class="form-control border rounded-pill" id="s" name="search" placeholder="Tìm kiếm theo tên" value="${param.search}" />
                                            </span>
                                            <!-- Hidden input to keep track of view -->
                                            <input type="hidden" name="view" value="${view}" />
                                            <!-- Search button -->
                                            <span>
                                                <input type="submit" id="searchsubmit" value="Search">
                                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="layout-specing">
                        <div class="d-md-flex justify-content-between">
                            <h5 class="mb-0">Setting Blog</h5>

                            <nav aria-label="breadcrumb" class="d-inline-block mt-4 mt-sm-0">
                                <ul class="breadcrumb bg-transparent rounded mb-0 p-0">

                                    <li class="breadcrumb-item"><a href="index.html">Admin</a></li>


                                    <li class="breadcrumb-item active" aria-current="page">danh sách Blog</li>
                                </ul>
                            </nav>
                        </div>
                        <div class="row">
                            <div class="col-12 mt-4">
                                <div class="table-responsive shadow rounded">
                                    <table class="table table-center bg-white mb-0">
                                        <thead>
                                            <tr>
                                                <th class="border-bottom p-3" style="min-width: 50px;">Topic Id</th>
                                                <th class="border-bottom p-3" style="min-width: 180px;">Tên</th>
                                                <th class="border-bottom p-3">Số lượng</th>
                                                <th class="border-bottom p-3">Trạng thái</th>
                                                <th class="border-bottom p-3" style="min-width: 100px;">Hành động</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="topic" items="${blogTopicStatsList}">
                                                <tr>
                                                    <td class="p-3">${topic.blogTopicId}</td>
                                                    <td class="p-3">${topic.toppicName}</td>
                                                    <td class="p-3">${topic.blogTopicCount}</td>


                                                    <td class="p-3">
                                                        <span class="badge ${topic.status == 1 ? 'bg-soft-success' : 'bg-soft-warning'}">
                                                            ${topic.status == 1 ? 'Kích hoạt' : 'Ngừng kích hoạt'}
                                                        </span>
                                                    </td>
                                                    <td>
                                                        <form action="settinglistblog" method="POST" style="display: inline;">
                                                            <input type="hidden" name="blogTopicId" value="${topic.blogTopicId}">
                                                            <input type="hidden" name="status" value="${topic.status == 1 ? 0 : 1}">
                                                            <button type="submit" class="btn btn-icon btn-pills ${topic.status == 1 ? 'btn-soft-danger' : 'btn-soft-success'}">
                                                                <span class="dashicons ${topic.status == 1 ? 'uil uil-times' : 'uil uil-check'}"></span>
                                                            </button>
                                                        </form>
                                                        <a href="settingblogdetail?blogTopicId=${topic.blogTopicId}" class="btn btn-icon btn-pills btn-soft-success"><i class="uil uil-pen"></i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>


                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div><!--end row-->
                        <div class="row text-center">
                            <!-- Pagination -->
                            <div class="col-12 mt-4">
                                <div class="d-md-flex align-items-center text-center justify-content-between">
                                    <span class="text-muted me-3">Hiển thị ${(currentPage - 1) * 15 + 1} - ${(currentPage - 1) * 15 + sliders.size()} ${totalItems}</span>
                                    <ul class="pagination justify-content-center mb-0 mt-3 mt-sm-0">
                                        <!-- Previous Button -->
                                        <c:if test="${currentPage > 1}">
                                            <li class="page-item">
                                                <a class="page-link" href="${pageContext.request.contextPath}/SliderList?page=${currentPage - 1}&search=${param.search}&status=${param.status}" aria-label="Previous">Prev</a>
                                            </li>
                                        </c:if>

                                        <!-- Page Numbers -->
                                        <c:forEach begin="1" end="${totalPages}" var="page">
                                            <li class="page-item ${currentPage == page ? 'active' : ''}">
                                                <a class="page-link" href="${pageContext.request.contextPath}/SliderList?page=${page}&search=${param.search}&status=${param.status}">${page}</a>
                                            </li>
                                        </c:forEach>

                                        <!-- Next Button -->
                                        <c:if test="${sliders.size() == 15}">
                                            <li class="page-item">
                                                <a class="page-link" href="${pageContext.request.contextPath}/SliderList?page=${currentPage + 1}&search=${param.search}&status=${param.status}" aria-label="Next">Next</a>
                                            </li>
                                        </c:if>
                                    </ul>
                                </div>
                            </div>
                            <!--                                                         PAGINATION END -->
                        </div><!--end row-->
                    </div>
                </div><!--end container-->

                <!-- Footer Start -->
                <footer class="bg-white shadow py-3">

                </footer><!--end footer-->
                <!-- End -->
            </main>
            <!--End page-content" -->
        </div>
        <!-- page-wrapper -->
        <!-- javascript -->
        <script src="assetsSlider/js/bootstrap.bundle.min.js"></script>
        <!-- simplebar -->
        <script src="assetsSlider/js/simplebar.min.js"></script>
        <!-- Icons -->
        <script src="assetsSlider/js/feather.min.js"></script>
        <!-- Main Js -->
        <script src="assetsSlider/js/app.js"></script>

    </body>

</html>