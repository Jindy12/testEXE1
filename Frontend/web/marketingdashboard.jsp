<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Carpipi</title>
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
        <!-- Select2 -->
        <link href="assetsSlider/css/select2.min.css" rel="stylesheet" />
        <!-- Icons -->
        <link href="assetsSlider/css/materialdesignicons.min.css" rel="stylesheet" type="text/css" />
        <link href="assetsSlider/css/remixicon.css" rel="stylesheet" type="text/css" />
        <link href="https://unicons.iconscout.com/release/v3.0.6/css/line.css"  rel="stylesheet">
        <!-- SLIDER -->
        <link href="assetsSlider/css/tiny-slider.css" rel="stylesheet" />
        <!-- Css -->
        <link href="assetsSlider/css/style.min.css" rel="stylesheet" type="text/css" id="theme-opt" />
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

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

                        </div>


                    </div>
                </div>

                <div class="container-fluid">
                    <div class="layout-specing">
                        <h5 class="mb-0">Dashboard</h5>

                        <div class="row">
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="postlist" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <!--                                            <i class="uil uil-bed h3 mb-0"></i>-->
                                            <i class="uil uil-file-edit-alt h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0"> ${blogCount}</h5>
                                            <p class="text-muted mb-0">Bài Viết Đang Hoạt Động</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->

                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="productlist" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-box h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${productCount}</h5>
                                            <p class="text-muted mb-0">Sản Phẩm Đang Hoạt Động</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->

                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="customerlist" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-users-alt h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${customerCount}</h5>
                                            <p class="text-muted mb-0">Khách Hàng</p>
                                        </div>
                                    </div>

                                </a>
                            </div><!--end col-->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="SliderList" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">

                                            <i class="uil uil-sliders-v-alt h3 mb-0"></i>
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${sliderCount}</h5>
                                            <p class="text-muted mb-0">Slider Đang Hoạt Động</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->
                        </div><!--end row-->
                        <div class="row">
                            <div class="col-xl-8 col-lg-7 mt-4">
                                <h4>5 Sản Phẩm Bán Chạy Nhất</h4>
                                <form action="marketingdashboard" method="get" class="filter-form">
                                    <label for="startDate">Ngày Bắt Đầu:</label>
                                    <input type="date" id="startDate" name="startDate" required 
                                           onchange="updateEndDate()" 
                                           max="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" 
                                           value="${startDate != null ? startDate : ''}">
                                    <label for="endDate">Ngày Kết Thúc:</label>
                                    <input type="date" id="endDate" name="endDate" required 
                                           max="<%= new java.text.SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date()) %>" 
                                           value="${endDate != null ? endDate : ''}">
                                    <button type="submit">Lọc</button>
                                </form>
                                <div>
                                    <div style="width: 700px; margin: auto;"> <!-- Set a specific width for the chart -->
                                        <canvas id="productSalesChart" width="500" height="400"></canvas>
                                    </div>
                                </div>
                                <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.6/dist/chart.umd.min.js"></script>
                                <script>
                                               // Hàm cập nhật giá trị min của ngày kết thúc sau khi chọn ngày bắt đầu
                                               function updateEndDate() {
                                                   var startDate = document.getElementById("startDate").value;
                                                   var endDate = document.getElementById("endDate");

                                                   // Nếu ngày bắt đầu đã được chọn, set ngày kết thúc có min là ngày bắt đầu
                                                   if (startDate) {
                                                       endDate.setAttribute("min", startDate);
                                                   }
                                               }

                                               // Prepare product data for the chart
                                               const products = [];
                                    <c:forEach var="product" items="${productSale}">
                                               products.push({
                                                   name: '${product.name}',
                                                   totalQuantitySold: ${product.totalQuantitySold}
                                               });
                                    </c:forEach>

                                               // Create arrays for labels and data
                                               const labels = products.map(product => product.name); // Product names
                                               const data = products.map(product => product.totalQuantitySold); // Total quantities sold

                                               // Create the chart
                                               const ctx = document.getElementById('productSalesChart').getContext('2d');
                                               const myChart = new Chart(ctx, {
                                                   type: 'bar',
                                                   data: {
                                                       labels: labels, // Product names as labels
                                                       datasets: [{
                                                               label: 'Số Lượng Sản Phẩm Được Bán',
                                                               data: data,
                                                               backgroundColor: [
                                                                   'rgba(255,99,132,0.2)',
                                                                   'rgba(54,162,235,0.2)',
                                                                   'rgba(255,206,86,0.2)',
                                                                   'rgba(153,102,255,0.2)',
                                                                   'rgba(255,158,64,0.2)'
                                                               ],
                                                               borderColor: [
                                                                   'rgba(255,99,132,1)',
                                                                   'rgba(54,162,235,1)',
                                                                   'rgba(255,206,86,1)',
                                                                   'rgba(153,102,255,1)',
                                                                   'rgba(255,158,64,1)'
                                                               ],
                                                               borderWidth: 1
                                                           }]
                                                   },
                                                   options: {
                                                       scales: {
                                                           x: {
                                                               beginAtZero: true,
                                                               ticks: {
                                                                   font: {
                                                                       size: 16 // Set x-axis label font size
                                                                   }
                                                               }
                                                           },
                                                           y: {
                                                               beginAtZero: true,
                                                               ticks: {
                                                                   font: {
                                                                       size: 16 // Set y-axis label font size
                                                                   }
                                                               }
                                                           }
                                                       },
                                                       plugins: {
                                                           legend: {
                                                               labels: {
                                                                   font: {
                                                                       size: 18 // Set legend font size
                                                                   }
                                                               }
                                                           },
                                                           tooltip: {
                                                               bodyFont: {
                                                                   size: 20 // Set tooltip font size when hovering
                                                               },
                                                               titleFont: {
                                                                   size: 20 // Set tooltip title font size
                                                               }
                                                           }
                                                       }
                                                   }
                                               });
                                </script>
                            </div>
<!--                            <div class="col-xl-4 col-lg-5 mt-4">
                                <div>
                                    <h4>Tỉ Lệ Giới Tính Của Khách Hàng</h4>
                                    <div style="width: 400px; margin: auto; margin-top: 50px;">
                                        <canvas id="genderDistributionPie" width="500" height="400"></canvas>
                                    </div>
                                </div>

                                <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.6/dist/chart.umd.min.js"></script>

                                <script>
                                               // Prepare data for Gender Distribution Pie Chart
                                               const genderData = {
                                                   labels: ['Nam', 'Nữ', 'Khác'], // Gender labels: Nam = Male, Nữ = Female, Khác = Other
                                                   datasets: [{
                                                           label: 'Tỉ Lệ % ',
                                                           data: [0, 0, 0], // Initial data values (will be updated dynamically)
                                                           backgroundColor: [
                                                               'rgba(255, 99, 132,0.2)', // Red for Male
                                                               'rgba(54, 162, 235,0.2)', // Blue for Female
                                                               'rgba(255, 205, 86,0.2)'  // Yellow for Other
                                                           ],
                                                           borderColor: [
                                                               'rgba(255, 99, 132,1)',
                                                               'rgba(54, 162, 235,1)',
                                                               'rgba(255, 205, 86,1)'
                                                           ]
                                                       }]
                                               };

                                               // Fetch gender distribution data from the request attribute using JSTL
                                    <c:forEach var="genderEntry" items="${genderData}">
                                        <c:choose>
                                            <c:when test="${genderEntry.key == 'male'}">
                                               genderData.datasets[0].data[0] = ${genderEntry.value}; // Update for Male (gender 0)
                                            </c:when>
                                            <c:when test="${genderEntry.key == 'female'}">
                                               genderData.datasets[0].data[1] = ${genderEntry.value}; // Update for Female (gender 1)
                                            </c:when>
                                            <c:when test="${genderEntry.key == 'other'}">
                                               genderData.datasets[0].data[2] = ${genderEntry.value}; // Update for Other (gender 2)
                                            </c:when>
                                        </c:choose>
                                    </c:forEach>

                                               // Chart configuration
                                               const genderDistributionConfig = {
                                                   type: 'pie', // or 'doughnut' if you prefer a doughnut chart
                                                   data: genderData,
                                                   options: {
                                                       plugins: {
                                                           legend: {
                                                               labels: {
                                                                   font: {
                                                                       size: 18 // Set legend font size
                                                                   }
                                                               }
                                                           },
                                                           tooltip: {
                                                               bodyFont: {
                                                                   size: 20 // Set tooltip font size when hovering
                                                               },
                                                               titleFont: {
                                                                   size: 20 // Set tooltip title font size
                                                               }
                                                           }
                                                       },
                                                       interaction: {
                                                           mode: 'nearest', // Define interaction mode
                                                           intersect: false
                                                       }
                                                   }
                                               };

                                               // Create the chart
                                               const genderDistributionCtx = document.getElementById('genderDistributionPie').getContext('2d');
                                               const genderDistributionChart = new Chart(genderDistributionCtx, genderDistributionConfig);
                                </script>
                            </div>-->
                        </div><!--end row-->
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
<!-- Chart -->
<script src="assetsSlider/js/apexcharts.min.js"></script>
<script src="assetsSlider/js/columnchart.init.js"></script>
<!-- Icons -->
<script src="assetsSlider/js/feather.min.js"></script>
<!-- Main Js -->
<script src="assetsSlider/js/app.js"></script>
</body>
</html>
