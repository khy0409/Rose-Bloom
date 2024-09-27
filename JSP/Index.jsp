<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Rose Bloom</title>
    <link rel="stylesheet" href="../CSS/Global.css">
</head>
<body style="display: flex; flex-direction: column;">
    <header>
        <%@ include file="Header.jsp" %>
    </header>

    <main>
        <%@ include file="Banner.jsp" %>
        <section>
            <%@ include file="BestSellers.jsp" %>
            <%@ include file="NewProducts.jsp" %>
        </section>
    </main>

    <footer>
        <%@ include file="Footer.jsp" %>
    </footer>
</body>
</html>