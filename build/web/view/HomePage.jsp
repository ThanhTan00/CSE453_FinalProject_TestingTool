<%-- 
    Document   : HomePage
    Created on : Feb 21, 2024, 12:55:26 PM
    Author     : tanle
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <link href="view/Style.css" rel="stylesheet" />
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <script src="https://kit.fontawesome.com/d69b483815.js" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="view/main.js"></script>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Licorice&family=Madimi+One&family=Noto+Sans:ital@1&family=Roboto&display=swap" rel="stylesheet">
        <!--        <style rel="stylesheet">
            #navbar {
                background-color: bisque;
            }
        </style>-->
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <div id="carouselExampleCaptions" class="carousel slide">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="images/carousel1.jpg" class="d-block w-100" alt="...">
            <div class="carousel_custom_card d-none d-md-block">
                <h1 class="text-center">CSE453: SOFTWARE TESTING</h1>
                <h2 class="text-center">Final Project</h2>
                <hr>
                <div class="row mt-4">
                    <div class="col-md-10">
                        <div class="d-flex justify-content-start">
                            <img style="height: 100px;" class="cus_img img-fluid" src="images\tanlenguyen.jpg" alt="...">
                            <h4 style="align-self: center;">Le Nguyen Thanh Tan</h4>
                        </div>
                    </div>
                    <div style="align-self: center;" class="col-md-2">
                        <h5 style="align-self: center;">1931200027</h5>
                    </div>
<!--                    <h4><i class="fa-solid fa-user-tie"></i> Le Nguyen Thanh Tan</h4>
                    <h5>1931200027</h5>-->
                </div>
                <div class="row mt-4">
                    <div class="col-md-10">
                        <div class="d-flex justify-content-start">
                            <img style="height: 100px;" class="cus_img img-fluid" src="images\thanhdat.jpg" alt="...">
                            <h4 style="align-self: center;">Nguyen Thanh Dat</h4>
                        </div>
                    </div>
                    <div style="align-self: center;" class="col-md-2">
                        <h5 style="align-self: center;">1931200003</h5>
                    </div>
<!--                    <h4><i class="fa-solid fa-user-tie"></i> Le Nguyen Thanh Tan</h4>
                    <h5>1931200027</h5>-->
                </div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/carousel3.png" class="d-block w-100" alt="...">
            <div class="carousel_custom_card d-none d-md-block">
                <h1 class="text-center">
                    <i class="fa-solid fa-shapes"></i> TRIANGLE PROBLEM</h1>
                <hr>
                <h4 class="text-start m-5">
                    <i class="fa-solid fa-circle-question"></i>
                    Implement an automated Test Case Generating tool for the Triangle function to generate 
                    test cases
                </h4>
                <div class="d-flex justify-content-center">
                    <a style="font-size: 20px;" class="btn btn-outline-light" href="NavControl?mode=triangleTesting">View Solution <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
          </div>
          <div class="carousel-item">
            <img src="images/carousel4.jpg" class="d-block w-100" alt="...">
            <div class="carousel_custom_card d-none d-md-block">
                <h1 class="text-center">
                    <i class="fa-solid fa-money-bill-wave"></i> COMMISSION PROBLEM</h1>
                <hr>
                <h4 class="text-start m-5">
                    <i class="fa-solid fa-circle-question"></i>
                    Implement an automated Test Case Generating tool for the Commission function to 
                    generate test cases
                </h4>
                <div class="d-flex justify-content-center">
                    <a style="font-size: 20px;" class="btn btn-outline-light" href="NavControl?mode=commissionTesting">View Solution <i class="fa-solid fa-arrow-right"></i></a>
                </div>
            </div>
          </div>
        </div>
          
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>
    </body>
</html>
