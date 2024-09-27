<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String category = request.getParameter("category");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%= category %></title>
<link rel="stylesheet" href="../CSS/Category.css">
</head>
<body>
<header>
	<%@ include file="Header.jsp" %>
</header>
	<div class="category">
		<h2><%= category %></h2>
		<div class="product-grid">
            <div class="product-item">
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
            </div>
            </div>
		</div>
		
		<div id="pagination">
        	<button id="prevPageButton" class="page-button" onclick="prevPages('', '', '', '', '')">이전 페이지</button>
        	<span id="pageNumber"></span>
        	<button id="nextPageButton" class="page-button" onclick="nextPages(20, 'Outer', 1, 5, 1)">다음 페이지</button>
   		</div>
<footer>
	<%@ include file="Footer.jsp" %>
</footer>
<script src="../JS/Category.js"></script>
</body>
</html>