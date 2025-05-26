<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>Admin Dash Board</title>
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
        <style>
            .dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-menu {
                display: none; /* Hide dropdown by default */
                position: absolute;
                background-color: white;
                border: 1px solid #ccc;
                z-index: 1;
            }

            .dropdown:hover .dropdown-menu {
                display: block; /* Show dropdown on hover */
            }

            .dropdown-item {
                padding: 10px;
                text-decoration: none;
                color: black;
                display: block;
            }

            .dropdown-item:hover {
                background-color: #f0f0f0; /* Change background on hover */
            }
        </style>
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
                    <div class="header-bar d-flex justify-content-between align-items-center border-bottom">
                        <div class="d-flex align-items-center">
                            <a href="#" class="logo-icon">
                                <img src="assets1/images/logo-icon.png" height="30" class="small" alt="">
                                <span class="big">
                                    <img src="assets1/images/logo-dark.png" height="24" class="logo-light-mode" alt="">
                                    <img src="assets1/images/logo-light.png" height="24" class="logo-dark-mode" alt="">
                                </span>
                            </a>
                            <a id="close-sidebar" class="btn btn-icon btn-pills btn-soft-primary ms-2" href="#">
                                <i class="uil uil-bars"></i>
                            </a>
                            <li class="list-inline-item mb-0 ms-1 d-flex align-items-center">
                                <a href="home">
                                    <div class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="home" class="fea icon-sm"></i></div>
                                </a>
                            </li>
                        </div>

                        <!-- Thêm chữ "carpipi" vào giữa -->
                        <div class="text-center flex-grow-1">
                            <h2 class="mb-0" style="font-family: 'Courier New', Courier, monospace; font-weight: bold; color: #3b5998;">carpipi</h2>
                        </div>

                        <ul class="list-unstyled mb-0 d-flex align-items-center">
                            <li class="list-inline-item mb-0 ms-1">
                                <a href="logout">
                                    <div class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="log-out" class="fea icon-sm"></i></div>
                                </a>
                            </li>

                            <li class="list-inline-item mb-0 ms-1">
                                <a href="userprofile">
                                    <div class="btn btn-icon btn-pills btn-soft-primary"><i data-feather="user" class="fea icon-sm"></i></div>
                                </a>
                            </li>

                            <li class="list-inline-item mb-0 ms-1">
                                <div class="dropdown dropdown-primary">
                                    <button type="button" class="btn btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <img src="img/avatar-trang-4.jpg" class="avatar avatar-ex-small rounded-circle" alt="">
                                    </button>
                                    <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3" style="min-width: 200px;">
                                        <a class="dropdown-item d-flex align-items-center text-dark" href="https://shreethemes.in/doctris/layouts/admin/profile.html">
                                            <img src="img/avatar-trang-4.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                        </a>
                                        <a class="dropdown-item text-dark" href="userprofile"><span class="mb-0 d-inline-block me-1"><i class="uil uil-setting align-middle h6"></i></span> Profile Settings</a>
                                        <div class="dropdown-divider border-top"></div>
                                        <a class="dropdown-item text-dark" href="logout"><span class="mb-0 d-inline-block me-1"><i class="uil uil-sign-out-alt align-middle h6"></i></span> Logout</a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="container-fluid">
                    <div class="layout-specing">
                        <h5 class="mb-0">Dashboard</h5>

                        <div class="row">
                            <!-- Post Count -->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="postlist" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-file-edit-alt h3 mb-0"></i> <!-- Icon chỉnh sửa -->
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${blogCount}</h5>
                                            <p class="text-muted mb-0">Post</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->

                            <!-- Product Count -->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="proformarketing" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-box h3 mb-0"></i> <!-- Icon sản phẩm -->
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${productCount}</h5>
                                            <p class="text-muted mb-0">Product</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->

                            <!-- Customer Count -->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="customerlist" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-users-alt h3 mb-0"></i> <!-- Icon khách hàng -->
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${customerCount}</h5>
                                            <p class="text-muted mb-0">Customer</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->

                            <!-- Total Sale Product -->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <div class="card features feature-primary rounded border-0 shadow p-4">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-shopping-cart h3 mb-0"></i> <!-- Icon doanh số -->
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${totalQuantitySold}</h5>
                                            <p class="text-muted mb-0">Sale Product</p>
                                        </div>
                                    </div>
                                </div>
                            </div><!--end col-->

                            <!-- Slider Count -->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="SliderList" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-sliders-v-alt h3 mb-0"></i> <!-- Icon slider -->
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${sliderCount}</h5>
                                            <p class="text-muted mb-0">Slider</p>
                                        </div>
                                    </div>
                                </a>
                            </div><!--end col-->
                            <!--feedback-->
                            <div class="col-xl-2 col-lg-4 col-md-4 mt-4">
                                <a href="SliderList" class="card features feature-primary rounded border-0 shadow p-4 text-decoration-none">
                                    <div class="d-flex align-items-center">
                                        <div class="icon text-center rounded-md">
                                            <i class="uil uil-star h3 mb-0"></i> <!-- Icon phản hồi -->
                                            <!-- Bạn có thể thay đổi uil-star thành một biểu tượng khác nếu cần -->
                                        </div>
                                        <div class="flex-1 ms-2">
                                            <h5 class="mb-0">${feedbackCount}</h5>
                                            <p class="text-muted mb-0">Feedback</p>
                                        </div>
                                    </div>
                                </a>
                            </div>

                        </div>
                        <!--end row-->

                        <div class="row">
                            <div class="col-xl-12 col-lg-7 mt-4">
                                <div>
                                    <h3>Product Sales Chart From Brand</h3>
                                    <div style="width: 700px; margin: auto;">
                                        <canvas id="productSalesChart" width="700" height="400"></canvas>
                                    </div>
                                </div>
                            </div>

                            <div class="col-xl-12 col-lg-7 mt-4">
                                <div>
                                    <h3>Feedback Rate</h3>
                                    <div style="width: 700px; margin: auto;">
                                        <canvas id="feedbackRateChart" width="700" height="400"></canvas>
                                    </div>
                                </div>
                            </div>

                            <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.6/dist/chart.umd.min.js"></script>

                            <script>
    // Biểu đồ Doanh số sản phẩm
    const brands = [];
    <c:forEach var="brand" items="${brandSale}">
        brands.push({
            name: '${brand.name}',
            totalRevenue: ${brand.totalRevenue} // Sửa lỗi không có dấu ":" ở đây
        });
    </c:forEach>

    const labelsSales = brands.map(brand => brand.name);
    const dataSales = brands.map(brand => brand.totalRevenue);

    const ctxSales = document.getElementById('productSalesChart').getContext('2d');
    const productSalesChart = new Chart(ctxSales, {
        type: 'bar',
        data: {
            labels: labelsSales,
            datasets: [{
                label: 'Total Revenue',
                data: dataSales,
                backgroundColor: 'rgba(54, 162, 235, 0.5)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        font: {
                            size: 16 // Set y-axis label font size
                        }
                    },
                    title: {
                        display: true,
                        text: 'Quantity Sold'
                    }
                },
                x: {
                    ticks: {
                        font: {
                            size: 16 // Set x-axis label font size
                        }
                    },
                    title: {
                        display: true,
                        text: 'Products'
                    }
                }
            },
            responsive: true,
            maintainAspectRatio: false,
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

    // Biểu đồ Tỷ lệ phản hồi
    const feedbacks = [];
    <c:forEach var="feedback" items="${feedbackBrand}">
        feedbacks.push({
            brandName: '${feedback.brandName}',
            feedbackRate: ${feedback.feedbackRate}
        });
    </c:forEach>

    const labelsFeedback = feedbacks.map(feedback => feedback.brandName);
    const dataFeedback = feedbacks.map(feedback => feedback.feedbackRate);

    const ctxFeedback = document.getElementById('feedbackRateChart').getContext('2d');
    const feedbackRateChart = new Chart(ctxFeedback, {
        type: 'bar',
        data: {
            labels: labelsFeedback,
            datasets: [{
                label: 'Feedback Rate',
                data: dataFeedback,
                backgroundColor: 'rgba(54, 162, 235, 0.5)',
                borderColor: 'rgba(54, 162, 235, 1)',
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                y: {
                    beginAtZero: true,
                    ticks: {
                        font: {
                            size: 16 // Set y-axis label font size
                        }
                    },
                    title: {
                        display: true,
                        text: 'Feedback Rate'
                    }
                },
                x: {
                    ticks: {
                        font: {
                            size: 16 // Set x-axis label font size
                        }
                    },
                    title: {
                        display: true,
                        text: 'Brand'
                    }
                }
            },
            responsive: true,
            maintainAspectRatio: false,
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


<!--                            <div class="col-xl-4 col-lg-5 mt-4">
                                <div class="card shadow border-0 p-4">
                                    <div class="d-flex justify-content-between align-items-center mb-3">
                                        <h6 class="align-items-center mb-0">Patients by Department</h6>
                                        <div class="mb-0 position-relative">
                                            <select class="form-select form-control" id="dailychart">
                                                <option selected>Today</option>
                                                <option value="2019">Yesterday</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div id="department" class="apex-chart"></div>
                                </div>
                            </div>-->
                        </div>
                        <!--end row-->

                        <div class="row">
                            <div class="col-xl-4 col-lg-6 mt-4">
                                <div class="card border-0 shadow rounded">
                                    <div class="d-flex justify-content-between align-items-center p-4 border-bottom">
                                        <h6 class="mb-0"><i class="uil uil-user text-primary me-1 h5"></i>Nhân viên</h6>
                                        <h6 class="text-muted mb-0">${staffCount}</h6>
                                    </div>

                                    <ul class="list-unstyled mb-0 p-4">
                                        <c:forEach items="${staff}" var="staff">
                                            <li class="mt-4">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="d-inline-flex">
                                                        <img src="img/${staff.avatar}" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <div class="ms-3">
                                                            <h6 class="text-dark mb-0 d-block">
                                                                <a href="userprofileadmin?userId=${staff.userId}" class="text-dark text-decoration-none">
                                                                    ${staff.firstName} ${staff.lastName}
                                                                </a>
                                                            </h6>

                                                            <small class="text-muted">
                                                                <c:choose>
                                                                    <c:when test="${staff.roleId == 2}">
                                                                        Marketing Staff
                                                                    </c:when>
                                                                    <c:when test="${staff.roleId == 3}">
                                                                        Sale Staff
                                                                    </c:when>
                                                                    <c:when test="${staff.roleId == 5}">
                                                                        Shipper
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        Unknown Role
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </small>
                                                        </div>
                                                    </div>
                                                    <div class="dropdown">
                                                        <button class="btn btn-icon btn-pills btn-soft-success dropdown-toggle" id="dropdownMenuButton" aria-expanded="false" onclick="toggleDropdown(event)">
                                                            <i class="uil uil-pen"></i>
                                                        </button>
                                                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                            <a class="dropdown-item" href="editRole?userId=${staff.userId}&roleId=1">Admin</a>
                                                            <a class="dropdown-item" href="editRole?userId=${staff.userId}&roleId=2">Marketing</a>
                                                            <a class="dropdown-item" href="editRole?userId=${staff.userId}&roleId=3">Sale</a>
                                                            <a class="dropdown-item" href="editRole?userId=${staff.userId}&roleId=4">Customer</a>
                                                            <a class="dropdown-item" href="editRole?userId=${staff.userId}&roleId=5">Shipper</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                                    
                                    <div class="col-xl-4 col-lg-6 mt-4">
                                <div class="card border-0 shadow rounded">
                                    <div class="d-flex justify-content-between align-items-center p-4 border-bottom">
                                        <h6 class="mb-0"><i class="uil uil-users-alt text-primary me-1 h5"></i>Khách hàng thân thiết</h6>
                                        
                                    </div>

                                    <ul class="list-unstyled mb-0 p-4">
                                        <c:forEach items="${top5}" var="top5">
                                            <li class="mt-4">
                                                <div class="d-flex align-items-center justify-content-between">
                                                    <div class="d-inline-flex">
                                                        <img src="img/${top5.avatar}" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                        <div class="ms-3">
                                                            <h6 class="text-dark mb-0 d-block">
                                                                <a href="userprofileadmin?userId=${top5.userId}" class="text-dark text-decoration-none">
                                                                    ${top5.firstName} ${top5.lastName}
                                                                </a>
                                                            </h6>

                                                            <small class="text-muted">
                                                                ${top5.email}
                                                            </small>
                                                            <br/>
                                                            <small class="text-muted">
                                                                ${top5.mobile}
                                                            </small>
                                                        </div>
                                                    </div>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div><!--end col-->

                            <!--                            <div class="col-xl-4 col-lg-6 mt-4">
                                                            <div class="card chat chat-person border-0 shadow rounded">
                                                                <div class="d-flex justify-content-between border-bottom p-4">
                                                                    <div class="d-flex">
                                                                        <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                        <div class="flex-1 overflow-hidden ms-3">
                                                                            <a href="#" class="text-dark mb-0 h6 d-block text-truncate">Cristino Murphy</a>
                                                                            <small class="text-muted"><i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i> Online</small>
                                                                        </div>
                                                                    </div>
                            
                                                                    <ul class="list-unstyled mb-0">
                                                                        <li class="dropdown dropdown-primary list-inline-item">
                                                                            <button type="button" class="btn btn-icon btn-pills btn-soft-primary dropdown-toggle p-0" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="uil uil-ellipsis-h icons"></i></button>
                                                                            <div class="dropdown-menu dd-menu dropdown-menu-end bg-white shadow border-0 mt-3 py-3">
                                                                                <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"><i class="uil uil-user align-middle h6"></i></span> Profile</a>
                                                                                <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"><i class="uil uil-setting align-middle h6"></i></span> Profile Settings</a>
                                                                                <a class="dropdown-item text-dark" href="#"><span class="mb-0 d-inline-block me-1"><i class="uil uil-trash align-middle h6"></i></span> Delete</a>
                                                                            </div>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                            
                                                                <ul class="p-4 list-unstyled mb-0 chat" data-simplebar style="background: url('assetsSlider/images/bg/bg-chat.png') center center; max-height: 295px;">
                                                                    <li>
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative">
                                                                                    <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Hey Christopher</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>59 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li class="chat-right">
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative chat-user-image">
                                                                                    <img src="assetsSlider/images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Hello Cristino</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>45 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li class="chat-right">
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative chat-user-image">
                                                                                    <img src="assetsSlider/images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">How can i help you?</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>44 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li>
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative">
                                                                                    <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Nice to meet you</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>42 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li>
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative">
                                                                                    <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Hope you are doing fine?</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>40 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li class="chat-right">
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative chat-user-image">
                                                                                    <img src="assetsSlider/images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">I'm good thanks for asking</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>45 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li>
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative">
                                                                                    <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">I am intrested to know more about your prices and services you offer</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>35 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li class="chat-right">
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative chat-user-image">
                                                                                    <img src="assetsSlider/images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Sure please check below link to find more useful information <a href="https://1.envato.market/landrick" target="_blank" class="text-primary">https://shreethemes.in/landrick/</a></p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>25 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li>
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative">
                                                                                    <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Thank you 😊</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>20 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                            
                                                                    <li class="chat-right">
                                                                        <div class="d-inline-block">
                                                                            <div class="d-flex chat-type mb-3">
                                                                                <div class="position-relative chat-user-image">
                                                                                    <img src="assetsSlider/images/client/09.jpg" class="avatar avatar-md-sm rounded-circle border shadow" alt="">
                                                                                    <i class="mdi mdi-checkbox-blank-circle text-success on-off align-text-bottom"></i>
                                                                                </div>
                            
                                                                                <div class="flex-1 chat-msg" style="max-width: 500px;">
                                                                                    <p class="text-muted small shadow px-3 py-2 bg-white rounded mb-1">Welcome</p>
                                                                                    <small class="text-muted msg-time"><i class="uil uil-clock-nine me-1"></i>18 min ago</small>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </li>
                                                                </ul>
                            
-->                                                                
<!--<div class="p-2 rounded-bottom shadow">
                                                                    <div class="row">
                                                                        <div class="col">
                                                                            <input type="text" class="form-control border" placeholder="Enter Message...">
                                                                        </div>
                                                                        <div class="col-auto">
                                                                            <a href="#" class="btn btn-icon btn-primary"><i class="uil uil-message icons"></i></a>
                                                                            <a href="#" class="btn btn-icon btn-primary"><i class="uil uil-smile icons"></i></a>
                                                                            <a href="#" class="btn btn-icon btn-primary"><i class="uil uil-paperclip icons"></i></a>
                                                                        </div>
                                                                    </div>
                                                                </div>-->
                                                            
                                                        

<!--                                                        <div class="col-xl-4 col-lg-12 mt-4">
                                                            <div class="card border-0 shadow rounded">
                                                                <div class="p-4 border-bottom">
                                                                    <div class="d-flex justify-content-between align-items-center">
                                                                        <h6 class="mb-0"><i class="uil uil-user text-primary me-1 h5"></i> Patients Reviews</h6>
                            
                                                                        <div class="mb-0 position-relative">
                                                                            <select class="form-select form-control" id="dailypatient">
                                                                                <option selected>New</option>
                                                                                <option value="2019">Old</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                </div>
                            
                                                                <ul class="list-unstyled mb-0 p-4" data-simplebar style="height: 355px;">
                                                                    <li class="d-flex align-items-center justify-content-between">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="assetsSlider/images/doctors/01.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                                            <div class="flex-1 ms-3">
                                                                                <span class="d-block h6 mb-0">Dr. Calvin Carlo</span>
                                                                                <small class="text-muted">Orthopedic</small>
                            
                                                                                <ul class="list-unstyled mb-0">
                                                                                    <li class="list-inline-item text-muted">(45)</li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                            
                                                                        <p class="text-muted mb-0">150 Patients</p>
                                                                    </li>
                            
                                                                    <li class="d-flex align-items-center justify-content-between mt-4">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="assetsSlider/images/doctors/02.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                                            <div class="flex-1 ms-3">
                                                                                <span class="d-block h6 mb-0">Dr. Cristino Murphy</span>
                                                                                <small class="text-muted">Gynecology</small>
                            
                                                                                <ul class="list-unstyled mb-0">
                                                                                    <li class="list-inline-item text-muted">(75)</li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                            
                                                                        <p class="text-muted mb-0">350 Patients</p>
                                                                    </li>
                            
                                                                    <li class="d-flex align-items-center justify-content-between mt-4">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="assetsSlider/images/doctors/03.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                                            <div class="flex-1 ms-3">
                                                                                <span class="d-block h6 mb-0">Dr. Alia Reddy</span>
                                                                                <small class="text-muted">Psychotherapy</small>
                            
                                                                                <ul class="list-unstyled mb-0">
                                                                                    <li class="list-inline-item text-muted">(48)</li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                            
                                                                        <p class="text-muted mb-0">450 Patients</p>
                                                                    </li>
                            
                                                                    <li class="d-flex align-items-center justify-content-between mt-4">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="assetsSlider/images/doctors/04.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                                            <div class="flex-1 ms-3">
                                                                                <span class="d-block h6 mb-0">Dr. Toni Kover</span>
                                                                                <small class="text-muted">Dentist</small>
                            
                                                                                <ul class="list-unstyled mb-0">
                                                                                    <li class="list-inline-item text-muted">(68)</li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                            
                                                                        <p class="text-muted mb-0">484 Patients</p>
                                                                    </li>
                            
                                                                    <li class="d-flex align-items-center justify-content-between mt-4">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="assetsSlider/images/doctors/05.jpg" class="avatar avatar-small rounded-circle border shadow" alt="">
                                                                            <div class="flex-1 ms-3">
                                                                                <span class="d-block h6 mb-0">Dr. Jennifer Ballance</span>
                                                                                <small class="text-muted">Cardiology</small>
                            
                                                                                <ul class="list-unstyled mb-0">
                                                                                    <li class="list-inline-item text-muted">(55)</li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                    <li class="list-inline-item"><i class="mdi mdi-star text-warning"></i></li>
                                                                                </ul>
                                                                            </div>
                                                                        </div>
                            
                                                                        <p class="text-muted mb-0">476 Patients</p>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>-->
                        </div><!--end row-->
                    </div>
                </div><!--end container-->

                <!--                 Footer Start 
                                <footer class="bg-white shadow py-3">
                                    <div class="container-fluid">
                                        <div class="row align-items-center">
                                            <div class="col">
                
                                            </div>end col
                                        </div>end row
                                    </div>end container
                                </footer>end footer
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
        <script>
                                                            function toggleDropdown(event) {
                                                                const dropdownMenu = event.currentTarget.nextElementSibling;
                                                                dropdownMenu.classList.toggle('show');
                                                            }

                                                            // Close the dropdown if clicked outside
                                                            window.onclick = function (event) {
                                                                if (!event.target.matches('.dropdown-toggle')) {
                                                                    const dropdowns = document.querySelectorAll('.dropdown-menu');
                                                                    dropdowns.forEach(dropdown => {
                                                                        dropdown.classList.remove('show');
                                                                    });
                                                                }
                                                            };
        </script>
    </body>

</html>
