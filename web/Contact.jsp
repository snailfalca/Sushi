<%-- 
    Document   : Home
    Created on : Mar 20, 2018, 11:30:17 PM
    Author     : crust
--%>
<%@taglib prefix="j" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean scope="request" id="cb" class="com.bean.ContactBean"/>
<j:set var="contact" value="${cb.contact}"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sushi!</title>
        <link rel="stylesheet" href="CSS/Style.css"/>
        <link rel="stylesheet" href="CSS/ContactStyle.css"/>
    </head>
    <body id="MainBody">
        <jsp:include page="Header.jsp"/>
        <div class="content">
            <div class="left-content">
                <h2>Find us</h2>
                <div class="contact-above">                    
                    <div class="contact-left">
                        <h3>Address and contact</h3>
                        <div class="">${contact.address}</div>
                        <div class="">Tel: ${contact.tel}</div>
                        <div class="">Email: ${contact.email}</div>
                    </div>
                    <div class="contact-right">
                        <h3>Open hours</h3>
                        <div class="">${contact.openHours}</div>
                    </div>
                </div>
                <img class="contact-map" src="Resources/map.png" />
            </div>
            <div class="right-content">
                <jsp:include page="Aside.jsp"/>
            </div>     
        </div>
        <jsp:include page="Footer.jsp"/>
    </body>
</html>
