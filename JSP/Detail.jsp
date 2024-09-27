<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    char cha = 65;
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Name</title> <!-- 표현식 -->
    <link rel="stylesheet" href="../CSS/Detail.css">
</head>
<body>
	<header>
		<%@ include file="Header.jsp" %>
	</header>
	<section class="product-page">
		<img src="../IMG/" class="product-img"> <!-- Product Image -->
		<div class="product-info">
			<h2 class="product-name">Product Name</h2>
			<div class="product-sort">
				<span class="product-price">$ 40,000</span> <!-- 세일 전 가격 -->
				<span>Sale 10%</span><br/>
				<span class="product-sale">$ 36,000</span> <!-- 세일률 -->
			</div>
			<div class="options">
				<form>
					<select id="cong" onchange="onchange('')">
						<option value="A1">A1</option>
						<option value="A2">A2</option> <!-- 추가금 2000 -->
						<option value="A3">A3</option> <!-- 추가금 3000 -->
					</select>
					<select id="congcong" onchange="">
						<option value="A1">A1</option>
						<option value="A2">A2</option> <!-- 추가금 2000 -->
						<option value="A3">A3</option> <!-- 추가금 3000 -->
					</select>
				</form>
			</div>
			<div class="">
				<button onclick="submitForm(CartProcess.jsp, ProductNum, value표현식)">Add to Cart</button>
				<button onclick="submitForm(WishProcess.jsp, ProductNum, value표현식)">Add to Wish</button>
			</div>
		</div>
    </section>
	<footer>
		<%@ include file="Footer.jsp" %>
	</footer>
<script src="../JS/Global.js"></script>
</body>
</html>