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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../JS/BestSellers.js"></script>	
</head>
<body>
	<div class="sort-best">
        <div class="menuBar">
        	<h2>Best</h2>
		    <a class="BestSellers" id="Outer" onclick="ChangeColor('Outer')">#Outer</a>
		    <a class="BestSellers" id="Top" onclick="ChangeColor('Top')">#Top</a>
		    <a class="BestSellers" id="Bottom" onclick="ChangeColor('Bottom')">#Bottom</a>
		    <a class="BestSellers" id="Set" onclick="ChangeColor('Set')">#Set</a>
		    <a class="BestSellers" id="Shoes" onclick="ChangeColor('Shoes')">#Shoes</a>
		</div>
        <div id="bestSellers">
        <% 
        String selected = request.getParameter("selected");
        if(selected == null) selected = "Outer";
        
        BuyerDAO dao = new BuyerDAO();
        ArrayList<BuyerDTO> list = dao.getBestSeller(selected);
        for(int i=0; i<list.size()&&i<4; i++) { 
        %>
            <div>
            	<img src="../IMG/Icon/icon_sale.png" alt="Sale" class="icon-sale">
                <a href="Detail.jsp?ProductNum="><img src="../IMG/" alt="" class="product-img"></a><br/>
                <div class="product-sort">
                	<span class="product-name" title="<%= list.get(i).getProductNm()%>"><%= list.get(i).getProductNm() %></span>
                	<span class="product-scope" data-rating="<%= 4 %>">⭐⭐⭐⭐⭐</span><!-- width 비율 재조정 필요 -->
                </div>
                <div class="product-sort">
                	<span class="product-price">$</span> <!-- 세일 전 가격 -->
                	<span class="product-sale">Sale </span> <!-- 세일률 -->
                </div>
                <p>$ <%= i %></p> <!-- 세일 후 가격 -->
            </div>
            <% } %>
		</div>
	</div>
</body>
</html>