<%-- 
    Document   : admincontrol
    Created on : 20-03-2022, 10:27:08
    Author     : Quan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Chi tiêu cửa hàng - BM</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="img/d.png" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
        <!-- https://fonts.google.com/specimen/Roboto -->
        <link rel="stylesheet" href="css/expense/fontawesome.min.css">
        <!-- https://fontawesome.com/ -->
        <link rel="stylesheet" href="css/expense/bootstrap.min.css">
        <!-- https://getbootstrap.com/ -->
        <link rel="stylesheet" href="css/expense/templatemo-style.css">

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>

    <body id="reportsPage">
        <div class="" id="home">
            <nav class="navbar navbar-expand-xl">
                <div class="container h-100">
                    <a class="navbar-brand" href="home">
                        <img src="img/dwhite.png" alt=""/>
                        <h1 class="tm-site-title mb-0">Business Modern</h1>
                    </a>
                    <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="material-icons">
                            menu
                        </span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto h-100">
                            <li class="nav-item">

                            </li>
                            <li class="nav-item">

                            </li>

                            <li class="nav-item">

                            </li>

                        </ul>
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link d-block" href="manage">
                                    Về lại trang quản lý
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-12 col-xl-12 tm-block-col">


                <div class="tm-bg-primary-dark tm-block tm-block-content">
                    <form action="expense" method="POST">
                        <div class="row">
                            <p class="col-2" >Theo năm</p>
                            <select class="col-9 col-lg-5 custom-select">
                                <option value="0">Select account</option>
                                <option value="1">Admin</option>
                                <option value="2">Editor</option>
                                <option value="3">Merchant</option>
                                <option value="4">Customer</option>
                            </select>
                        </div>
                        <div class="row mt-2">
                            <p class="col-2" >Theo tháng</p>
                            <select class="col-9 col-lg-5 custom-select">
                                <option value="0">Select account</option>
                                <option value="1">Admin</option>
                                <option value="2">Editor</option>
                                <option value="3">Merchant</option>
                                <option value="4">Customer</option>
                            </select>
                        </div>
                        <div class="row mt-2">

                            <p class="col-2">Theo ngày</p>
                            <select class="col-9 col-lg-5 custom-select">
                                <option value="0">Select account</option>
                                <option value="1">Admin</option>
                                <option value="2">Editor</option>
                                <option value="3">Merchant</option>
                                <option value="4">Customer</option>
                            </select>
                        </div> 
                        <div class="tm-block-settings mt-4">
                            <button type="submit" class="btn btn-primary btn-block text-uppercase">
                                Lọc kết quả
                            </button>
                        </div>
                        <!-- table container -->
                    </form>
                </div>
            </div>


            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">


                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Nhập hàng</h2>
                    <div class="tm-notification-item">
                        <h2 class="text-center">1.500.000 VNĐ</h2>
                    </div>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                                <tr>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">PRODUCT NAME</th>
                                    <th scope="col">UNIT SOLD</th>
                                    <th scope="col">IN STOCK</th>
                                    <th scope="col">EXPIRE DATE</th>
                                    <th scope="col">&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><input type="checkbox" /></th>
                                    <td class="tm-product-name">Lorem Ipsum Product 1</td>
                                    <td>1,450</td>
                                    <td>550</td>
                                    <td>28 March 2019</td>
                                    <td>
                                        <a href="#" class="tm-product-delete-link">
                                            <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                        </a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->

                </div>
            </div>


            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-product-categories">
                    <h2 class="tm-block-title">Bán hàng</h2>
                    <div class="tm-notification-item">
                        <h2 class="text-center">1.500.000 VNĐ</h2>
                    </div>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                                <tr>
                                    <th scope="col">&nbsp;</th>
                                    <th scope="col">PRODUCT NAME</th>
                                    <th scope="col">UNIT SOLD</th>
                                    <th scope="col">IN STOCK</th>
                                    <th scope="col">EXPIRE DATE</th>
                                    <th scope="col">&nbsp;</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row"><input type="checkbox" /></th>
                                    <td class="tm-product-name">Lorem Ipsum Product 1</td>
                                    <td>1,450</td>
                                    <td>550</td>
                                    <td>28 March 2019</td>
                                    <td>
                                        <a href="#" class="tm-product-delete-link">
                                            <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                        </a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->

                </div>
            </div>
        </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
            <p class="text-center text-white mb-0 px-4 small">

            </p>
        </div>
    </footer>

    <script src="js/expense/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/expense/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
        $(function () {
            $(".tm-product-name").on("click", function () {
                window.location.href = "edit-product.html";
            });
        });
    </script>
</body>



</html>
