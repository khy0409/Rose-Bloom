<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>슬라이드 배너</title>
    <link rel="stylesheet" href="../CSS/Banner.css">
</head>
<body>
<div id="SlideAll">
<div class="imageSlider">
    <div class="slides-container">
        <div class="slide">
            <img src="../IMG/Banner1.gif" alt="Banner 1">
        </div>
        <div class="slide">
            <img src="../IMG/Banner2.gif" alt="Banner 2">
        </div>
        <div class="slide">
            <img src="../IMG/Banner3.gif" alt="Banner 3">
        </div>
        <div class="slide">
            <img src="../IMG/Banner4.gif" alt="Banner 4">
        </div>
    </div>
</div>

<div class="button_container"> 
    <button id="btn1"></button>
    <button id="btn2"></button>
    <button id="btn3"></button>
    <button id="btn4"></button>
</div>  
</div>
<script src="../JS/Banner.js"></script>
</body>
</html>