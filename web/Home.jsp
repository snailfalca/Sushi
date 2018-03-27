<%-- 
    Document   : Home
    Created on : Mar 20, 2018, 11:30:17 PM
    Author     : crust
--%>
<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean scope="request" id="pb" class="com.bean.ProductBean"/>
<j:set var="pageNo" value="${param.pageNo!=null?param.pageNo:1}"/>
<j:set var="pagesCount" value="${pb.pagesCount}"/>
<j:set var="products" value="${pb.getProductsInPage(pageNo)}"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sushi!</title>
        <link rel="stylesheet" href="CSS/Style.css"/>
        <link rel="stylesheet" href="CSS/HomeStyle.css"/>
    </head>
    <body id="MainBody">
        <jsp:include page="Header.jsp"/>
        <div class="content">
            <div class="left-content">
                <img id="HomeShowImg" src="Resources/pewpew.jpg"/>
                <div id="HomeContentBelow">
                    <j:forEach var="product" items="${products}">
                        <div class="product-container">
                            <div class="product-title">${product.title}</div>
                            <div class="product-content-container">
                                <img class="product-content-img" src="${product.img}"/>
                                <span class="product-content-text">${product.content}</span>
                            </div>
                        </div>
                    </j:forEach>
                </div>
                <j:if test="${pagesCount>1}">
                    <div class="pager">
                        <j:forEach var="i" begin="1" end="${pagesCount}">
                            <j:if test="${i==pageNo}">
                                <a class="pager-button pager-button-active">${i}</a>
                            </j:if>
                            <j:if test="${i!=pageNo}">
                                <a href="Home.jsp?pageNo=${i}" class="pager-button">${i}</a>
                            </j:if>
                        </j:forEach>
                    </div>
                </j:if>
            </div>
            <div class="right-content"> 
                <jsp:include page="Aside.jsp"/>
            </div>     
        </div>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
