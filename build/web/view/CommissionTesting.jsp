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
        <title>Triangle</title>
        
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
        <style rel="stylesheet">
            body {
                font-family: "Poppins", sans-serif;
                background-image: url('images/commission_background.jpg');
                background-size: 100%;
                height: 100%;
            }
        </style>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
        <div class="container mt-130">
            <div class="triangle-section">
                <h1 class="text-center">COMMISSION TESTING</h1>
                <div class="d-flex justify-content-between">
                    <div class="col-md-4 form-card me-3">
                        <h4 class="text-center mb-4"><b>Input Categories</b></h4>
                        <form action="MainControl" method="post" class="row g-3">
                            <input type="text" name="mode" value="commission" hidden>
                            <div class="row">
                                <p class="m-0"><strong>Lock:</strong></p>
                                <div class="col-md-6">
                                    <label for="min_lock" class="form-label">Min Value</label>
                                    <input type="number" class="form-control" id="min_lock" name="min_lock" placeholder="Enter min" min='0' required value="${sessionScope.min_lock}">
                                </div>
                                <div class="col-md-6">
                                    <label for="max" class="form-label">Max Value</label>
                                    <input type="number" class="form-control" id="max_lock" name="max_lock" placeholder="Enter max" min='0' required value="${sessionScope.max_lock}">
                                </div>
                                <div class="col-md-12">
                                    <label for="lock_cost" class="form-label">Lock Cost</label>
                                    <input type="number" class="form-control" id="lock_cost" name="lock_cost" placeholder="Default value is 30" min='0' value="${sessionScope.lock_cost}">
                                </div>
                            </div>
                            <div class="row">
                                <p class="m-0"><strong>Stock:</strong></p>
                                <div class="col-md-6">
                                    <label for="min_stock" class="form-label">Min Value</label>
                                    <input type="number" class="form-control" id="min_stock" name="min_stock" placeholder="Enter min" min='0' required value="${sessionScope.min_stock}">
                                </div>
                                <div class="col-md-6">
                                    <label for="max_stock" class="form-label">Max Value</label>
                                    <input type="number" class="form-control" id="max_stock" name="max_stock" placeholder="Enter max" min='0' required value="${sessionScope.max_stock}">
                                </div>
                                <div class="col-md-12">
                                    <label for="stock_cost" class="form-label">Stock Cost</label>
                                    <input type="number" class="form-control" id="stock_cost" name="stock_cost" placeholder="Default value is 35" min='0' value="${sessionScope.stock_cost}">
                                </div>
                            </div>
                            <div class="row">
                                <p class="m-0"><strong>Barrel:</strong></p>
                                <div class="col-md-6">
                                    <label for="min_barrel" class="form-label">Min Value</label>
                                    <input type="number" class="form-control" id="min_barrel" name="min_barrel" placeholder="Enter min" min='0' required value="${sessionScope.min_barrel}">
                                </div>
                                <div class="col-md-6">
                                    <label for="max_barrel" class="form-label">Max Value</label>
                                    <input type="number" class="form-control" id="max_barrel" name="max_barrel" placeholder="Enter max" min='0' required value="${sessionScope.max_barrel}">
                                </div>
                                <div class="col-md-12">
                                    <label for="barrel_cost" class="form-label">Barrel Cost</label>
                                    <input type="number" class="form-control" id="barrel_cost" name="barrel_cost" placeholder="Default value is 40" min='0' value="${sessionScope.barrel_cost}">
                                </div>
                            </div>
                            <div class="form-check">
                              <input class="form-check-input" type="radio" name="test_option" value="boundary" id="flexRadioDefault1" ${sessionScope.testOption.equalsIgnoreCase("boundary")?"checked":""}>
                                <label class="form-check-label" for="flexRadioDefault1">
                                  Boundary Value Analysis
                                </label>
                            </div>
                            <div class="form-check">
                                  <input class="form-check-input" type="radio" name="test_option" value="robustness" id="flexRadioDefault2" ${sessionScope.testOption.equalsIgnoreCase("robustness")?"checked":""}>
                                <label class="form-check-label" for="flexRadioDefault2">
                                  Robustness Boundary Value Analysis
                                </label>
                            </div>
                            <div class="d-flex justify-content-center">
                                <button type="submit" class="btn btn-primary">Generate</button>
                            </div>
                        </form>
                    </div>
                    <div class=" marquee-card">
                        <h4 class="text-center mb-2"><b>Assignment 1 Solution:</b></h4>
                        <marquee style="height: 620px;" direction="up" onMouseMove="stop()" onMouseOut="start()">
                            <p>
                                <strong>Task 1: </strong>Triangle function, F(X1, X2, X3) = F(A, B, C), where A, B, C are the side1, side 2, side 
    3                          of the triangle.
                            </p>
                            <p>
                                <strong>(a)</strong> Manually Derive the sets S1, S2, S3 for F(X1, X2, X3) = F(L, S, B)
                            </p>
                            <p class="answer ps-5">
                                S1 = {&lt; Lmin, <span>Snom, Bnom</span> &gt;, &lt; Lmin+, <span>Snom, Bnom</span> &gt;, &lt; Lnom, <span>Snom, Bnom</span> &gt;, &lt; Lmax-, <span>Snom, Bnom</span> &gt;, &lt; Lmax, <span>Snom, Bnom</span> &gt;}
                                <br>
                                S2 = {&lt; <span>Lnom</span>, Smin, <span>Bnom</span> &gt;, &lt; <span>Lnom</span>, Smin+, <span>Bnom</span> &gt;, &lt; <span>Lnom</span>, Snom, <span>Bnom</span> &gt;, &lt; <span>Lnom</span>, Smax-, <span>Bnom</span> &gt;, &lt; <span>Lnom</span>, Smax, <span>Bnom</span> &gt;}
                                <br>
                                S3= {&lt; <span>Lnom, Snom,</span> Bmin &gt;, &lt; <span>Lnom, Snom,</span> Bmin+ &gt;, &lt; <span>Lnom, Snom,</span> Bnom &gt;, &lt; <span>Lnom, Snom,</span> Bmax- &gt;, &lt; <span>Lnom, Snom,</span> Bmax+ &gt;}
                            </p>
                            <p>
                                <strong>(b)</strong> How many total elements are present in each set? 
                            </p>
                            <p class="answer ps-5">
                                5 elements.
                            </p>
                            <p>
                                <strong>(c)</strong> Manually Compute S1 U S2 U S3.  
                            </p>
                            <p class="answer ps-5">
                                <strong>S1 U S2 U S3 = </strong> {&lt; Lmin, Snom, Bnom &gt;, &lt; Lmin+, Snom, Bnom &gt;, &lt; Lnom, Snom, Bnom &gt;, &lt; Lmax-, Snom, Bnom &gt;, &lt; Lmax, Snom, Bnom &gt;, &lt; Lnom, Smin, Bnom &gt;, &lt; Lnom, Smin+, Bnom &gt;, &lt; Lnom, Smax-, Bnom &gt;, &lt; Lnom, Smax, Bnom &gt;, &lt; Lnom, Snom, Bmin &gt;, &lt; Lnom, Snom, Bmin+ &gt;, &lt; Lnom, Snom, Bmax- &gt;, &lt; Lnom, Snom, Bmax &gt;}
                            </p>
                             <p>
                                <strong>(d)</strong> How many total elements are in the union?   
                            </p>
                            <p class="answer ps-5">
                                15 elements.
                            </p>
                             <p>
                                <strong>(e)</strong> How many unique elements are present in the union? 
                            </p>
                            <p class="answer ps-5">
                                13 elements.
                            </p>
                        </marquee>            
                    </div>
                </div>
            </div>
            <div class="triangle-section mt-5">
                <h1 class="text-center">Test Cases and Outputs</h1>
                <table class="table table-striped-columns table-hover">
                    <thead>
                        <tr class="table-success text-center">
                            <th class="col-sm-1" scope="col">Test case</th>
                            <th scope="col">Total Lock</th>
                            <th scope="col">Total Stock</th>
                            <th scope="col">Total Barrel</th>
                            <th class="col-sm-4" scope="col">Expected Commission</th>
                        </tr>
                    </thead>
                    <tbody>
                      <c:set var="i" value="1"/>
                      <c:forEach items="${listCommission}" var="com">
                      <tr class="table-light">
                        <th class="text-center" scope="row">${i}</th>
                        <td class="text-end">${com.getTotalLock()}</td>
                        <td class="text-end">${com.getTotalStock()}</td>
                        <td class="text-end">${com.getTotalBarrel()}</td>
                        <td class="text-center"><strong>${com.calCommission()}</strong></td>
                      </tr>
                      <c:set var="i" value="${i+1}"/>
                      </c:forEach>
                    </tbody>
                  </table>
            </div>
        </div>
    </body>
</html>
