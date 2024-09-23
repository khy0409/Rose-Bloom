<%@page import="Cookie.CookieManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
CookieManager HeaderCookie = new CookieManager();

String Seller = HeaderCookie.getCookie(request, "Seller");
String Link = (Seller != null) ? "SellerMyPage.jsp" : "BuyerMyPage.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<link rel="stylesheet" href="../CSS/Global.css">
<link rel="stylesheet" href="../CSS/Header.css">
</head>
<body>
	<section class="site-header">
		<div class="left-section">
			<h2><a href="Index.jsp">Rose Bloom</a></h2>
			<nav class="category">
				<a href="Category.jsp?Category=Outer">Outer</a>
				<a href="Category.jsp?Category=Top">Top</a>
				<a href="Category.jsp?Category=Bottom">Bottom</a>
				<a href="Category.jsp?Category=Set">Set</a>
				<a href="Category.jsp?Category=Shoes">Shoes</a>
			</nav>
		</div>
		<div class="right-section">
			<nav class="sub-nav">
				<ul>
					<li><a href="SignUp.jsp">회원가입</a></li>
					<li><a href="SignIn.jsp">로그인</a></li>
					<li class="has-submenu">
						<a href="#">고객센터</a>
		                <ul class="submenu">
							<li><a href="Notice.jsp">공지사항</a></li>
							<li><a href="#">고객센터</a></li>
						</ul>
		            </li>
				</ul>
			</nav>
			<ul class="header-icons">
				<li><a href="<%= Link %>"><img src="../IMG/icon_user.png" alt="My page"></a></li>
				<li><a href="Wish.jsp"><img src="../IMG/icon_heart.png" alt="Wish"></a></li>
				<li><a href="Cart.jsp"><img src="../IMG/icon_cart.png" alt="Cart"></a></li>
				<li>
				    <a href="#" id="searchIcon"><img src="../IMG/icon_search.png" alt="Search" id="search-icon"></a>
				    <div id="searchBox" class="search-box hidden">
				        <form id="searchForm" action="Search.jsp" method="get">
			                <input type="text" id="searchInput" name="keyword" placeholder="Search...">
			            </form>
			        </div>
			    </li>
			</ul>
		</div>
	</section>
</body>
<script src="../JS/Header.js"></script>
</html>