<%-- 
    Document   : Home
    Created on : Mar 20, 2018, 11:30:17 PM
    Author     : crust
--%>
<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean scope="request" id="mb" class="com.bean.MenuBean"/>
<j:set var="pageNo" value="${param.pageNo!=null?param.pageNo:1}"/>
<j:set var="pagesCount" value="${mb.pagesCount}"/>
<j:set var="menus" value="${mb.getMenusInPage(pageNo)}"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sushi!</title>
        <link rel="stylesheet" href="CSS/Style.css"/>
        <link rel="stylesheet" href="CSS/MenuStyle.css"/>
    </head>
    <body id="MainBody">
        <jsp:include page="Header.jsp"/>
        <div class="content">
            <div class="left-content">
                <h2>Menu and Price list</h2>
                <j:forEach var="menu" items="${menus}">
                    <div class="menu-container">
                        <div class="menu-header">
                            <div class="menu-header-id">Menu ${menu.id}</div>
                            <div class="menu-header-right">Price</div>
                        </div>
                        <div class="menu-content">
                            <div class="menu-content-left">
                                ${menu.title}
                            </div>
                            <div class="menu-content-right">
                                &euro;${menu.price}
                            </div>
                        </div>    
                        <div class="menu-content">
                            ${menu.content}
                        </div>
                    </div>
                </j:forEach>
                <j:if test="${pagesCount>1}">
                    <div class="pager">
                        <j:forEach var="i" begin="1" end="${pagesCount}">
                            <j:if test="${i==pageNo}">
                                <a class="pager-button pager-button-active">${i}</a>
                            </j:if>
                            <j:if test="${i!=pageNo}">
                                <a href="Menu.jsp?pageNo=${i}" class="pager-button">${i}</a>
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
