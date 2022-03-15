<%-- 
    Document   : manage
    Created on : 11-03-2022, 22:53:44
    Author     : Quan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Quản lý cửa hàng - BM</title>
        <link rel="icon" type="image/x-icon" href="img/d.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

        <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet">
        <!-- https://fonts.google.com/ -->
        <!--        <link rel="stylesheet" href="css/manage/bootstrap.min.css" type="text/css">-->
        <!--<link rel="stylesheet" href="css/manage/templatemo-video-catalog.css" type="text/css">-->
        <link rel="stylesheet" href="css/manage/newcss.css" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
        <!--
            
            TemplateMo 552 Video Catalog
            
            https://templatemo.com/tm-552-video-catalog
            
        -->
    </head>

    <body>

        <div class="" id="tm-video-container">
            <video autoplay muted loop id="tm-video">


                <source src="img/video.mp4" type="video/mp4">

            </video>
        </div>

        <a href="home" class="position-absolute" style="z-index: 3;">

            <img src="img/d.png">

        </a>

        <!-- <div class="position-absolute logout" style="z-index: 3;">
            <a>User:</a>|
            <a href="" style="text-decoration: none;"> Đăng xuất</a>
    
        </div> -->

        <div class="container-fluid">
            <div class="position-absolute" id="color">

                <div class="position-absolute logout">
                    <a style="color: #0d6efd">User:${sessionScope.account.username} ${sessionScope.accountStaff.userStaff} </a>|
                    <a href="logout" style="text-decoration: none;"> Đăng xuất</a>

                </div>

                <div class="container-fluid">
                    <div class="row">

                        <div class="col-12 col-sm-6 col-md-4">
                            <a class="btn btn-success nut" id="button-link" href="import">
                                <span class="material-icons">production_quantity_limits</span>Nhập hàng</a>

                        </div>
                        <div class="col-12 col-sm-6 col-md-4">
                            <a class=" btn btn-success nut" id="button-link" href="">
                                <span class="material-icons">sell</span>Bán hàng</a>
                        </div>
                        <div class="col-12 col-sm-6 col-md-4">

                            <a class=" btn btn-success nut" id="button-link" href="">
                                <span class="material-icons">warehouse</span>Kho</a>
                        </div>
                    </div>


                    <%if(request.getSession().getAttribute("account")!=null){%>
                    
                        <div class="row" style="margin-top: 40px;" >
                            <div class="col-12 col-sm-6 admin" style="text-align: center;">
                                <a class=" btn btn-danger" id="button-link " href="">
                                    <span class="material-icons">paid</span>Chi tiêu cửa hàng</a>
                            </div>
                            <div class="col-12 col-sm-6 admin" style="text-align: center;">
                                <a class=" btn btn-danger" id="button-link " href="">
                                    <span class="material-icons">manage_accounts</span>Quản lý cửa hàng</a>
                            </div>

                        </div>
                        <%}%>


                </div>
            </div>

        </div>



        <!-- .tm-page-wrap -->
        <!-- </div> -->


        <script src="js/manage/jquery-3.4.1.min.js"></script>
        <script src="js/manage/bootstrap.min.js"></script>
        <script>
            function setVideoSize() {
                const vidWidth = 1920;
                const vidHeight = 1080;
                let windowWidth = window.innerWidth;
                let newVidWidth = windowWidth;
                let newVidHeight = windowWidth * vidHeight / vidWidth;
                let marginLeft = 0;
                let marginTop = 0;

                if (newVidHeight < 500) {
                    newVidHeight = 500;
                    newVidWidth = newVidHeight * vidWidth / vidHeight;
                }

                if (newVidWidth > windowWidth) {
                    marginLeft = -((newVidWidth - windowWidth) / 2);
                }

                if (newVidHeight > 720) {
                    marginTop = -((newVidHeight - $('#tm-video-container').height()) / 2);
                }

                const tmVideo = $('#tm-video');

                tmVideo.css('width', newVidWidth);
                tmVideo.css('height', newVidHeight);
                tmVideo.css('margin-left', marginLeft);
                tmVideo.css('margin-top', marginTop);
            }

            $(document).ready(function () {
                /************** Video background *********/

                setVideoSize();

                // Set video background size based on window size
                let timeout;
                window.onresize = function () {
                    clearTimeout(timeout);
                    timeout = setTimeout(setVideoSize, 100);
                };

                // Play/Pause button for video background      
                const btn = $("#tm-video-control-button");

                btn.on("click", function (e) {
                    const video = document.getElementById("tm-video");
                    $(this).removeClass();

                    if (video.paused) {
                        video.play();
                        $(this).addClass("fas fa-pause");
                    } else {
                        video.pause();
                        $(this).addClass("fas fa-play");
                    }
                });
            })
        </script>
    </body>

</html>
