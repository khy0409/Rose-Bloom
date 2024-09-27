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
		<section class="left-menu">
			<h2><a href="Index.jsp">Rose Bloom</a></h2>
			<nav class="category-nav">
				<!-- #으로 넘어가는 문제 return false 추가 -->
			    <a href="#" onclick="submitForm('Category.jsp', 'category', 'Outer'); return false;">Outer</a>
			    <a href="#" onclick="submitForm('Category.jsp', 'category', 'Top'); return false;">Top</a>
			    <a href="#" onclick="submitForm('Category.jsp', 'category', 'Bottom'); return false;">Bottom</a>
			    <a href="#" onclick="submitForm('Category.jsp', 'category', 'Set'); return false;">Set</a>
			    <a href="#" onclick="submitForm('Category.jsp', 'category', 'Shoes'); return false;">Shoes</a>
			</nav>

		</section>
		<section class="right-menu">
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
				<li><a href="<%= Link %>"><img src="../IMG/Icon/icon_user.png" alt="My page"></a></li>
				<li><a href="Wish.jsp"><img src="../IMG/Icon/icon_heart.png" alt="Wish"></a></li>
				<li><a href="Cart.jsp"><img src="../IMG/Icon/icon_cart.png" alt="Cart"></a></li>
				<li>
				    <a href="#" id="searchIcon"><img src="../IMG/Icon/icon_search.png" alt="Search" id="search-icon"></a>
				    <div id="searchBox" class="search-box hidden">
				        <form id="searchForm" action="Search.jsp" method="get">
			                <input type="text" id="searchInput" name="keyword" placeholder="Search...">
			            </form>
			        </div>
			    </li>
			</ul>
		</section>
	</section>
</body>
<script src="../JS/Global.js"></script>
<script src="../JS/Header.js"></script>
</html>