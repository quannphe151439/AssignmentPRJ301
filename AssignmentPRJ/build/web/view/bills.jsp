<%-- 
    Document   : bills
    Created on : 17-03-2022, 16:56:38
    Author     : Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css" integrity="sha256-3sPp8BkKUE7QyPSl6VfBByBroQbKxKG7tsusY2mhbVY=" crossorigin="anonymous" />

        <title>Hóa đơn - BM</title>
        <link rel="icon" type="image/x-icon" href="img/d.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="css/sell/bills.css" rel="stylesheet" type="text/css"/>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="js/sell/bills.js" type="text/javascript"></script>
    </head>
    <body>
        <div >
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="padding: 0px">
                <div class="container px-5">
                    <a class="navbar-brand" href="home"><img src="img/dwhite.png" style="width: 20%" >Business Modern</a>
                    <a class="navbar-brand" href="manage" style="font-size: 16px">Trang quản lý</a>
                </div>
            </nav>

            <div class="row">
                <div class="col-lg-10 mx-auto">
                    <div class="career-search mb-60">

                        <form action="#" class="career-form mb-60">
                            <div class="row">
                                <div class="col-md-6 col-lg-3 my-3">
                                    <div class="input-group position-relative">
                                        <input type="text" class="form-control" placeholder="Enter Your Keywords" id="keywords">
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-3">
                                    <div class="select-container">
                                        <select class="custom-select">
                                            <option selected="">Location</option>
                                            <option value="1">Jaipur</option>
                                            <option value="2">Pune</option>
                                            <option value="3">Bangalore</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-3">
                                    <div class="select-container">
                                        <select class="custom-select">
                                            <option selected="">Select Job Type</option>
                                            <option value="1">Ui designer</option>
                                            <option value="2">JS developer</option>
                                            <option value="3">Web developer</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-3 my-3">
                                    <button type="button" class="btn btn-lg btn-block btn-light btn-custom" id="contact-submit">
                                        Search
                                    </button>
                                </div>
                            </div>
                        </form>

                        <div class="filter-result">
                            <p class="mb-30 ff-montserrat">Total Job Openings : 89</p>

                            <div class="job-box d-md-flex align-items-center justify-content-between mb-30">
                                <div class="job-left my-4 d-md-flex align-items-center flex-wrap">
                                    <div class="img-holder mr-md-4 mb-md-0 mb-4 mx-auto mx-md-0 d-md-none d-lg-flex">
                                        FD
                                    </div>
                                    <div class="job-content">
                                        <h5 class="text-center text-md-left">Front End Developer</h5>
                                        <ul class="d-md-flex flex-wrap text-capitalize ff-open-sans">
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-pin mr-2"></i> Los Angeles
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-money mr-2"></i> 2500-3500/pm
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-time mr-2"></i> Full Time
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="job-right my-4 flex-shrink-0">
                                    <a href="#" class="btn d-block w-100 d-sm-inline-block btn-light">Apply now</a>
                                </div>
                            </div>

                            <div class="job-box d-md-flex align-items-center justify-content-between mb-30">
                                <div class="job-left my-4 d-md-flex align-items-center flex-wrap">
                                    <div class="img-holder mr-md-4 mb-md-0 mb-4 mx-auto mx-md-0 d-md-none d-lg-flex">
                                        UX
                                    </div>
                                    <div class="job-content">
                                        <h5 class="text-center text-md-left">Ui/Ux Developer</h5>
                                        <ul class="d-md-flex flex-wrap text-capitalize ff-open-sans">
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-pin mr-2"></i> Los Angeles
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-money mr-2"></i> 2500-3500/pm
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-time mr-2"></i> Full Time
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="job-right my-4 flex-shrink-0">
                                    <a href="#" class="btn d-block w-100 d-sm-inline-block btn-light">Apply now</a>
                                </div>
                            </div>

                            <div class="job-box d-md-flex align-items-center justify-content-between mb-30">
                                <div class="job-left my-4 d-md-flex align-items-center flex-wrap">
                                    <div class="img-holder mr-md-4 mb-md-0 mb-4 mx-auto mx-md-0 d-md-none d-lg-flex">
                                        GD
                                    </div>
                                    <div class="job-content">
                                        <h5 class="text-center text-md-left">Graphic Designer</h5>
                                        <ul class="d-md-flex flex-wrap text-capitalize ff-open-sans">
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-pin mr-2"></i> Los Angeles
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-money mr-2"></i> 2500-3500/pm
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-time mr-2"></i> Full Time
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="job-right my-4 flex-shrink-0">
                                    <a href="#" class="btn d-block w-100 d-sm-inline-block btn-light">Apply now</a>
                                </div>
                            </div>

                            <div class="job-box d-md-flex align-items-center justify-content-between mb-30">
                                <div class="job-left my-4 d-md-flex align-items-center flex-wrap">
                                    <div class="img-holder mr-md-4 mb-md-0 mb-4 mx-auto mx-md-0 d-md-none d-lg-flex">
                                        JS
                                    </div>
                                    <div class="job-content">
                                        <h5 class="text-center text-md-left">Javascript Developer</h5>
                                        <ul class="d-md-flex flex-wrap text-capitalize ff-open-sans">
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-pin mr-2"></i> Los Angeles
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-money mr-2"></i> 2500-3500/pm
                                            </li>
                                            <li class="mr-md-4">
                                                <i class="zmdi zmdi-time mr-2"></i> Full Time
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="job-right my-4 flex-shrink-0">
                                    <a href="#" class="btn d-block w-100 d-sm-inline-block btn-light">Apply now</a>
                                </div>
                            </div>

                        </div>
                    </div>

                    <!-- START Pagination -->
                    <nav aria-label="Page navigation">
                        <ul class="pagination pagination-reset justify-content-center">
                            <ul class="pagination mt-3 mb-0" id="paggerbot">
                            </ul>
                    </nav>
                    <!-- END Pagination -->
                </div>
            </div>

        </div>
    </body>
</html>
<script>

    pagger('paggerbot',${requestScope.pageindex},${requestScope.totalpage}, 3);
</script>