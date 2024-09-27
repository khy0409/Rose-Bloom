<%@page import="SellerDAL.SellerDTO"%>
<%@page import="SellerDAL.SellerDAO"%>
<%@page import="BuyerDAL.BuyerDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BuyerDAL.BuyerDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Best Product</title>
    <link rel="stylesheet" href="../CSS/BestSellers.css">
</head>
<body>
	<section class="sort-best">
        <section class="menu-bar">
        	<h2>Best</h2>
		    <a class="menu-option" id="Outer" onclick="loadBestSeller('Outer')">#Outer</a>
		    <a class="menu-option" id="Top" onclick="loadBestSeller('Top')">#Top</a>
		    <a class="menu-option" id="Bottom" onclick="loadBestSeller('Bottom')">#Bottom</a>
		    <a class="menu-option" id="Set" onclick="loadBestSeller('Set')">#Set</a>
		    <a class="menu-option" id="Shoes" onclick="loadBestSeller('Shoes')">#Shoes</a>
		</section>
        <section class="best-sellers">
            <section class="best-seller">
            	<img src="../IMG/Icon/icon_sale.png" alt="Sale" class="icon-sale">
                <a href="Detail.jsp?ProductNum="><img src="../IMG/" alt="" class="product-img"></a><br/>
                <div class="product-sort">
                	<span class="product-name" title="ProductNm">ProductNm</span>
                	<span class="product-scope" data-rating="3">⭐⭐⭐⭐⭐</span><!-- width 비율 재조정 필요 -->
                </div>
                <div class="product-sort">
                	<span class="product-price">원</span> <!-- 세일 전 가격 -->
                	<span class="product-sale">Sale </span> <!-- 세일률 -->
                </div>
                <p>39,000원</p> <!-- 세일 후 가격 -->
            </section>
		</section>
	</section>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../JS/BestSellers.js"></script>	
</body>
</html>