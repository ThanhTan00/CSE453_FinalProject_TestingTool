
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="navbar" class="d-flex justify-content-around h-3 fixed-top">
    <div class="d-inline-flex">
        <a href="StartControl">
            <h1 class="m-0" id="logo">Software Testing Tool</h1>
        </a>
    </div>
    <ul class="d-inline-flex m-0 p-0">
        <a class="${sessionScope.active==1?'active':''}" href="NavControl?mode=home">
            <li>
                Home
            </li>
        </a>
<!--        <a class="${sessionScope.active==2?'active':''}" href="NavControl?mode=assignment1">
            <li>
                Assignment 1
            </li>
        </a>-->
        <a class="${sessionScope.active==3?'active':''}" href="NavControl?mode=triangleTesting">
            <li>
                Triangle
            </li>
        </a>
        <a class="${sessionScope.active==4?'active':''}" href="NavControl?mode=commissionTesting">
            <li>
                Commission
            </li>
        </a>
    </ul>
</div>