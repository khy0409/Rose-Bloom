<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Product</title>
<link rel="stylesheet" href="../CSS/NewProducts.css">
</head>
<body>
	<section class="sort-new">
        <h2>New</h2>
        
        <div class="new-products">
            <div class="new-product">
            	<img src="../IMG/Icon/icon_sale.png" alt="Sale" class="icon-sale">
                <a href="Detail.jsp?ProductNum="><img src="../IMG/" alt="" class="product-img"></a><br/>
                <div class="product-sort">
                	<span class="product-name" title="h">sdfsdf</span>
                	<span class="product-scope" data-rating="<%= 4.4 %>">⭐⭐⭐⭐⭐</span><!-- width 비율 재조정 필요 -->
                </div>
                <div class="product-sort">
                	<span class="product-price">원</span> <!-- 세일 전 가격 -->
                	<span class="product-sale">Sale </span> <!-- 세일률 -->
                </div>
                <p>30,000원</p> <!-- 세일 후 가격 -->
            </div>
		</div>
    </section>
</body>
</html>