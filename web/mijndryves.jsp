<%-- 
    Document   : mijndryves
    Created on : 27-mrt-2013, 18:10:27
    Author     : Vincent
--%>

<%@page import="java.util.Locale"%>
<%@page import="Dryves.Sessie"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<% 
    Sessie currentUser = (Sessie) (session.getAttribute("currentSessionUser"));
    
    System.out.println("Locale uit mijndryves.jsp :" + currentUser.getLocale());
    
    Locale locale = currentUser.getLocale();
    
    System.out.println("Locale uit de String :" + locale);
    
%>


<fmt:setLocale value="${locale}" />

<fmt:setBundle basename="ResourceBundles.Dryves" scope="request" var="rb" />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dryves</title>
        <link type="text/css" rel="stylesheet" href="css/dryver.css"/>
    </head>
    <body>

        <div class="background">

            <img src="images/background1.jpg" />

        </div>

        <div class="drvyesWrapper">

            <div class="logo">    
                <img src="images/Logo_Dryves.png" />
            </div>

            <jsp:include page="navigatie.jsp"  flush="true" />






            <div class="contentPanel">
                

                
                <button onclick="window.location = 'mijndryves_gegevens.jsp';">Mijn gegevens</button>
                <button onclick="window.location = 'rit_plannen.jsp';">Mijn berichten</button>
                <button onclick="window.location = 'rit_plannen.jsp';">Mijn ritten</button>
                
                <br /><br />
                
                <fmt:message bundle="${rb}" key="ubentingelogdals" />
                
                <br /><br />
        

        Welkom <%= currentUser.getVnaam() + " " + currentUser.getAnaam() %>

            </div>
        </div>


</body>
</html>
